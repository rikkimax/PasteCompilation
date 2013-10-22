module install

import std.process : execute;
import std.stdio : writeln;
import std.string : indexOf;

enum InstallError {
	Fine,
	DockerVersionDied,
	DockerRun,
	DockerRunTest
}


InstallError install() {
	auto dockerVersion = execute(["docker", "version"]);
	if (dockerVersion.status != 0) {
		writeln(dockerVersion.output);
		return InstallError.DockerVersionDied;
	}

	auto dockerEcho = execute(["docker", "run", "ubuntu", "echo", "test"]);
	if (dockerEcho.status != 0) {
		writeln(dockerVersion.output);
		return InstallError.DockerRun;
	} else if (dockerEcho.output != "test\n") {
		writeln(dockerVersion.output);
		return InstallError.DockerRunTest;
	}

	return InstallError.Fine;
}
