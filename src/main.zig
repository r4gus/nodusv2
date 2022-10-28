const std = @import("std");
const rcore = @import("raylib/rcore.zig");
const rshapes = @import("raylib/rshapes.zig");
const rtext = @import("raylib/rtext.zig");
const structs = @import("raylib/structs.zig");

pub fn main() !void {
    const sw = 800;
    const sh = 450;

    rcore.InitWindow(sw, sh, "nodus");
    rcore.SetTargetFPS(60);

    while (!rcore.WindowShouldClose()) {
        rcore.BeginDrawing();

        rcore.ClearBackground(structs.RAYWHITE);

        rshapes.DrawRectangle(sw / 2 - 128, sh / 2 - 128, 256, 256, structs.BLACK);
        rshapes.DrawRectangle(sw / 2 - 112, sh / 2 - 112, 224, 224, structs.RAYWHITE);
        rtext.DrawText("raylib", sw / 2 - 44, sh / 2 + 48, 50, structs.BLACK);

        rcore.EndDrawing();
    }

    rcore.CloseWindow();
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
