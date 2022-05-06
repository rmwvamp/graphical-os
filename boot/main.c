#include "graphics.h"

int start()
{
	VBEInfoBlock *VBE = (VBEInfoBlock *)VBEInfoAddress;

	x = VBE->x_resolution / 2;
	y = VBE->y_resolution / 2;
	// String literals cannot be more than 61 characters.
	char str1[] = "Welcome to Custom OS\n\nCreated by Vaibhav & Vernika";
	char *p = str1;

	char characterBuffer[1000] = "\0";
	char *characterBufferPointer = characterBuffer;
	int characterBufferLength = 0;

	base = (unsigned int)&isr1;
	base12 = (unsigned int)&isr12;

	InitialiseMouse();
	InitialiseIDT();

	while (1)
	{
		char character = ProcessScancode(Scancode);

		if (backspace_pressed == TRUE)
		{
			characterBuffer[characterBufferLength - 1] = '\0';
			characterBufferLength--;
			backspace_pressed = FALSE;
			Scancode = -1;
		}
		else if (character != '\0')
		{
			characterBuffer[characterBufferLength] = character;
			characterBuffer[characterBufferLength + 1] = '\0';
			characterBufferLength++;
			Scancode = -1;
		}

		ClearScreen(181.0f / 255.0f * 16.0f, 232.0f / 255.0f * 32.0f, 255.0f / 255.0f * 16.0f);
		DrawString(getArialCharacter, font_arial_width, font_arial_height, characterBufferPointer, 100, 100, 0, 0, 0);

		// DrawRect(x, y, 10, 10, 0, 0, 0);
		DrawMouse(x, y, 16, 100.0 / 255.0 * 32, 100.0 / 255.0 * 16);

		Flush();
	}
}