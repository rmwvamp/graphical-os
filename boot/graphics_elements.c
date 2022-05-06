void DrawWindow(int xx, int yy, int width, int height, int r, int g, int b) {
    DrawRect(xx, yy, width, 20, 16, 32, 16);
    DrawRect(xx, yy + 20, width, height, r, g, b);
    // DrawCircleButton(xx + width - 3 * 15, 50, 5, 0, 0, 16);

    // Button 1
    // int
    // if (xx > 0)
    //     DrawCircle(xx, yy, 10, r, g, b);

    // int radius = height / 100;

    // DrawCircle(xx + width - 3.5 * 2 * radius, yy, radius, 240.0 / 255.0 * 16.0, 0, 0);
}