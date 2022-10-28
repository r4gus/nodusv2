pub const structs = @import("structs.zig");

// Window-related functions
pub extern fn InitWindow(width: c_int, height: c_int, title: [*]const u8) void;
pub extern fn WindowShouldClose() bool;
pub extern fn CloseWindow() void;

// Timing-related functions
pub extern fn SetTargetFPS(fps: c_int) void;

// Drawing-related functions
pub extern fn ClearBackground(color: structs.Color) void;
pub extern fn BeginDrawing() void;
pub extern fn EndDrawing() void;
