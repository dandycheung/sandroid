#ifndef BPF_DSL_TEST_BPF_SIMPLE_TEST_C_HPP__
#define BPF_DSL_TEST_BPF_SIMPLE_TEST_C_HPP__

namespace sandbox
{

    // BPF_TEST_C() is a special version of SANDBOX_TEST(). It runs a test function
    // in a sub-process, under a seccomp-bpf policy specified in
    // |bpf_policy_class_name| without failing on configurations that are allowed
    // to not support seccomp-bpf in their kernels.
    // This is the preferred format for new BPF tests. |bpf_policy_class_name| is a
    // class name  (which will be default-constructed) that implements the
    // SandboxBPFDSLPolicy interface.
    // The test function's body can simply follow. Test functions should use
    // the BPF_ASSERT macros defined below, not GTEST's macros. The use of
    // CHECK* macros is supported but less robust.
#define BPF_TEST_C(test_case_name, test_name, bpf_policy_class_name)     \
  BPF_DEATH_TEST_C(                                                      \
      test_case_name, test_name, DEATH_SUCCESS(), bpf_policy_class_name)

    // Identical to BPF_TEST_C but allows to specify the nature of death.
#define BPF_DEATH_TEST_C(                                            \
    test_case_name, test_name, death, bpf_policy_class_name)         \
  void BPF_TEST_C_##test_name();                                     \
  TEST(test_case_name, DISABLE_ON_TSAN(test_name)) {                 \
    sandbox::SandboxBPFTestRunner bpf_test_runner(                   \
        new sandbox::BPFTesterSimpleDelegate<bpf_policy_class_name>( \
            BPF_TEST_C_##test_name));                                \
    sandbox::UnitTests::RunTestInProcess(&bpf_test_runner, death);   \
  }                                                                  \
  void BPF_TEST_C_##test_name()


    TEST(BPFTestRunner, TestSimpleBPF)
    {

        sandbox::SandboxBPFTestRunner bpf_test_runner(
                new sandbox::BPFTesterSimpleDelegate<bpf_policy_class_name>(TestName));

        sandbox::UnitTests::RunTestInProcess(&bpf_test_runner, death);


    }


}
