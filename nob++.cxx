import nob;
import std;

int main(int argc, char* argv[])
{
	auto [err, result] = nob::Builder(argc, argv)
													 .useDefaultArgumentHandling()
													 .useCompiler(nob::Compiler::MSVC)
													 .buildExe("exercises/hello/hello.cxx");
	if (err.has_value())
	{
		std::println("RuntimeError: {}", nob::getRuntimeErrorMessage(err.value()));
		return 1;
	}
	return 0;
}
