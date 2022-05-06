int TasksLength = 0;

#define task_type_void 0
#define task_type_string_buffer 1

struct Task {
    // 0 to 5 with zero being the highest priority
    int priority;
    int taskId;
    char ca1[100];
    int i1;

    // Function pointers
    int (*function)(int);
};

struct Task tasks[256];
int iparams[100] = {10};

void ProcessTasks() {
    int priority = 0;

    while (priority <= 5) {
        for (int i = 0; i < TasksLength; i++) {
            if (tasks[i].priority == priority) {
                tasks[i].function(tasks[i].taskId);
            }
        }

        priority++;
    }
}

int ClearScreenTask(int taskId) {
    ClearScreen(181.0f / 255.0f * 16.0f, 232.0f / 255.0f * 32.0f, 255.0f / 255.0f * 16.0f);
    
    return 0;
}

int DrawMouseTask(int taskId) {
    DrawMouse(x, y, 16, 100.0 / 255.0 * 32, 100.0 / 255.0 * 16);

    return 0;
}

int HandleKeyboardTask(int taskId) {
    char* characterBuffer = tasks[taskId].ca1;
    int* characterBufferLength = &tasks[taskId].i1;

    char character = ProcessScancode(Scancode);

    if (backspace_pressed == TRUE) {
        characterBuffer[*characterBufferLength - 1] = '\0';
        (*characterBufferLength)--;
        backspace_pressed = FALSE;
        Scancode = -1;
    }
    else if (character != '\0') {
        characterBuffer[*characterBufferLength] = character;
        characterBuffer[*characterBufferLength + 1] = '\0';
        (*characterBufferLength)++;
        Scancode = -1;
    }

    DrawString(getArialCharacter, font_arial_width, font_arial_height, characterBuffer, 100, 100, 0, 0, 0);

    return 0;
}