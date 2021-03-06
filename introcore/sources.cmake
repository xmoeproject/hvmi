set(introcore_sources
  src/debugger.c
  src/decoder.c
  src/dumper.c
  src/glue.c
  src/introcore.c
  src/introcpu.c
  src/introcrt.c
  src/kernvm.c
  src/patsig.c
  src/stats.c
  src/structs.c
  src/guests/agents
  src/guests/alerts.c
  src/guests/callbacks.c
  src/guests/cr_protection.c
  src/guests/detours.c
  src/guests/drivers.c
  src/guests/dtr_protection.c
  src/guests/guests.c
  src/guests/integrity.c
  src/guests/introapi.c
  src/guests/intronet.c
  src/guests/memcloak.c
  src/guests/msr_protection.c
  src/guests/scan_engines.c
  src/guests/shellcode.c
  src/guests/slack.c
  src/guests/swapmem.c
  src/guests/thread_safeness.c
  src/guests/udlist.c
  src/guests/unpacker.c
  src/guests/vasmonitor.c
  src/guests/visibility.c
  src/guests/agents/agent.c
  src/guests/agents/deployer.c
  src/guests/agents/loader.c
  src/guests/agents/handlers/hnd_loggather.c
  src/guests/agents/handlers/hnd_remediation.c
  src/guests/cache/gpacache.c
  src/guests/cache/icache.c
  src/guests/exceptions/alert_exceptions.c
  src/guests/exceptions/codeblocks.c
  src/guests/exceptions/exceptions.c
  src/guests/exceptions/exceptions_kern.c
  src/guests/exceptions/exceptions_user.c
  src/guests/exceptions/exceptions_krnusr.c
  src/guests/exceptions/serializers.c
  src/guests/hooks/mem/hook.c
  src/guests/hooks/mem/hook_gpa.c
  src/guests/hooks/mem/hook_gva.c
  src/guests/hooks/mem/hook_object.c
  src/guests/hooks/mem/hook_ptm.c
  src/guests/hooks/mem/hook_pts.c
  src/guests/hooks/mem/hook_ptwh.c
  src/guests/hooks/reg/hook_cr.c
  src/guests/hooks/reg/hook_dtr.c
  src/guests/hooks/reg/hook_msr.c
  src/guests/hooks/reg/hook_xcr.c
  src/guests/instrument/memtables.c
  src/guests/instrument/ptfilter.c
  src/guests/instrument/rtlpvirtualunwind.c
  src/guests/instrument/swapgs.c
  src/guests/instrument/vecore.c
  src/guests/linux/lixagent.c
  src/guests/linux/lixagent_ondemand.c
  src/guests/linux/lixaghnd.c
  src/guests/linux/lixapi.c
  src/guests/linux/lixcmdline.c
  src/guests/linux/lixcrash.c
  src/guests/linux/lixcred.c
  src/guests/linux/lixdeployer.c
  src/guests/linux/lixfastread.c
  src/guests/linux/lixfiles.c
  src/guests/linux/lixguest.c
  src/guests/linux/lixidt.c
  src/guests/linux/lixkernel.c
  src/guests/linux/lixksym.c
  src/guests/linux/lixmm.c
  src/guests/linux/lixmodule.c
  src/guests/linux/lixnet.c
  src/guests/linux/lixprocess.c
  src/guests/linux/lixstack.c
  src/guests/linux/lixvdso.c
  src/guests/update/update_exceptions.c
  src/guests/update/update_guests.c
  src/guests/windows/winagent.c
  src/guests/windows/windeployer.c
  src/guests/windows/winguest.c
  src/guests/windows/winguest_supported.c
  src/guests/windows/winnet.c
  src/guests/windows/winpe.c
  src/guests/windows/winhkhnd.c
  src/guests/windows/kernel/winapi.c
  src/guests/windows/kernel/winbugcheck.c
  src/guests/windows/kernel/windrv_protected.c
  src/guests/windows/kernel/windriver.c
  src/guests/windows/kernel/windrvobj.c
  src/guests/windows/kernel/winhal.c
  src/guests/windows/kernel/winidt.c
  src/guests/windows/kernel/wininfinityhook.c
  src/guests/windows/kernel/winintobj.c
  src/guests/windows/kernel/winobj.c
  src/guests/windows/kernel/winpfn.c
  src/guests/windows/kernel/winpool.c
  src/guests/windows/kernel/winpower.c
  src/guests/windows/kernel/winselfmap.c
  src/guests/windows/kernel/winsud.c
  src/guests/windows/kernel/winvad.c
  src/guests/windows/kernel/wintoken.c
  src/guests/windows/kernel/winsecdesc.c
  src/guests/windows/user/wincmdline.c
  src/guests/windows/user/windpi.c
  src/guests/windows/user/winprocess.c
  src/guests/windows/user/winprocesshp.c
  src/guests/windows/user/winstack.c
  src/guests/windows/user/winthread.c
  src/guests/windows/user/winumcache.c
  src/guests/windows/user/winumcrash.c
  src/guests/windows/user/winumdoubleagent.c
  src/guests/windows/user/winummodule.c
  src/guests/windows/user/winummoduleblock.c
  src/guests/windows/user/winumpath.c
  src/guests/windows/user/winuser_checks.c
  src/utils/bitmask.c
  src/utils/crc32.c
  src/utils/rbtree.c
  src/utils/utils.c
  )

# Prepend "introcore/" to introcore source files.
list(TRANSFORM introcore_sources PREPEND "introcore/")

target_sources(${CMAKE_PROJECT_NAME}
  PRIVATE
  ${introcore_sources}
)

