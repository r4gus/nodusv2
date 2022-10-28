/// Color type, RGBA (32bit)
pub const Color = packed struct {
    /// Red
    r: u8,
    /// Green
    g: u8,
    /// Blue
    b: u8,
    /// Alpha
    a: u8,
};

// Default colors
pub const RAYWHITE = Color{ .r = 245, .g = 245, .b = 245, .a = 255 };
pub const BLACK = Color{ .r = 0, .g = 0, .b = 0, .a = 255 };
