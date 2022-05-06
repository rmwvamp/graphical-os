#include "graphics.h"

int start() {
    VBEInfoBlock* VBE = (VBEInfoBlock*) VBEInfoAddress;

	x = VBE->x_resolution / 2;
	y = VBE->y_resolution / 2;
	// String literals cannot be more than 61 characters.
	char str1[] = "Welcome to SaphireOS!\n\nText rendered by custom library.";
	char *p = str1;

	char characterBuffer[1000] = "\0";
	char* characterBufferPointer = characterBuffer;
	int characterBufferLength = 0;

	base = (unsigned int) &isr1;
	base12 = (unsigned int) &isr12;

	InitialiseMouse();
	InitialiseIDT();

	tasks[TasksLength].priority = 0;
	tasks[TasksLength].function = &ClearScreenTask;
	TasksLength++;

	tasks[TasksLength].priority = 0;
	tasks[TasksLength].function = &DrawMouseTask;
	TasksLength++;

	tasks[TasksLength].priority = 0;
	tasks[TasksLength].function = &HandleKeyboardTask;
	TasksLength++;
	// TasksLength++;


	while(1) {
		ProcessTasks();

		Flush();
	}
}