const structs = @import("structs.zig");

pub extern fn DrawText(text: [*]const u8, posx: c_int, posy: c_int, font_size: c_int, color: structs.Color) void;
