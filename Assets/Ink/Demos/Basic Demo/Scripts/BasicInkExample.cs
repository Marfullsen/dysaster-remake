using System;
using System.Collections.Generic;
using Ink.Runtime;
using UnityEngine;
using UnityEngine.UI;

public class BasicInkExample : MonoBehaviour
{
    public static event Action<Story> OnCreateStory;

    [Header("Ink")]
    [SerializeField] private TextAsset inkJSONAsset = null;
    public Story story;

    [Header("UI")]
    [SerializeField] private Canvas canvas = null;
    [SerializeField] private Text textPrefab = null;
    [SerializeField] private Button buttonPrefab = null;

    private bool isWaitingForChoice = false;
    private bool isTextDisplayed = false;

    void Awake()
    {
        StartStory();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && !isWaitingForChoice)
        {
            DisplayNextLine();
        }
    }

    void StartStory()
    {
        story = new Story(inkJSONAsset.text);
        OnCreateStory?.Invoke(story);
        RemoveChildren();
        DisplayNextLine();
    }

    void DisplayNextLine()
    {
        RemoveChildren();

        // Si aún hay texto por mostrar
        if (story.canContinue)
        {
            string text = story.Continue().Trim();
            CreateContentView(text);
            HandleTags(story.currentTags);
            isWaitingForChoice = false;
            isTextDisplayed = true;
        }
        // Si hay decisiones
        else if (story.currentChoices.Count > 0)
        {
            isWaitingForChoice = true;
            isTextDisplayed = false;

            for (int i = 0; i < story.currentChoices.Count; i++)
            {
                Choice choice = story.currentChoices[i];
                Button button = CreateChoiceView(choice.text.Trim());
                button.onClick.AddListener(delegate {
                    story.ChooseChoiceIndex(choice.index);
                    isWaitingForChoice = false;
                    DisplayNextLine();
                });
            }
        }
        // Fin de la historia
        else
        {
            isWaitingForChoice = true;
            Button restart = CreateChoiceView("Fin de la historia. ¿Reiniciar?");
            restart.onClick.AddListener(delegate {
                StartStory();
            });
        }
    }

    void HandleTags(List<string> tags)
    {
        foreach (string tag in tags)
        {
            Debug.Log("Etiqueta Ink: " + tag);
            // Aquí puedes procesar "mostrar_fondo playa" o "mostrar_personaje fugado"
        }
    }

    void CreateContentView(string text)
    {
        Text storyText = Instantiate(textPrefab);
        storyText.text = text;
        storyText.transform.SetParent(canvas.transform, false);
    }

    Button CreateChoiceView(string text)
    {
        Button choice = Instantiate(buttonPrefab);
        choice.transform.SetParent(canvas.transform, false);

        Text choiceText = choice.GetComponentInChildren<Text>();
        choiceText.text = text;

        HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
        if (layoutGroup != null)
            layoutGroup.childForceExpandHeight = false;

        return choice;
    }

    void RemoveChildren()
    {
        for (int i = canvas.transform.childCount - 1; i >= 0; --i)
        {
            Destroy(canvas.transform.GetChild(i).gameObject);
        }
    }
}
