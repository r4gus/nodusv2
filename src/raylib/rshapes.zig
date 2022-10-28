const structs = @import("structs.zig");

pub extern fn DrawRectangle(posx: c_int, posy: c_int, width: c_int, height: c_int, color: structs.Color) void;
