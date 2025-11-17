const std = @import("std");

pub fn build(b: *std.Build) void {
    const target_name = b.option([]const u8, "target", "Target OS (windows, linux, macos)") orelse "host";

    const target = if (std.mem.eql(u8, target_name, "host"))
        b.graph.host
    else if (std.mem.eql(u8, target_name, "windows"))
        b.resolveTargetQuery(.{ .os_tag = .windows })
    else if (std.mem.eql(u8, target_name, "linux"))
        b.resolveTargetQuery(.{ .os_tag = .linux })
    else if (std.mem.eql(u8, target_name, "macos"))
        b.resolveTargetQuery(.{ .os_tag = .macos })
    else {
        std.debug.print("Unknown target: {s}\n", .{target_name});
        return;
    };

    // Создаем модуль с указанием target
    const root_module = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
    });

    const exe = b.addExecutable(.{
        .name = "ZephyriumCore",
        .root_module = root_module,
    });

    b.installArtifact(exe);

    const run_exe = b.addRunArtifact(exe);
    const run_step = b.step("run", "Run the application");
    run_step.dependOn(&run_exe.step);
}
