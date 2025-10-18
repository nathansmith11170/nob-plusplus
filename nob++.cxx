import nob;

int main(int argc, char* argv[])
{
	auto [err, result] = nob::initBuilder()
		.useDefaultArgumentHandling()
		.detectCompiler()
		.useBuildExecutor(nob::ExecutorType::System)
		.setWarningLevel(nob::WarningLevel::Strict)
		.build("exercises/hello/hello.cxx");
}
