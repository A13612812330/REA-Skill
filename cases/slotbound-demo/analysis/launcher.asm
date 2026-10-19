0000000140001000  push       rbx
0000000140001002  sub        rsp, 0x20
0000000140001006  test       rcx, rcx
0000000140001009  mov        ebx, 1
000000014000100e  cmovne     rbx, rcx
0000000140001012  call       qword ptr [rip + 0xd048] ; KERNEL32.dll!GetProcessHeap
0000000140001018  mov        r8, rbx
000000014000101b  mov        edx, 8
0000000140001020  mov        rcx, rax
0000000140001023  add        rsp, 0x20
0000000140001027  pop        rbx
0000000140001028  jmp        qword ptr [rip + 0xd021] ; KERNEL32.dll!HeapAlloc
000000014000102f  int3       
0000000140001030  mov        qword ptr [rsp + 8], rbx
0000000140001035  mov        qword ptr [rsp + 0x10], rdx
000000014000103a  push       rbp
000000014000103b  push       rsi
000000014000103c  push       rdi
000000014000103d  push       r12
000000014000103f  push       r13
0000000140001041  push       r14
0000000140001043  push       r15
0000000140001045  lea        rbp, [rsp - 0x1f]
000000014000104a  sub        rsp, 0xe0
0000000140001051  mov        rax, qword ptr [rip + 0x18a68]
0000000140001058  lea        rdx, [rip + 0xd8a9]
000000014000105f  xor        ebx, ebx
0000000140001061  mov        r14d, r8d
0000000140001064  mov        r15, r9
0000000140001067  mov        qword ptr [rbp - 0x59], rbx
000000014000106b  mov        r13, rcx
000000014000106e  mov        qword ptr [rbp - 0x51], rbx
0000000140001072  xor        r9d, r9d
0000000140001075  mov        dword ptr [rbp - 0x61], ebx
0000000140001078  xor        r8d, r8d
000000014000107b  mov        dword ptr [rbp + 0x77], ebx
000000014000107e  lea        rcx, [rbp - 0x59]
0000000140001082  mov        esi, ebx
0000000140001084  call       qword ptr [rip + 0xd206]
000000014000108a  mov        r12, qword ptr [rbp + 0x7f]
000000014000108e  test       eax, eax
0000000140001090  js         0x14000121b
0000000140001096  mov        rcx, qword ptr [rbp - 0x59]
000000014000109a  lea        r9d, [rbx + 0x20]
000000014000109e  mov        rax, qword ptr [rip + 0x18a33]
00000001400010a5  lea        r8, [rip + 0xd864] ; ChainingModeGCM
00000001400010ac  lea        rdx, [rip + 0xd87d] ; ChainingMode
00000001400010b3  mov        dword ptr [rsp + 0x20], ebx
00000001400010b7  call       qword ptr [rip + 0xd1d3]
00000001400010bd  test       eax, eax
00000001400010bf  js         0x14000121b
00000001400010c5  mov        rcx, qword ptr [rbp - 0x59]
00000001400010c9  lea        rax, [rbp + 0x77]
00000001400010cd  mov        dword ptr [rsp + 0x28], ebx
00000001400010d1  lea        r9d, [rbx + 4]
00000001400010d5  mov        qword ptr [rsp + 0x20], rax
00000001400010da  lea        r8, [rbp - 0x61]
00000001400010de  mov        rax, qword ptr [rip + 0x189eb]
00000001400010e5  lea        rdx, [rip + 0xd7fc] ; ObjectLength
00000001400010ec  call       qword ptr [rip + 0xd19e]
00000001400010f2  test       eax, eax
00000001400010f4  js         0x14000121b
00000001400010fa  cmp        dword ptr [rbp + 0x77], 4
00000001400010fe  jne        0x14000121b
0000000140001104  mov        ecx, dword ptr [rbp - 0x61]
0000000140001107  lea        eax, [rcx - 1]
000000014000110a  cmp        eax, 0xfffff
000000014000110f  ja         0x14000121b
0000000140001115  test       ecx, ecx
0000000140001117  mov        edi, 1
000000014000111c  cmovne     edi, ecx
000000014000111f  call       qword ptr [rip + 0xcf3b] ; KERNEL32.dll!GetProcessHeap
0000000140001125  mov        r8d, edi
0000000140001128  lea        edx, [rbx + 8]
000000014000112b  mov        rcx, rax
000000014000112e  call       qword ptr [rip + 0xcf1c] ; KERNEL32.dll!HeapAlloc
0000000140001134  mov        rsi, rax
0000000140001137  test       rax, rax
000000014000113a  je         0x14000121b
0000000140001140  mov        r9d, dword ptr [rbp - 0x61]
0000000140001144  lea        rdx, [rbp - 0x51]
0000000140001148  mov        rcx, qword ptr [rbp - 0x59]
000000014000114c  mov        r8, rax
000000014000114f  mov        rax, qword ptr [rip + 0x189aa]
0000000140001156  mov        dword ptr [rsp + 0x30], ebx
000000014000115a  mov        dword ptr [rsp + 0x28], 0x20
0000000140001162  mov        qword ptr [rsp + 0x20], r15
0000000140001167  call       qword ptr [rip + 0xd123]
000000014000116d  test       eax, eax
000000014000116f  js         0x14000121b
0000000140001175  mov        rdx, qword ptr [rbp + 0x67]
0000000140001179  lea        r9, [rbp - 0x41]
000000014000117d  xor        eax, eax
000000014000117f  mov        dword ptr [rsp + 0x48], ebx
0000000140001183  xorps      xmm0, xmm0
0000000140001186  mov        qword ptr [rbp + 0xf], rax
000000014000118a  movups     xmmword ptr [rbp - 0x41], xmm0
000000014000118e  mov        rdi, r15
0000000140001191  mov        ecx, 0x20
0000000140001196  rep stosb  byte ptr [rdi], al
0000000140001198  mov        rcx, qword ptr [rbp - 0x51]
000000014000119c  lea        rax, [r13 + 0x18]
00000001400011a0  mov        qword ptr [rbp - 0x39], rax
00000001400011a4  mov        edi, 1
00000001400011a9  movups     xmmword ptr [rbp - 0x21], xmm0
00000001400011ad  lea        rax, [r13 + 0x24]
00000001400011b1  mov        r8d, r14d
00000001400011b4  mov        qword ptr [rbp - 0x19], rax
00000001400011b8  lea        rax, [rbp + 0x77]
00000001400011bc  mov        qword ptr [rsp + 0x40], rax
00000001400011c1  mov        rax, qword ptr [rip + 0x18940]
00000001400011c8  mov        dword ptr [rsp + 0x38], r14d
00000001400011cd  movups     xmmword ptr [rbp - 0x31], xmm0
00000001400011d1  mov        qword ptr [rsp + 0x30], r12
00000001400011d6  movups     xmmword ptr [rbp - 0x11], xmm0
00000001400011da  mov        dword ptr [rsp + 0x28], ebx
00000001400011de  mov        qword ptr [rsp + 0x20], rbx
00000001400011e3  movups     xmmword ptr [rbp - 1], xmm0
00000001400011e7  mov        dword ptr [rbp - 0x41], 0x58
00000001400011ee  mov        dword ptr [rbp - 0x3d], edi
00000001400011f1  mov        dword ptr [rbp - 0x31], 0xc
00000001400011f8  mov        dword ptr [rbp - 0x11], 0x10
00000001400011ff  mov        qword ptr [rbp - 0x29], r13
0000000140001203  mov        dword ptr [rbp - 0x21], 0x18
000000014000120a  call       qword ptr [rip + 0xd080]
0000000140001210  test       eax, eax
0000000140001212  js         0x14000121b
0000000140001214  cmp        dword ptr [rbp + 0x77], r14d
0000000140001218  cmove      ebx, edi
000000014000121b  xor        eax, eax
000000014000121d  mov        rdi, r15
0000000140001220  mov        ecx, 0x20
0000000140001225  rep stosb  byte ptr [rdi], al
0000000140001227  mov        rcx, qword ptr [rbp - 0x51]
000000014000122b  test       rcx, rcx
000000014000122e  je         0x14000123d
0000000140001230  mov        rax, qword ptr [rip + 0x188d9]
0000000140001237  call       qword ptr [rip + 0xd053]
000000014000123d  test       rsi, rsi
0000000140001240  je         0x140001260
0000000140001242  mov        ecx, dword ptr [rbp - 0x61]
0000000140001245  xor        eax, eax
0000000140001247  mov        rdi, rsi
000000014000124a  rep stosb  byte ptr [rdi], al
000000014000124c  call       qword ptr [rip + 0xce0e] ; KERNEL32.dll!GetProcessHeap
0000000140001252  mov        r8, rsi
0000000140001255  xor        edx, edx
0000000140001257  mov        rcx, rax
000000014000125a  call       qword ptr [rip + 0xcdf8] ; KERNEL32.dll!HeapFree
0000000140001260  mov        rcx, qword ptr [rbp - 0x59]
0000000140001264  test       rcx, rcx
0000000140001267  je         0x140001278
0000000140001269  mov        rax, qword ptr [rip + 0x18858]
0000000140001270  xor        edx, edx
0000000140001272  call       qword ptr [rip + 0xd018]
0000000140001278  test       ebx, ebx
000000014000127a  jne        0x140001286
000000014000127c  mov        rcx, r14
000000014000127f  mov        rdi, r12
0000000140001282  xor        eax, eax
0000000140001284  rep stosb  byte ptr [rdi], al
0000000140001286  mov        eax, ebx
0000000140001288  mov        rbx, qword ptr [rsp + 0x120]
0000000140001290  add        rsp, 0xe0
0000000140001297  pop        r15
0000000140001299  pop        r14
000000014000129b  pop        r13
000000014000129d  pop        r12
000000014000129f  pop        rdi
00000001400012a0  pop        rsi
00000001400012a1  pop        rbp
00000001400012a2  ret        
00000001400012a3  int3       
00000001400012a4  int3       
00000001400012a5  int3       
00000001400012a6  int3       
00000001400012a7  int3       
00000001400012a8  int3       
00000001400012a9  int3       
00000001400012aa  int3       
00000001400012ab  int3       
00000001400012ac  int3       
00000001400012ad  int3       
00000001400012ae  int3       
00000001400012af  int3       
00000001400012b0  mov        r11, rsp
00000001400012b3  mov        qword ptr [r11 + 0x20], rbx
00000001400012b7  push       rbp
00000001400012b8  push       rsi
00000001400012b9  push       r12
00000001400012bb  push       r14
00000001400012bd  push       r15
00000001400012bf  sub        rsp, 0x60
00000001400012c3  xor        ebx, ebx
00000001400012c5  mov        eax, 0xffffffff
00000001400012ca  mov        qword ptr [r11 - 0x38], rbx
00000001400012ce  mov        rbp, r9
00000001400012d1  mov        qword ptr [r11 - 0x40], rbx
00000001400012d5  mov        r12, r8
00000001400012d8  mov        dword ptr [r11 + 0x10], ebx
00000001400012dc  mov        r14, rdx
00000001400012df  mov        dword ptr [rsp + 0x40], ebx
00000001400012e3  mov        r15, rcx
00000001400012e6  mov        esi, ebx
00000001400012e8  cmp        rdx, rax
00000001400012eb  ja         0x1400014bf
00000001400012f1  cmp        r9, rax
00000001400012f4  ja         0x1400014bf
00000001400012fa  mov        rax, qword ptr [rip + 0x187bf]
0000000140001301  lea        rdx, [rip + 0xd5d0] ; SHA256
0000000140001308  xor        r9d, r9d
000000014000130b  mov        qword ptr [r11 + 8], rdi
000000014000130f  xor        r8d, r8d
0000000140001312  lea        rcx, [r11 - 0x38]
0000000140001316  call       qword ptr [rip + 0xcf74]
000000014000131c  test       eax, eax
000000014000131e  js         0x140001460
0000000140001324  mov        rcx, qword ptr [rsp + 0x50]
0000000140001329  lea        rax, [rsp + 0x40]
000000014000132e  mov        dword ptr [rsp + 0x28], ebx
0000000140001332  lea        r9d, [rbx + 4]
0000000140001336  mov        qword ptr [rsp + 0x20], rax
000000014000133b  lea        r8, [rsp + 0x98]
0000000140001343  mov        rax, qword ptr [rip + 0x18786]
000000014000134a  lea        rdx, [rip + 0xd597] ; ObjectLength
0000000140001351  call       qword ptr [rip + 0xcf39]
0000000140001357  test       eax, eax
0000000140001359  js         0x140001460
000000014000135f  cmp        dword ptr [rsp + 0x40], 4
0000000140001364  jne        0x140001460
000000014000136a  mov        ecx, dword ptr [rsp + 0x98]
0000000140001371  lea        eax, [rcx - 1]
0000000140001374  cmp        eax, 0xfffff
0000000140001379  ja         0x140001460
000000014000137f  test       ecx, ecx
0000000140001381  mov        qword ptr [rsp + 0xa0], r13
0000000140001389  mov        r13d, 1
000000014000138f  mov        edi, r13d
0000000140001392  cmovne     edi, ecx
0000000140001395  call       qword ptr [rip + 0xccc5] ; KERNEL32.dll!GetProcessHeap
000000014000139b  mov        r8d, edi
000000014000139e  lea        edx, [rbx + 8]
00000001400013a1  mov        rcx, rax
00000001400013a4  call       qword ptr [rip + 0xcca6] ; KERNEL32.dll!HeapAlloc
00000001400013aa  mov        rsi, rax
00000001400013ad  test       rax, rax
00000001400013b0  je         0x140001458
00000001400013b6  mov        r9d, dword ptr [rsp + 0x98]
00000001400013be  lea        rdx, [rsp + 0x48]
00000001400013c3  mov        rcx, qword ptr [rsp + 0x50]
00000001400013c8  mov        r8, rax
00000001400013cb  mov        rax, qword ptr [rip + 0x1870e]
00000001400013d2  mov        dword ptr [rsp + 0x30], ebx
00000001400013d6  mov        dword ptr [rsp + 0x28], ebx
00000001400013da  mov        qword ptr [rsp + 0x20], rbx
00000001400013df  call       qword ptr [rip + 0xceab]
00000001400013e5  test       eax, eax
00000001400013e7  js         0x140001458
00000001400013e9  test       r14, r14
00000001400013ec  je         0x14000140d
00000001400013ee  mov        rcx, qword ptr [rsp + 0x48]
00000001400013f3  xor        r9d, r9d
00000001400013f6  mov        rax, qword ptr [rip + 0x186eb]
00000001400013fd  mov        r8d, r14d
0000000140001400  mov        rdx, r15
0000000140001403  call       qword ptr [rip + 0xce87]
0000000140001409  test       eax, eax
000000014000140b  js         0x140001458
000000014000140d  test       rbp, rbp
0000000140001410  je         0x140001431
0000000140001412  mov        rcx, qword ptr [rsp + 0x48]
0000000140001417  xor        r9d, r9d
000000014000141a  mov        rax, qword ptr [rip + 0x186c7]
0000000140001421  mov        r8d, ebp
0000000140001424  mov        rdx, r12
0000000140001427  call       qword ptr [rip + 0xce63]
000000014000142d  test       eax, eax
000000014000142f  js         0x140001458
0000000140001431  mov        rdx, qword ptr [rsp + 0xb0]
0000000140001439  xor        r9d, r9d
000000014000143c  mov        rcx, qword ptr [rsp + 0x48]
0000000140001441  mov        rax, qword ptr [rip + 0x186a8]
0000000140001448  lea        r8d, [r9 + 0x20]
000000014000144c  call       qword ptr [rip + 0xce3e]
0000000140001452  test       eax, eax
0000000140001454  cmovns     ebx, r13d
0000000140001458  mov        r13, qword ptr [rsp + 0xa0]
0000000140001460  mov        rcx, qword ptr [rsp + 0x48]
0000000140001465  test       rcx, rcx
0000000140001468  je         0x140001477
000000014000146a  mov        rax, qword ptr [rip + 0x18687]
0000000140001471  call       qword ptr [rip + 0xce19]
0000000140001477  test       rsi, rsi
000000014000147a  je         0x14000149e
000000014000147c  mov        ecx, dword ptr [rsp + 0x98]
0000000140001483  xor        eax, eax
0000000140001485  mov        rdi, rsi
0000000140001488  rep stosb  byte ptr [rdi], al
000000014000148a  call       qword ptr [rip + 0xcbd0] ; KERNEL32.dll!GetProcessHeap
0000000140001490  mov        r8, rsi
0000000140001493  xor        edx, edx
0000000140001495  mov        rcx, rax
0000000140001498  call       qword ptr [rip + 0xcbba] ; KERNEL32.dll!HeapFree
000000014000149e  mov        rcx, qword ptr [rsp + 0x50]
00000001400014a3  mov        rdi, qword ptr [rsp + 0x90]
00000001400014ab  test       rcx, rcx
00000001400014ae  je         0x1400014bf
00000001400014b0  mov        rax, qword ptr [rip + 0x18611]
00000001400014b7  xor        edx, edx
00000001400014b9  call       qword ptr [rip + 0xcdd1]
00000001400014bf  mov        eax, ebx
00000001400014c1  mov        rbx, qword ptr [rsp + 0xa8]
00000001400014c9  add        rsp, 0x60
00000001400014cd  pop        r15
00000001400014cf  pop        r14
00000001400014d1  pop        r12
00000001400014d3  pop        rsi
00000001400014d4  pop        rbp
00000001400014d5  ret        
00000001400014d6  int3       
00000001400014d7  int3       
00000001400014d8  int3       
00000001400014d9  int3       
00000001400014da  int3       
00000001400014db  int3       
00000001400014dc  int3       
00000001400014dd  int3       
00000001400014de  int3       
00000001400014df  int3       
00000001400014e0  mov        qword ptr [rsp + 0x20], rbx
00000001400014e5  push       rbp
00000001400014e6  push       rsi
00000001400014e7  push       r12
00000001400014e9  push       r14
00000001400014eb  push       r15
00000001400014ed  lea        rbp, [rsp - 0x30100]
00000001400014f5  mov        eax, 0x30200
00000001400014fa  call       0x140003780
00000001400014ff  sub        rsp, rax
0000000140001502  mov        rax, qword ptr [rip + 0x17bbf]
0000000140001509  xor        rax, rsp
000000014000150c  mov        qword ptr [rbp + 0x300f0], rax
0000000140001513  xorps      xmm0, xmm0
0000000140001516  mov        qword ptr [rbp - 0x78], rcx
000000014000151a  xorps      xmm1, xmm1
000000014000151d  lea        rdx, [rbp + 0x200f0]
0000000140001524  xor        ebx, ebx
0000000140001526  xor        eax, eax
0000000140001528  xor        ecx, ecx
000000014000152a  mov        qword ptr [rsp + 0x70], rbx
000000014000152f  mov        r8d, 0x8000
0000000140001535  mov        qword ptr [rbp + 0x40], rax
0000000140001539  movups     xmmword ptr [rbp], xmm0
000000014000153d  mov        qword ptr [rbp - 0x10], rax
0000000140001541  mov        r15d, ebx
0000000140001544  movups     xmmword ptr [rbp + 0x10], xmm0
0000000140001548  mov        r12d, ebx
000000014000154b  mov        qword ptr [rsp + 0x68], rbx
0000000140001550  movups     xmmword ptr [rbp + 0x20], xmm0
0000000140001554  mov        r14d, ebx
0000000140001557  mov        esi, ebx
0000000140001559  movups     xmmword ptr [rbp + 0x30], xmm0
000000014000155d  mov        dword ptr [rsp + 0x48], ebx
0000000140001561  movups     xmmword ptr [rbp - 0x50], xmm1
0000000140001565  movups     xmmword ptr [rbp - 0x40], xmm1
0000000140001569  movups     xmmword ptr [rbp - 0x30], xmm1
000000014000156d  movups     xmmword ptr [rbp - 0x20], xmm1
0000000140001571  movups     xmmword ptr [rbp + 0x70], xmm0
0000000140001575  movups     xmmword ptr [rbp + 0x80], xmm0
000000014000157c  movups     xmmword ptr [rbp + 0x50], xmm1
0000000140001580  movups     xmmword ptr [rbp + 0x60], xmm1
0000000140001584  movups     xmmword ptr [rbp + 0xb0], xmm0
000000014000158b  movups     xmmword ptr [rbp + 0xc0], xmm0
0000000140001592  movups     xmmword ptr [rbp + 0x90], xmm1
0000000140001599  movups     xmmword ptr [rbp + 0xa0], xmm1
00000001400015a0  call       qword ptr [rip + 0xcaea] ; KERNEL32.dll!GetModuleFileNameW
00000001400015a6  mov        ecx, eax
00000001400015a8  lea        eax, [rcx - 1]
00000001400015ab  cmp        eax, 0x7ffe
00000001400015b0  ja         0x140002035
00000001400015b6  lea        r8, [rcx*2 + 2]
00000001400015be  mov        qword ptr [rsp + 0x30238], rdi
00000001400015c6  mov        edi, ecx
00000001400015c8  lea        rdx, [rbp + 0x200f0]
00000001400015cf  lea        rcx, [rbp + 0xf0]
00000001400015d6  call       0x1400042d0
00000001400015db  lea        rax, [rbp + rdi*2 + 0xee]
00000001400015e3  movzx      ecx, word ptr [rax]
00000001400015e6  cmp        cx, 0x5c
00000001400015ea  je         0x140001640
00000001400015ec  cmp        cx, 0x2f
00000001400015f0  je         0x1400015fc
00000001400015f2  sub        rax, 2
00000001400015f6  sub        rdi, 1
00000001400015fa  jne        0x1400015e3
00000001400015fc  test       rdi, rdi
00000001400015ff  jne        0x140001640
0000000140001601  lea        rax, [rip + 0xd748] ; The installation directory is invalid.
0000000140001608  mov        qword ptr [rip + 0x17a59], rax
000000014000160f  xor        eax, eax
0000000140001611  mov        rdi, qword ptr [rsp + 0x30238]
0000000140001619  mov        rcx, qword ptr [rbp + 0x300f0]
0000000140001620  xor        rcx, rsp
0000000140001623  call       0x1400037e0
0000000140001628  mov        rbx, qword ptr [rsp + 0x30248]
0000000140001630  add        rsp, 0x30200
0000000140001637  pop        r15
0000000140001639  pop        r14
000000014000163b  pop        r12
000000014000163d  pop        rsi
000000014000163e  pop        rbp
000000014000163f  ret        
0000000140001640  cmp        rdi, 3
0000000140001644  jne        0x140001659
0000000140001646  cmp        word ptr [rbp + 0xf2], 0x3a
000000014000164e  jne        0x140001659
0000000140001650  mov        word ptr [rbp + 0xf6], bx
0000000140001657  jmp        0x140001676
0000000140001659  lea        rdi, [rdi*2 - 2]
0000000140001661  cmp        rdi, 0x10000
0000000140001668  jae        0x14000204a
000000014000166e  mov        word ptr [rbp + rdi + 0xf0], bx
0000000140001676  lea        rcx, [rip + 0xd723]
000000014000167d  call       qword ptr [rip + 0xca2d] ; KERNEL32.dll!SetDllDirectoryW
0000000140001683  test       eax, eax
0000000140001685  je         0x140002029
000000014000168b  mov        ecx, 0x800
0000000140001690  call       qword ptr [rip + 0xca12] ; KERNEL32.dll!SetDefaultDllDirectories
0000000140001696  test       eax, eax
0000000140001698  je         0x140002029
000000014000169e  xor        edx, edx
00000001400016a0  lea        rcx, [rip + 0xd761] ; SDL_DYNAMIC_API
00000001400016a7  call       qword ptr [rip + 0xc95b] ; KERNEL32.dll!SetEnvironmentVariableW
00000001400016ad  test       eax, eax
00000001400016af  je         0x14000201d
00000001400016b5  xor        edx, edx
00000001400016b7  lea        rcx, [rip + 0xd76a] ; SDL_VIDEO_GL_DRIVER
00000001400016be  call       qword ptr [rip + 0xc944] ; KERNEL32.dll!SetEnvironmentVariableW
00000001400016c4  test       eax, eax
00000001400016c6  je         0x14000201d
00000001400016cc  xor        edx, edx
00000001400016ce  lea        rcx, [rip + 0xd77b] ; SDL_VIDEO_EGL_DRIVER
00000001400016d5  call       qword ptr [rip + 0xc92d] ; KERNEL32.dll!SetEnvironmentVariableW
00000001400016db  test       eax, eax
00000001400016dd  je         0x14000201d
00000001400016e3  call       0x140002050
00000001400016e8  mov        qword ptr [rbp - 0x60], rax
00000001400016ec  test       rax, rax
00000001400016ef  jne        0x1400016fd
00000001400016f1  lea        rax, [rip + 0xd7f8] ; Windows cryptography is unavailable.
00000001400016f8  jmp        0x140001608
00000001400016fd  lea        rcx, [rbp + 0x200f0]
0000000140001704  mov        qword ptr [rsp + 0x30240], r13
000000014000170c  call       0x140002600
0000000140001711  mov        r13, 0xffffffffffffffff
0000000140001718  mov        qword ptr [rbp - 0x68], rax
000000014000171c  mov        rdi, rax
000000014000171f  cmp        rax, r13
0000000140001722  je         0x14000200a
0000000140001728  lea        rdx, [rsp + 0x50]
000000014000172d  mov        rcx, rax
0000000140001730  call       qword ptr [rip + 0xc8ea] ; KERNEL32.dll!GetFileSizeEx
0000000140001736  test       eax, eax
0000000140001738  je         0x14000200a
000000014000173e  mov        rax, qword ptr [rsp + 0x50]
0000000140001743  cmp        rax, 0x4c
0000000140001747  jl         0x14000200a
000000014000174d  cmp        rax, 0x24000000
0000000140001753  ja         0x14000200a
0000000140001759  mov        qword ptr [rsp + 0x28], rbx
000000014000175e  lea        r8d, [r13 + 3]
0000000140001762  xor        r9d, r9d
0000000140001765  mov        dword ptr [rsp + 0x20], ebx
0000000140001769  xor        edx, edx
000000014000176b  mov        rcx, rdi
000000014000176e  call       qword ptr [rip + 0xc8fc] ; KERNEL32.dll!CreateFileMappingW
0000000140001774  mov        qword ptr [rsp + 0x70], rax
0000000140001779  test       rax, rax
000000014000177c  je         0x140001dd3
0000000140001782  xor        r9d, r9d
0000000140001785  mov        qword ptr [rsp + 0x20], rbx
000000014000178a  xor        r8d, r8d
000000014000178d  lea        edx, [r13 + 5]
0000000140001791  mov        rcx, rax
0000000140001794  call       qword ptr [rip + 0xc8de] ; KERNEL32.dll!MapViewOfFile
000000014000179a  mov        qword ptr [rsp + 0x38], rax
000000014000179f  mov        r15, rax
00000001400017a2  test       rax, rax
00000001400017a5  je         0x140001dd3
00000001400017ab  mov        rdi, qword ptr [rsp + 0x50]
00000001400017b0  lea        r10, [rip + 0xd7d9] ; SBNAT002
00000001400017b7  add        rdi, -0x18
00000001400017bb  mov        byte ptr [rsp + 0x30], bl
00000001400017bf  add        rdi, rax
00000001400017c2  mov        r8, rbx
00000001400017c5  mov        r9, rdi
00000001400017c8  sub        r9, r10
00000001400017cb  nop        dword ptr [rax + rax]
00000001400017d0  lea        rcx, [r8 + r10]
00000001400017d4  inc        r8
00000001400017d7  movzx      eax, byte ptr [rcx + r9]
00000001400017dc  movzx      ecx, byte ptr [rcx]
00000001400017df  xor        ecx, eax
00000001400017e1  movzx      eax, byte ptr [rsp + 0x30]
00000001400017e6  or         al, cl
00000001400017e8  mov        byte ptr [rsp + 0x30], al
00000001400017ec  cmp        r8, 8
00000001400017f0  jb         0x1400017d0
00000001400017f2  movzx      eax, byte ptr [rsp + 0x30]
00000001400017f7  test       al, al
00000001400017f9  je         0x14000180e
00000001400017fb  lea        rax, [rip + 0xd79e] ; The executable is not a protected release for this publisher policy.
0000000140001802  mov        qword ptr [rip + 0x1785f], rax
0000000140001809  jmp        0x140001dd3
000000014000180e  movzx      eax, byte ptr [rdi + 0xe]
0000000140001812  movzx      esi, byte ptr [rdi + 0xf]
0000000140001816  movzx      r15d, byte ptr [rdi + 0x17]
000000014000181b  shl        rsi, 8
000000014000181f  or         rsi, rax
0000000140001822  shl        r15, 8
0000000140001826  movzx      eax, byte ptr [rdi + 0xd]
000000014000182a  shl        rsi, 8
000000014000182e  or         rsi, rax
0000000140001831  movzx      eax, byte ptr [rdi + 0xc]
0000000140001835  shl        rsi, 8
0000000140001839  or         rsi, rax
000000014000183c  movzx      eax, byte ptr [rdi + 0xb]
0000000140001840  shl        rsi, 8
0000000140001844  or         rsi, rax
0000000140001847  movzx      eax, byte ptr [rdi + 0xa]
000000014000184b  shl        rsi, 8
000000014000184f  or         rsi, rax
0000000140001852  movzx      eax, byte ptr [rdi + 9]
0000000140001856  shl        rsi, 8
000000014000185a  or         rsi, rax
000000014000185d  movzx      eax, byte ptr [rdi + 8]
0000000140001861  shl        rsi, 8
0000000140001865  or         rsi, rax
0000000140001868  movzx      eax, byte ptr [rdi + 0x16]
000000014000186c  or         r15, rax
000000014000186f  movzx      eax, byte ptr [rdi + 0x15]
0000000140001873  shl        r15, 8
0000000140001877  or         r15, rax
000000014000187a  movzx      eax, byte ptr [rdi + 0x14]
000000014000187e  shl        r15, 8
0000000140001882  or         r15, rax
0000000140001885  movzx      eax, byte ptr [rdi + 0x13]
0000000140001889  shl        r15, 8
000000014000188d  or         r15, rax
0000000140001890  movzx      eax, byte ptr [rdi + 0x12]
0000000140001894  shl        r15, 8
0000000140001898  or         r15, rax
000000014000189b  movzx      eax, byte ptr [rdi + 0x11]
000000014000189f  shl        r15, 8
00000001400018a3  or         r15, rax
00000001400018a6  movzx      eax, byte ptr [rdi + 0x10]
00000001400018aa  shl        r15, 8
00000001400018ae  or         r15, rax
00000001400018b1  mov        qword ptr [rbp - 0x70], r15
00000001400018b5  cmp        rsi, 0x40
00000001400018b9  jb         0x1400018f4
00000001400018bb  mov        rdx, qword ptr [rsp + 0x50]
00000001400018c0  lea        rax, [rdx - 0x4c]
00000001400018c4  cmp        rsi, rax
00000001400018c7  ja         0x1400018f4
00000001400018c9  lea        rax, [r15 - 0x1e]
00000001400018cd  cmp        rax, 0x1fffffe2
00000001400018d3  ja         0x1400018f4
00000001400018d5  mov        rcx, qword ptr [rsp + 0x38]
00000001400018da  mov        r8, rsi
00000001400018dd  call       0x140002f30
00000001400018e2  test       eax, eax
00000001400018e4  je         0x1400018f4
00000001400018e6  lea        rax, [rsi + 0x4c]
00000001400018ea  add        rax, r15
00000001400018ed  cmp        rax, qword ptr [rsp + 0x50]
00000001400018f2  je         0x14000190a
00000001400018f4  lea        rax, [rip + 0xd735] ; The executable layout was modified.
00000001400018fb  mov        rsi, rbx
00000001400018fe  mov        qword ptr [rip + 0x17763], rax
0000000140001905  jmp        0x140001dce
000000014000190a  mov        r10, qword ptr [rsp + 0x38]
000000014000190f  mov        r8d, 0x18
0000000140001915  mov        byte ptr [rsp + 0x30], bl
0000000140001919  lea        r14, [rsi + r10]
000000014000191d  mov        r9, r14
0000000140001920  sub        r9, rdi
0000000140001923  nop        dword ptr [rax]
0000000140001927  nop        word ptr [rax + rax]
0000000140001930  movzx      eax, byte ptr [r9 + rdi]
0000000140001935  movzx      edx, byte ptr [rdi]
0000000140001938  lea        rdi, [rdi + 1]
000000014000193c  xor        edx, eax
000000014000193e  movzx      eax, byte ptr [rsp + 0x30]
0000000140001943  or         al, dl
0000000140001945  mov        byte ptr [rsp + 0x30], al
0000000140001949  sub        r8, 1
000000014000194d  jne        0x140001930
000000014000194f  movzx      eax, byte ptr [rsp + 0x30]
0000000140001954  test       al, al
0000000140001956  je         0x140001974
0000000140001958  lea        rax, [rip + 0xd721] ; The protected package header was modified.
000000014000195f  mov        rsi, rbx
0000000140001962  mov        qword ptr [rip + 0x176ff], rax
0000000140001969  mov        r14, rbx
000000014000196c  mov        r15, r10
000000014000196f  jmp        0x140001dd3
0000000140001974  lea        rax, [rbp + 0x70]
0000000140001978  xor        r9d, r9d
000000014000197b  xor        r8d, r8d
000000014000197e  mov        qword ptr [rsp + 0x20], rax
0000000140001983  mov        rdx, rsi
0000000140001986  mov        rcx, r10
0000000140001989  call       0x1400012b0
000000014000198e  test       eax, eax
0000000140001990  je         0x140001a33
0000000140001996  mov        rdx, rbx
0000000140001999  lea        rsi, [rip - 0x19a0]
00000001400019a0  movzx      ecx, byte ptr [rdx + rsi + 0x19028]
00000001400019a8  movzx      eax, byte ptr [rdx + rsi + 0x19008]
00000001400019b0  xor        cl, al
00000001400019b2  mov        byte ptr [rbp + rdx + 0x50], cl
00000001400019b6  mov        byte ptr [rdx + rsi + 0x19008], bl
00000001400019bd  mov        byte ptr [rdx + rsi + 0x19028], bl
00000001400019c4  inc        rdx
00000001400019c7  cmp        rdx, 0x20
00000001400019cb  jb         0x1400019a0
00000001400019cd  mov        r9d, 0x20
00000001400019d3  lea        rax, [rbp + 0xb0]
00000001400019da  mov        edx, r9d
00000001400019dd  mov        qword ptr [rsp + 0x20], rax
00000001400019e2  lea        r8, [rbp + 0x70]
00000001400019e6  lea        rcx, [rbp + 0x50]
00000001400019ea  call       0x1400012b0
00000001400019ef  test       eax, eax
00000001400019f1  je         0x140001a33
00000001400019f3  xor        eax, eax
00000001400019f5  mov        qword ptr [rsp + 0x68], r15
00000001400019fa  lea        rdi, [rbp + 0x50]
00000001400019fe  mov        ecx, 0x20
0000000140001a03  rep stosb  byte ptr [rdi], al
0000000140001a05  lea        rdi, [rbp + 0x70]
0000000140001a09  mov        ecx, 0x20
0000000140001a0e  rep stosb  byte ptr [rdi], al
0000000140001a10  mov        rcx, r15
0000000140001a13  call       0x140001000
0000000140001a18  mov        qword ptr [rsp + 0x40], rax
0000000140001a1d  mov        r12, rax
0000000140001a20  test       rax, rax
0000000140001a23  jne        0x140001a3e
0000000140001a25  lea        rax, [rip + 0xd6b4] ; The game could not allocate its protected content.
0000000140001a2c  mov        qword ptr [rip + 0x17635], rax
0000000140001a33  mov        rsi, rbx
0000000140001a36  mov        r14, rbx
0000000140001a39  jmp        0x140001dce
0000000140001a3e  lea        rdx, [r14 + 0x34]
0000000140001a42  mov        qword ptr [rsp + 0x20], r12
0000000140001a47  lea        r9, [rbp + 0xb0]
0000000140001a4e  mov        r8d, r15d
0000000140001a51  mov        rcx, r14
0000000140001a54  call       0x140001030
0000000140001a59  test       eax, eax
0000000140001a5b  je         0x140001ff1
0000000140001a61  lea        rax, [rbp + 0x90]
0000000140001a68  xor        r9d, r9d
0000000140001a6b  xor        r8d, r8d
0000000140001a6e  mov        qword ptr [rsp + 0x20], rax
0000000140001a73  mov        rdx, r15
0000000140001a76  mov        rcx, r12
0000000140001a79  call       0x1400012b0
0000000140001a7e  test       eax, eax
0000000140001a80  je         0x140001ff1
0000000140001a86  mov        byte ptr [rsp + 0x30], bl
0000000140001a8a  mov        rdi, rbx
0000000140001a8d  nop        dword ptr [rax]
0000000140001a90  movzx      eax, byte ptr [rdi + rsi + 0x19048]
0000000140001a98  movzx      edx, byte ptr [rbp + rdi + 0x90]
0000000140001aa0  inc        rdi
0000000140001aa3  xor        edx, eax
0000000140001aa5  movzx      eax, byte ptr [rsp + 0x30]
0000000140001aaa  or         al, dl
0000000140001aac  mov        byte ptr [rsp + 0x30], al
0000000140001ab0  cmp        rdi, 0x20
0000000140001ab4  jb         0x140001a90
0000000140001ab6  movzx      eax, byte ptr [rsp + 0x30]
0000000140001abb  test       al, al
0000000140001abd  jne        0x140001ff1
0000000140001ac3  xor        eax, eax
0000000140001ac5  lea        rdi, [rbp + 0x90]
0000000140001acc  mov        ecx, 0x20
0000000140001ad1  lea        r12, [rbp]
0000000140001ad5  rep stosb  byte ptr [rdi], al
0000000140001ad7  lea        rcx, [rbp + 0xd0]
0000000140001ade  mov        qword ptr [rsp + 0x60], r12
0000000140001ae3  mov        eax, 8
0000000140001ae8  mov        r15, rbx
0000000140001aeb  sub        rax, rcx
0000000140001aee  mov        qword ptr [rbp - 0x80], rax
0000000140001af2  jmp        0x140001b07
0000000140001af4  nop        dword ptr [rax]
0000000140001af8  nop        dword ptr [rax + rax]
0000000140001b00  lea        rsi, [rip - 0x1b07]
0000000140001b07  mov        r14, qword ptr [r15 + rsi + 0xe410]
0000000140001b0f  lea        rax, [rbp + 0xf0]
0000000140001b16  mov        rdi, r13
0000000140001b19  nop        dword ptr [rax]
0000000140001b20  inc        rdi
0000000140001b23  cmp        word ptr [rax + rdi*2], bx
0000000140001b27  jne        0x140001b20
0000000140001b29  mov        rsi, r13
0000000140001b2c  nop        dword ptr [rax]
0000000140001b30  inc        rsi
0000000140001b33  cmp        word ptr [r14 + rsi*2], bx
0000000140001b38  jne        0x140001b30
0000000140001b3a  test       rdi, rdi
0000000140001b3d  je         0x140001fe5
0000000140001b43  test       rsi, rsi
0000000140001b46  je         0x140001fe5
0000000140001b4c  lea        rax, [rdi + 2]
0000000140001b50  add        rax, rsi
0000000140001b53  cmp        rax, 0x8000
0000000140001b59  ja         0x140001fe5
0000000140001b5f  add        rdi, rdi
0000000140001b62  lea        rdx, [rbp + 0xf0]
0000000140001b69  mov        r8, rdi
0000000140001b6c  lea        rcx, [rbp + 0x100f0]
0000000140001b73  call       0x1400042d0
0000000140001b78  mov        eax, 0x5c
0000000140001b7d  lea        rcx, [rbp + 0x100f2]
0000000140001b84  add        rcx, rdi
0000000140001b87  mov        word ptr [rbp + rdi + 0x100f0], ax
0000000140001b8f  lea        r8, [rsi*2 + 2]
0000000140001b97  mov        rdx, r14
0000000140001b9a  call       0x1400042d0
0000000140001b9f  lea        rcx, [rbp + 0x100f0]
0000000140001ba6  call       0x140002600
0000000140001bab  mov        qword ptr [r12], rax
0000000140001baf  mov        rdi, rax
0000000140001bb2  cmp        rax, r13
0000000140001bb5  je         0x140001fd9
0000000140001bbb  lea        rax, [rip - 0x1bc2]
0000000140001bc2  mov        rcx, rdi
0000000140001bc5  mov        rax, qword ptr [r15 + rax + 0xe438]
0000000140001bcd  lea        rdx, [rsp + 0x58]
0000000140001bd2  mov        qword ptr [rsp + 0x78], rax
0000000140001bd7  mov        r14, rbx
0000000140001bda  mov        rsi, rbx
0000000140001bdd  mov        r12d, ebx
0000000140001be0  call       qword ptr [rip + 0xc43a] ; KERNEL32.dll!GetFileSizeEx
0000000140001be6  test       eax, eax
0000000140001be8  je         0x140001cd3
0000000140001bee  mov        rax, qword ptr [rsp + 0x58]
0000000140001bf3  lea        rdx, [rax - 1]
0000000140001bf7  cmp        rdx, 0x1fffffff
0000000140001bfe  ja         0x140001cd3
0000000140001c04  cmp        rax, qword ptr [rsp + 0x78]
0000000140001c09  jne        0x140001cd3
0000000140001c0f  xor        r9d, r9d
0000000140001c12  mov        qword ptr [rsp + 0x28], rbx
0000000140001c17  xor        edx, edx
0000000140001c19  mov        dword ptr [rsp + 0x20], ebx
0000000140001c1d  mov        rcx, rdi
0000000140001c20  lea        r8d, [r9 + 2]
0000000140001c24  call       qword ptr [rip + 0xc446] ; KERNEL32.dll!CreateFileMappingW
0000000140001c2a  mov        r14, rax
0000000140001c2d  test       rax, rax
0000000140001c30  je         0x140001cd3
0000000140001c36  xor        r9d, r9d
0000000140001c39  mov        qword ptr [rsp + 0x20], rbx
0000000140001c3e  xor        r8d, r8d
0000000140001c41  mov        rcx, rax
0000000140001c44  lea        edx, [r9 + 4]
0000000140001c48  call       qword ptr [rip + 0xc42a] ; KERNEL32.dll!MapViewOfFile
0000000140001c4e  mov        rsi, rax
0000000140001c51  test       rax, rax
0000000140001c54  je         0x140001cd3
0000000140001c56  mov        rdx, qword ptr [rsp + 0x58]
0000000140001c5b  lea        rax, [rbp + 0xd0]
0000000140001c62  xor        r9d, r9d
0000000140001c65  mov        qword ptr [rsp + 0x20], rax
0000000140001c6a  xor        r8d, r8d
0000000140001c6d  mov        rcx, rsi
0000000140001c70  call       0x1400012b0
0000000140001c75  test       eax, eax
0000000140001c77  je         0x140001cd3
0000000140001c79  mov        rax, qword ptr [rbp - 0x80]
0000000140001c7d  lea        rcx, [rip - 0x1c84]
0000000140001c84  add        rax, r15
0000000140001c87  mov        byte ptr [rsp + 0x30], bl
0000000140001c8b  lea        r8, [rcx + 0xe410]
0000000140001c92  mov        rdi, rbx
0000000140001c95  add        r8, rax
0000000140001c98  nop        dword ptr [rax + rax]
0000000140001ca0  lea        rdx, [rbp + 0xd0]
0000000140001ca7  add        rdx, rdi
0000000140001caa  inc        rdi
0000000140001cad  movzx      eax, byte ptr [rdx + r8]
0000000140001cb2  movzx      edx, byte ptr [rdx]
0000000140001cb5  xor        edx, eax
0000000140001cb7  movzx      eax, byte ptr [rsp + 0x30]
0000000140001cbc  or         al, dl
0000000140001cbe  mov        byte ptr [rsp + 0x30], al
0000000140001cc2  cmp        rdi, 0x20
0000000140001cc6  jb         0x140001ca0
0000000140001cc8  movzx      eax, byte ptr [rsp + 0x30]
0000000140001ccd  test       al, al
0000000140001ccf  sete       r12b
0000000140001cd3  xor        eax, eax
0000000140001cd5  lea        rdi, [rbp + 0xd0]
0000000140001cdc  mov        ecx, 0x20
0000000140001ce1  rep stosb  byte ptr [rdi], al
0000000140001ce3  test       rsi, rsi
0000000140001ce6  je         0x140001cf1
0000000140001ce8  mov        rcx, rsi
0000000140001ceb  call       qword ptr [rip + 0xc38f] ; KERNEL32.dll!UnmapViewOfFile
0000000140001cf1  test       r14, r14
0000000140001cf4  je         0x140001cff
0000000140001cf6  mov        rcx, r14
0000000140001cf9  call       qword ptr [rip + 0xc349] ; KERNEL32.dll!CloseHandle
0000000140001cff  test       r12d, r12d
0000000140001d02  je         0x140001fd9
0000000140001d08  mov        r12, qword ptr [rsp + 0x60]
0000000140001d0d  add        r15, 0x30
0000000140001d11  add        r12, 8
0000000140001d15  mov        qword ptr [rsp + 0x60], r12
0000000140001d1a  cmp        r15, 0x1b0
0000000140001d21  jb         0x140001b00
0000000140001d27  mov        r14, rbx
0000000140001d2a  lea        r15, [rip - 0x1d31]
0000000140001d31  mov        rsi, rbx
0000000140001d34  mov        rdi, rbx
0000000140001d37  nop        word ptr [rax + rax]
0000000140001d40  mov        rdx, qword ptr [rdi + r15 + 0xe410]
0000000140001d48  mov        rcx, qword ptr [r14 + r15 + 0x19070]
0000000140001d50  call       0x140005550
0000000140001d55  test       eax, eax
0000000140001d57  je         0x140001d69
0000000140001d59  inc        rsi
0000000140001d5c  add        rdi, 0x30
0000000140001d60  cmp        rdi, 0x1b0
0000000140001d67  jb         0x140001d40
0000000140001d69  cmp        rsi, 9
0000000140001d6d  je         0x140001fcd
0000000140001d73  mov        r8, qword ptr [rbp + rsi*8]
0000000140001d78  lea        rcx, [rbp + 0xf0]
0000000140001d7f  mov        rdx, qword ptr [r14 + r15 + 0x19070]
0000000140001d87  call       0x1400024c0
0000000140001d8c  mov        qword ptr [rbp + r14 - 0x50], rax
0000000140001d91  test       rax, rax
0000000140001d94  je         0x140001fc1
0000000140001d9a  add        r14, 8
0000000140001d9e  cmp        r14, 0x48
0000000140001da2  jb         0x140001d31
0000000140001da4  mov        rcx, qword ptr [rbp - 0x38]
0000000140001da8  call       0x140002290
0000000140001dad  test       eax, eax
0000000140001daf  jne        0x140001f42
0000000140001db5  lea        rax, [rip + 0xd594] ; The official runtime could not load.
0000000140001dbc  mov        qword ptr [rip + 0x172a5], rax
0000000140001dc3  mov        r14, rbx
0000000140001dc6  mov        rsi, rbx
0000000140001dc9  mov        r12, qword ptr [rsp + 0x40]
0000000140001dce  mov        r15, qword ptr [rsp + 0x38]
0000000140001dd3  xor        eax, eax
0000000140001dd5  lea        rdi, [rbp + 0x50]
0000000140001dd9  mov        ecx, 0x20
0000000140001dde  rep stosb  byte ptr [rdi], al
0000000140001de0  lea        rdi, [rbp + 0xb0]
0000000140001de7  mov        ecx, 0x20
0000000140001dec  rep stosb  byte ptr [rdi], al
0000000140001dee  lea        rdi, [rbp + 0x70]
0000000140001df2  mov        ecx, 0x20
0000000140001df7  rep stosb  byte ptr [rdi], al
0000000140001df9  lea        rdi, [rbp + 0x90]
0000000140001e00  mov        ecx, 0x20
0000000140001e05  rep stosb  byte ptr [rdi], al
0000000140001e07  lea        rcx, [rip - 0x1e0e]
0000000140001e0e  nop        
0000000140001e10  mov        byte ptr [rax + rcx + 0x19008], bl
0000000140001e17  mov        byte ptr [rax + rcx + 0x19028], bl
0000000140001e1e  inc        rax
0000000140001e21  cmp        rax, 0x20
0000000140001e25  jb         0x140001e10
0000000140001e27  test       r12, r12
0000000140001e2a  je         0x140001e4c
0000000140001e2c  mov        rcx, qword ptr [rsp + 0x68]
0000000140001e31  xor        eax, eax
0000000140001e33  mov        rdi, r12
0000000140001e36  rep stosb  byte ptr [rdi], al
0000000140001e38  call       qword ptr [rip + 0xc222] ; KERNEL32.dll!GetProcessHeap
0000000140001e3e  mov        r8, r12
0000000140001e41  xor        edx, edx
0000000140001e43  mov        rcx, rax
0000000140001e46  call       qword ptr [rip + 0xc20c] ; KERNEL32.dll!HeapFree
0000000140001e4c  test       r14, r14
0000000140001e4f  je         0x140001e7b
0000000140001e51  mov        rcx, r13
0000000140001e54  inc        rcx
0000000140001e57  cmp        byte ptr [r14 + rcx], bl
0000000140001e5b  jne        0x140001e54
0000000140001e5d  inc        rcx
0000000140001e60  xor        eax, eax
0000000140001e62  mov        rdi, r14
0000000140001e65  rep stosb  byte ptr [rdi], al
0000000140001e67  call       qword ptr [rip + 0xc1f3] ; KERNEL32.dll!GetProcessHeap
0000000140001e6d  mov        r8, r14
0000000140001e70  xor        edx, edx
0000000140001e72  mov        rcx, rax
0000000140001e75  call       qword ptr [rip + 0xc1dd] ; KERNEL32.dll!HeapFree
0000000140001e7b  test       rsi, rsi
0000000140001e7e  je         0x140001eaa
0000000140001e80  cmp        byte ptr [rsi + r13 + 1], bl
0000000140001e85  lea        r13, [r13 + 1]
0000000140001e89  jne        0x140001e80
0000000140001e8b  xor        eax, eax
0000000140001e8d  lea        rcx, [r13 + 1]
0000000140001e91  mov        rdi, rsi
0000000140001e94  rep stosb  byte ptr [rdi], al
0000000140001e96  call       qword ptr [rip + 0xc1c4] ; KERNEL32.dll!GetProcessHeap
0000000140001e9c  mov        r8, rsi
0000000140001e9f  xor        edx, edx
0000000140001ea1  mov        rcx, rax
0000000140001ea4  call       qword ptr [rip + 0xc1ae] ; KERNEL32.dll!HeapFree
0000000140001eaa  mov        r13, qword ptr [rsp + 0x30240]
0000000140001eb2  lea        rdi, [rbp - 0x10]
0000000140001eb6  mov        esi, 9
0000000140001ebb  nop        dword ptr [rax + rax]
0000000140001ec0  mov        rcx, qword ptr [rdi]
0000000140001ec3  test       rcx, rcx
0000000140001ec6  je         0x140001ece
0000000140001ec8  call       qword ptr [rip + 0xc1ba] ; KERNEL32.dll!FreeLibrary
0000000140001ece  sub        rdi, 8
0000000140001ed2  sub        rsi, 1
0000000140001ed6  jne        0x140001ec0
0000000140001ed8  nop        dword ptr [rax + rax]
0000000140001ee0  mov        rcx, qword ptr [rbp + rbx*8]
0000000140001ee5  lea        rax, [rcx - 1]
0000000140001ee9  cmp        rax, -3
0000000140001eed  ja         0x140001ef5
0000000140001eef  call       qword ptr [rip + 0xc153] ; KERNEL32.dll!CloseHandle
0000000140001ef5  inc        rbx
0000000140001ef8  cmp        rbx, 9
0000000140001efc  jb         0x140001ee0
0000000140001efe  test       r15, r15
0000000140001f01  je         0x140001f0c
0000000140001f03  mov        rcx, r15
0000000140001f06  call       qword ptr [rip + 0xc174] ; KERNEL32.dll!UnmapViewOfFile
0000000140001f0c  mov        rax, qword ptr [rsp + 0x70]
0000000140001f11  test       rax, rax
0000000140001f14  je         0x140001f1f
0000000140001f16  mov        rcx, rax
0000000140001f19  call       qword ptr [rip + 0xc129] ; KERNEL32.dll!CloseHandle
0000000140001f1f  mov        rcx, qword ptr [rbp - 0x68]
0000000140001f23  cmp        rcx, -1
0000000140001f27  je         0x140001f2f
0000000140001f29  call       qword ptr [rip + 0xc119] ; KERNEL32.dll!CloseHandle
0000000140001f2f  mov        rcx, qword ptr [rbp - 0x60]
0000000140001f33  call       qword ptr [rip + 0xc14f] ; KERNEL32.dll!FreeLibrary
0000000140001f39  mov        eax, dword ptr [rsp + 0x48]
0000000140001f3d  jmp        0x140001611
0000000140001f42  mov        rcx, qword ptr [rbp - 0x28]
0000000140001f46  lea        rdx, [rip + 0xd453] ; SDL_SetMainReady
0000000140001f4d  call       qword ptr [rip + 0xc145] ; KERNEL32.dll!GetProcAddress
0000000140001f53  test       rax, rax
0000000140001f56  je         0x140001dc3
0000000140001f5c  call       qword ptr [rip + 0xc32e]
0000000140001f62  lea        rcx, [rbp + 0x200f0]
0000000140001f69  call       0x140002e50
0000000140001f6e  lea        rcx, [rbp + 0xf0]
0000000140001f75  mov        r14, rax
0000000140001f78  call       0x140002e50
0000000140001f7d  mov        rsi, rax
0000000140001f80  test       r14, r14
0000000140001f83  je         0x140001dc9
0000000140001f89  mov        r12, qword ptr [rsp + 0x40]
0000000140001f8e  test       rax, rax
0000000140001f91  je         0x140001dce
0000000140001f97  mov        rax, qword ptr [rbp - 0x78]
0000000140001f9b  mov        r9, r14
0000000140001f9e  mov        r8, qword ptr [rbp - 0x70]
0000000140001fa2  mov        rdx, r12
0000000140001fa5  mov        rcx, qword ptr [rbp - 0x10]
0000000140001fa9  mov        qword ptr [rsp + 0x28], rax
0000000140001fae  mov        qword ptr [rsp + 0x20], rsi
0000000140001fb3  call       0x140002970
0000000140001fb8  mov        dword ptr [rsp + 0x48], eax
0000000140001fbc  jmp        0x140001dce
0000000140001fc1  lea        rax, [rip + 0xd328] ; The official runtime could not load securely.
0000000140001fc8  jmp        0x140001dbc
0000000140001fcd  lea        rax, [rip + 0xd2cc] ; The runtime trust policy is incomplete.
0000000140001fd4  jmp        0x140001dbc
0000000140001fd9  lea        rax, [rip + 0xd210] ; A required runtime file is missing or modified. Please reinstall an official copy.
0000000140001fe0  jmp        0x140001dbc
0000000140001fe5  lea        rax, [rip + 0xc724] ; The installation path is invalid.
0000000140001fec  jmp        0x140001dbc
0000000140001ff1  lea        rax, [rip + 0xd158] ; The game package authentication failed. Please reinstall an official copy.
0000000140001ff8  mov        rsi, rbx
0000000140001ffb  mov        qword ptr [rip + 0x17066], rax
0000000140002002  mov        r14, rbx
0000000140002005  jmp        0x140001dce
000000014000200a  lea        rax, [rip + 0xcf2f] ; The executable package is incomplete.
0000000140002011  mov        qword ptr [rip + 0x17050], rax
0000000140002018  jmp        0x140001dd3
000000014000201d  lea        rax, [rip + 0xce5c] ; The process runtime settings could not be secured.
0000000140002024  jmp        0x140001608
0000000140002029  lea        rax, [rip + 0xcd80] ; Secure Windows DLL loading is unavailable.
0000000140002030  jmp        0x140001608
0000000140002035  lea        rax, [rip + 0xccd4] ; The executable path is invalid.
000000014000203c  mov        qword ptr [rip + 0x17025], rax
0000000140002043  xor        eax, eax
0000000140002045  jmp        0x140001619
000000014000204a  call       0x140003554
000000014000204f  int3       
0000000140002050  push       rbx
0000000140002052  mov        eax, 0x10030
0000000140002057  call       0x140003780
000000014000205c  sub        rsp, rax
000000014000205f  mov        rax, qword ptr [rip + 0x17062]
0000000140002066  xor        rax, rsp
0000000140002069  mov        qword ptr [rsp + 0x10020], rax
0000000140002071  mov        edx, 0x8000
0000000140002076  lea        rcx, [rsp + 0x20]
000000014000207b  call       qword ptr [rip + 0xbfe7] ; KERNEL32.dll!GetSystemDirectoryW
0000000140002081  test       eax, eax
0000000140002083  je         0x14000226d
0000000140002089  lea        ecx, [rax + 0xc]
000000014000208c  cmp        ecx, 0x8000
0000000140002092  jae        0x14000226d
0000000140002098  movups     xmm0, xmmword ptr [rip + 0xc6e1] ; \bcrypt.dll
000000014000209f  lea        rcx, [rsp + 0x20]
00000001400020a4  mov        eax, eax
00000001400020a6  movsd      xmm1, qword ptr [rip + 0xc6e2]
00000001400020ae  xor        edx, edx
00000001400020b0  mov        r8d, 0x800
00000001400020b6  movups     xmmword ptr [rsp + rax*2 + 0x20], xmm0
00000001400020bb  movsd      qword ptr [rsp + rax*2 + 0x30], xmm1
00000001400020c1  call       qword ptr [rip + 0xbfd9] ; KERNEL32.dll!LoadLibraryExW
00000001400020c7  mov        rbx, rax
00000001400020ca  test       rax, rax
00000001400020cd  je         0x14000226d
00000001400020d3  lea        rdx, [rip + 0xc6be] ; BCryptOpenAlgorithmProvider
00000001400020da  mov        rcx, rax
00000001400020dd  call       qword ptr [rip + 0xbfb5] ; KERNEL32.dll!GetProcAddress
00000001400020e3  mov        qword ptr [rip + 0x179d6], rax
00000001400020ea  test       rax, rax
00000001400020ed  je         0x140002264
00000001400020f3  lea        rdx, [rip + 0xc6be] ; BCryptCloseAlgorithmProvider
00000001400020fa  mov        rcx, rbx
00000001400020fd  call       qword ptr [rip + 0xbf95] ; KERNEL32.dll!GetProcAddress
0000000140002103  mov        qword ptr [rip + 0x179be], rax
000000014000210a  test       rax, rax
000000014000210d  je         0x140002264
0000000140002113  lea        rdx, [rip + 0xc6be] ; BCryptGetProperty
000000014000211a  mov        rcx, rbx
000000014000211d  call       qword ptr [rip + 0xbf75] ; KERNEL32.dll!GetProcAddress
0000000140002123  mov        qword ptr [rip + 0x179a6], rax
000000014000212a  test       rax, rax
000000014000212d  je         0x140002264
0000000140002133  lea        rdx, [rip + 0xc6b6] ; BCryptSetProperty
000000014000213a  mov        rcx, rbx
000000014000213d  call       qword ptr [rip + 0xbf55] ; KERNEL32.dll!GetProcAddress
0000000140002143  mov        qword ptr [rip + 0x1798e], rax
000000014000214a  test       rax, rax
000000014000214d  je         0x140002264
0000000140002153  lea        rdx, [rip + 0xc6ae] ; BCryptCreateHash
000000014000215a  mov        rcx, rbx
000000014000215d  call       qword ptr [rip + 0xbf35] ; KERNEL32.dll!GetProcAddress
0000000140002163  mov        qword ptr [rip + 0x17976], rax
000000014000216a  test       rax, rax
000000014000216d  je         0x140002264
0000000140002173  lea        rdx, [rip + 0xc6a6] ; BCryptHashData
000000014000217a  mov        rcx, rbx
000000014000217d  call       qword ptr [rip + 0xbf15] ; KERNEL32.dll!GetProcAddress
0000000140002183  mov        qword ptr [rip + 0x1795e], rax
000000014000218a  test       rax, rax
000000014000218d  je         0x140002264
0000000140002193  lea        rdx, [rip + 0xc696] ; BCryptFinishHash
000000014000219a  mov        rcx, rbx
000000014000219d  call       qword ptr [rip + 0xbef5] ; KERNEL32.dll!GetProcAddress
00000001400021a3  mov        qword ptr [rip + 0x17946], rax
00000001400021aa  test       rax, rax
00000001400021ad  je         0x140002264
00000001400021b3  lea        rdx, [rip + 0xc68e] ; BCryptDestroyHash
00000001400021ba  mov        rcx, rbx
00000001400021bd  call       qword ptr [rip + 0xbed5] ; KERNEL32.dll!GetProcAddress
00000001400021c3  mov        qword ptr [rip + 0x1792e], rax
00000001400021ca  test       rax, rax
00000001400021cd  je         0x140002264
00000001400021d3  lea        rdx, [rip + 0xc686] ; BCryptGenerateSymmetricKey
00000001400021da  mov        rcx, rbx
00000001400021dd  call       qword ptr [rip + 0xbeb5] ; KERNEL32.dll!GetProcAddress
00000001400021e3  mov        qword ptr [rip + 0x17916], rax
00000001400021ea  test       rax, rax
00000001400021ed  je         0x140002264
00000001400021ef  lea        rdx, [rip + 0xc68a] ; BCryptDecrypt
00000001400021f6  mov        rcx, rbx
00000001400021f9  call       qword ptr [rip + 0xbe99] ; KERNEL32.dll!GetProcAddress
00000001400021ff  mov        qword ptr [rip + 0x17902], rax
0000000140002206  test       rax, rax
0000000140002209  je         0x140002264
000000014000220b  lea        rdx, [rip + 0xc67e] ; BCryptDestroyKey
0000000140002212  mov        rcx, rbx
0000000140002215  call       qword ptr [rip + 0xbe7d] ; KERNEL32.dll!GetProcAddress
000000014000221b  mov        qword ptr [rip + 0x178ee], rax
0000000140002222  test       rax, rax
0000000140002225  je         0x140002264
0000000140002227  lea        rdx, [rip + 0xc67a] ; BCryptImportKeyPair
000000014000222e  mov        rcx, rbx
0000000140002231  call       qword ptr [rip + 0xbe61] ; KERNEL32.dll!GetProcAddress
0000000140002237  mov        qword ptr [rip + 0x178da], rax
000000014000223e  test       rax, rax
0000000140002241  je         0x140002264
0000000140002243  lea        rdx, [rip + 0xc676] ; BCryptVerifySignature
000000014000224a  mov        rcx, rbx
000000014000224d  call       qword ptr [rip + 0xbe45] ; KERNEL32.dll!GetProcAddress
0000000140002253  mov        qword ptr [rip + 0x178c6], rax
000000014000225a  test       rax, rax
000000014000225d  je         0x140002264
000000014000225f  mov        rax, rbx
0000000140002262  jmp        0x14000226f
0000000140002264  mov        rcx, rbx
0000000140002267  call       qword ptr [rip + 0xbe1b] ; KERNEL32.dll!FreeLibrary
000000014000226d  xor        eax, eax
000000014000226f  mov        rcx, qword ptr [rsp + 0x10020]
0000000140002277  xor        rcx, rsp
000000014000227a  call       0x1400037e0
000000014000227f  add        rsp, 0x10030
0000000140002286  pop        rbx
0000000140002287  ret        
0000000140002288  int3       
0000000140002289  int3       
000000014000228a  int3       
000000014000228b  int3       
000000014000228c  int3       
000000014000228d  int3       
000000014000228e  int3       
000000014000228f  int3       
0000000140002290  push       rbx
0000000140002292  sub        rsp, 0x20
0000000140002296  lea        rdx, [rip + 0xc6bb] ; luaL_newstate
000000014000229d  mov        rbx, rcx
00000001400022a0  call       qword ptr [rip + 0xbdf2] ; KERNEL32.dll!GetProcAddress
00000001400022a6  mov        qword ptr [rip + 0x17883], rax
00000001400022ad  test       rax, rax
00000001400022b0  je         0x1400024ad
00000001400022b6  lea        rdx, [rip + 0xc6ab] ; luaL_openlibs
00000001400022bd  mov        rcx, rbx
00000001400022c0  call       qword ptr [rip + 0xbdd2] ; KERNEL32.dll!GetProcAddress
00000001400022c6  mov        qword ptr [rip + 0x1786b], rax
00000001400022cd  test       rax, rax
00000001400022d0  je         0x1400024ad
00000001400022d6  lea        rdx, [rip + 0xc69b] ; lua_close
00000001400022dd  mov        rcx, rbx
00000001400022e0  call       qword ptr [rip + 0xbdb2] ; KERNEL32.dll!GetProcAddress
00000001400022e6  mov        qword ptr [rip + 0x17853], rax
00000001400022ed  test       rax, rax
00000001400022f0  je         0x1400024ad
00000001400022f6  lea        rdx, [rip + 0xc68b] ; luaL_loadbuffer
00000001400022fd  mov        rcx, rbx
0000000140002300  call       qword ptr [rip + 0xbd92] ; KERNEL32.dll!GetProcAddress
0000000140002306  mov        qword ptr [rip + 0x1783b], rax
000000014000230d  test       rax, rax
0000000140002310  je         0x1400024ad
0000000140002316  lea        rdx, [rip + 0xc67b] ; lua_pcall
000000014000231d  mov        rcx, rbx
0000000140002320  call       qword ptr [rip + 0xbd72] ; KERNEL32.dll!GetProcAddress
0000000140002326  mov        qword ptr [rip + 0x17823], rax
000000014000232d  test       rax, rax
0000000140002330  je         0x1400024ad
0000000140002336  lea        rdx, [rip + 0xc66b] ; lua_getfield
000000014000233d  mov        rcx, rbx
0000000140002340  call       qword ptr [rip + 0xbd52] ; KERNEL32.dll!GetProcAddress
0000000140002346  mov        qword ptr [rip + 0x1780b], rax
000000014000234d  test       rax, rax
0000000140002350  je         0x1400024ad
0000000140002356  lea        rdx, [rip + 0xc65b] ; lua_setfield
000000014000235d  mov        rcx, rbx
0000000140002360  call       qword ptr [rip + 0xbd32] ; KERNEL32.dll!GetProcAddress
0000000140002366  mov        qword ptr [rip + 0x177f3], rax
000000014000236d  test       rax, rax
0000000140002370  je         0x1400024ad
0000000140002376  lea        rdx, [rip + 0xc64b] ; lua_settop
000000014000237d  mov        rcx, rbx
0000000140002380  call       qword ptr [rip + 0xbd12] ; KERNEL32.dll!GetProcAddress
0000000140002386  mov        qword ptr [rip + 0x177db], rax
000000014000238d  test       rax, rax
0000000140002390  je         0x1400024ad
0000000140002396  lea        rdx, [rip + 0xc63b] ; lua_pushcclosure
000000014000239d  mov        rcx, rbx
00000001400023a0  call       qword ptr [rip + 0xbcf2] ; KERNEL32.dll!GetProcAddress
00000001400023a6  mov        qword ptr [rip + 0x177c3], rax
00000001400023ad  test       rax, rax
00000001400023b0  je         0x1400024ad
00000001400023b6  lea        rdx, [rip + 0xc633] ; lua_pushlstring
00000001400023bd  mov        rcx, rbx
00000001400023c0  call       qword ptr [rip + 0xbcd2] ; KERNEL32.dll!GetProcAddress
00000001400023c6  mov        qword ptr [rip + 0x177ab], rax
00000001400023cd  test       rax, rax
00000001400023d0  je         0x1400024ad
00000001400023d6  lea        rdx, [rip + 0xc623] ; lua_pushvalue
00000001400023dd  mov        rcx, rbx
00000001400023e0  call       qword ptr [rip + 0xbcb2] ; KERNEL32.dll!GetProcAddress
00000001400023e6  mov        qword ptr [rip + 0x17793], rax
00000001400023ed  test       rax, rax
00000001400023f0  je         0x1400024ad
00000001400023f6  lea        rdx, [rip + 0xc613] ; lua_newthread
00000001400023fd  mov        rcx, rbx
0000000140002400  call       qword ptr [rip + 0xbc92] ; KERNEL32.dll!GetProcAddress
0000000140002406  mov        qword ptr [rip + 0x1777b], rax
000000014000240d  test       rax, rax
0000000140002410  je         0x1400024ad
0000000140002416  lea        rdx, [rip + 0xc603] ; lua_xmove
000000014000241d  mov        rcx, rbx
0000000140002420  call       qword ptr [rip + 0xbc72] ; KERNEL32.dll!GetProcAddress
0000000140002426  mov        qword ptr [rip + 0x17763], rax
000000014000242d  test       rax, rax
0000000140002430  je         0x1400024ad
0000000140002432  lea        rdx, [rip + 0xc5f7] ; lua_resume
0000000140002439  mov        rcx, rbx
000000014000243c  call       qword ptr [rip + 0xbc56] ; KERNEL32.dll!GetProcAddress
0000000140002442  mov        qword ptr [rip + 0x1774f], rax
0000000140002449  test       rax, rax
000000014000244c  je         0x1400024ad
000000014000244e  lea        rdx, [rip + 0xc5eb] ; lua_type
0000000140002455  mov        rcx, rbx
0000000140002458  call       qword ptr [rip + 0xbc3a] ; KERNEL32.dll!GetProcAddress
000000014000245e  mov        qword ptr [rip + 0x1773b], rax
0000000140002465  test       rax, rax
0000000140002468  je         0x1400024ad
000000014000246a  lea        rdx, [rip + 0xc5df] ; lua_tonumber
0000000140002471  mov        rcx, rbx
0000000140002474  call       qword ptr [rip + 0xbc1e] ; KERNEL32.dll!GetProcAddress
000000014000247a  mov        qword ptr [rip + 0x17727], rax
0000000140002481  test       rax, rax
0000000140002484  je         0x1400024ad
0000000140002486  lea        rdx, [rip + 0xc5d3] ; lua_tolstring
000000014000248d  mov        rcx, rbx
0000000140002490  call       qword ptr [rip + 0xbc02] ; KERNEL32.dll!GetProcAddress
0000000140002496  mov        qword ptr [rip + 0x17713], rax
000000014000249d  test       rax, rax
00000001400024a0  je         0x1400024ad
00000001400024a2  mov        eax, 1
00000001400024a7  add        rsp, 0x20
00000001400024ab  pop        rbx
00000001400024ac  ret        
00000001400024ad  xor        eax, eax
00000001400024af  add        rsp, 0x20
00000001400024b3  pop        rbx
00000001400024b4  ret        
00000001400024b5  int3       
00000001400024b6  int3       
00000001400024b7  int3       
00000001400024b8  int3       
00000001400024b9  int3       
00000001400024ba  int3       
00000001400024bb  int3       
00000001400024bc  int3       
00000001400024bd  int3       
00000001400024be  int3       
00000001400024bf  int3       
00000001400024c0  push       rsi
00000001400024c2  push       rdi
00000001400024c3  mov        eax, 0x100a8
00000001400024c8  call       0x140003780
00000001400024cd  sub        rsp, rax
00000001400024d0  mov        rax, qword ptr [rip + 0x16bf1]
00000001400024d7  xor        rax, rsp
00000001400024da  mov        qword ptr [rsp + 0x10090], rax
00000001400024e2  mov        rsi, r8
00000001400024e5  mov        r8, rdx
00000001400024e8  mov        rdx, rcx
00000001400024eb  lea        rcx, [rsp + 0x90]
00000001400024f3  call       0x140002820
00000001400024f8  test       eax, eax
00000001400024fa  je         0x1400025f0
0000000140002500  xor        edx, edx
0000000140002502  lea        rcx, [rsp + 0x90]
000000014000250a  mov        r8d, 0x800
0000000140002510  call       qword ptr [rip + 0xbb8a] ; KERNEL32.dll!LoadLibraryExW
0000000140002516  mov        rdi, rax
0000000140002519  test       rax, rax
000000014000251c  je         0x1400025f0
0000000140002522  mov        r8d, 0x8000
0000000140002528  mov        qword ptr [rsp + 0x100a0], rbx
0000000140002530  lea        rdx, [rsp + 0x90]
0000000140002538  mov        rcx, rax
000000014000253b  call       qword ptr [rip + 0xbb4f] ; KERNEL32.dll!GetModuleFileNameW
0000000140002541  dec        eax
0000000140002543  cmp        eax, 0x7ffe
0000000140002548  ja         0x1400025e3
000000014000254e  lea        rcx, [rsp + 0x90]
0000000140002556  call       0x140002600
000000014000255b  mov        rbx, rax
000000014000255e  cmp        rax, -1
0000000140002562  je         0x1400025e3
0000000140002564  lea        rdx, [rsp + 0x58]
0000000140002569  mov        rcx, rsi
000000014000256c  call       qword ptr [rip + 0xbaa6] ; KERNEL32.dll!GetFileInformationByHandle
0000000140002572  test       eax, eax
0000000140002574  je         0x1400025da
0000000140002576  lea        rdx, [rsp + 0x20]
000000014000257b  mov        rcx, rbx
000000014000257e  call       qword ptr [rip + 0xba94] ; KERNEL32.dll!GetFileInformationByHandle
0000000140002584  test       eax, eax
0000000140002586  je         0x1400025da
0000000140002588  mov        eax, dword ptr [rsp + 0x3c]
000000014000258c  cmp        dword ptr [rsp + 0x74], eax
0000000140002590  jne        0x1400025da
0000000140002592  mov        eax, dword ptr [rsp + 0x4c]
0000000140002596  cmp        dword ptr [rsp + 0x84], eax
000000014000259d  jne        0x1400025da
000000014000259f  mov        eax, dword ptr [rsp + 0x50]
00000001400025a3  cmp        dword ptr [rsp + 0x88], eax
00000001400025aa  jne        0x1400025da
00000001400025ac  mov        rcx, rbx
00000001400025af  call       qword ptr [rip + 0xba93] ; KERNEL32.dll!CloseHandle
00000001400025b5  mov        rax, rdi
00000001400025b8  mov        rbx, qword ptr [rsp + 0x100a0]
00000001400025c0  mov        rcx, qword ptr [rsp + 0x10090]
00000001400025c8  xor        rcx, rsp
00000001400025cb  call       0x1400037e0
00000001400025d0  add        rsp, 0x100a8
00000001400025d7  pop        rdi
00000001400025d8  pop        rsi
00000001400025d9  ret        
00000001400025da  mov        rcx, rbx
00000001400025dd  call       qword ptr [rip + 0xba65] ; KERNEL32.dll!CloseHandle
00000001400025e3  mov        rcx, rdi
00000001400025e6  call       qword ptr [rip + 0xba9c] ; KERNEL32.dll!FreeLibrary
00000001400025ec  xor        eax, eax
00000001400025ee  jmp        0x1400025b8
00000001400025f0  xor        eax, eax
00000001400025f2  jmp        0x1400025c0
00000001400025f4  int3       
00000001400025f5  int3       
00000001400025f6  int3       
00000001400025f7  int3       
00000001400025f8  int3       
00000001400025f9  int3       
00000001400025fa  int3       
00000001400025fb  int3       
00000001400025fc  int3       
00000001400025fd  int3       
00000001400025fe  int3       
00000001400025ff  int3       
0000000140002600  mov        qword ptr [rsp + 0x18], rbx
0000000140002605  push       rdi
0000000140002606  mov        eax, 0x30090
000000014000260b  call       0x140003780
0000000140002610  sub        rsp, rax
0000000140002613  mov        rax, qword ptr [rip + 0x16aae]
000000014000261a  xor        rax, rsp
000000014000261d  mov        qword ptr [rsp + 0x30080], rax
0000000140002625  xor        r9d, r9d
0000000140002628  mov        qword ptr [rsp + 0x30], 0
0000000140002631  mov        dword ptr [rsp + 0x28], 0x200080
0000000140002639  mov        edx, 0x80000000
000000014000263e  mov        rdi, rcx
0000000140002641  mov        dword ptr [rsp + 0x20], 3
0000000140002649  lea        r8d, [r9 + 1]
000000014000264d  call       qword ptr [rip + 0xb9bd] ; KERNEL32.dll!CreateFileW
0000000140002653  mov        rbx, rax
0000000140002656  cmp        rax, -1
000000014000265a  je         0x1400027e9
0000000140002660  lea        rdx, [rsp + 0x40]
0000000140002665  mov        rcx, rax
0000000140002668  call       qword ptr [rip + 0xb9aa] ; KERNEL32.dll!GetFileInformationByHandle
000000014000266e  test       eax, eax
0000000140002670  je         0x1400027e0
0000000140002676  test       dword ptr [rsp + 0x40], 0x410
000000014000267e  jne        0x1400027e0
0000000140002684  xor        r9d, r9d
0000000140002687  lea        r8, [rsp + 0x20080]
000000014000268f  mov        edx, 0x8000
0000000140002694  mov        rcx, rdi
0000000140002697  call       qword ptr [rip + 0xb993] ; KERNEL32.dll!GetFullPathNameW
000000014000269d  dec        eax
000000014000269f  cmp        eax, 0x7ffe
00000001400026a4  ja         0x1400027e0
00000001400026aa  mov        r8d, 0x8000
00000001400026b0  lea        rdx, [rsp + 0x10080]
00000001400026b8  lea        rcx, [rsp + 0x20080]
00000001400026c0  call       qword ptr [rip + 0xb972] ; KERNEL32.dll!GetLongPathNameW
00000001400026c6  dec        eax
00000001400026c8  cmp        eax, 0x7ffe
00000001400026cd  ja         0x1400027e0
00000001400026d3  xor        r9d, r9d
00000001400026d6  lea        rdx, [rsp + 0x80]
00000001400026de  mov        r8d, 0x8000
00000001400026e4  mov        rcx, rbx
00000001400026e7  call       qword ptr [rip + 0xb93b] ; KERNEL32.dll!GetFinalPathNameByHandleW
00000001400026ed  dec        eax
00000001400026ef  cmp        eax, 0x7ffe
00000001400026f4  ja         0x1400027e0
00000001400026fa  mov        r8d, 8
0000000140002700  mov        qword ptr [rsp + 0x300a8], rsi
0000000140002708  lea        rdx, [rip + 0xc049] ; \\?\UNC\
000000014000270f  lea        rcx, [rsp + 0x80]
0000000140002717  call       0x140005448
000000014000271c  mov        esi, 0x5c
0000000140002721  test       eax, eax
0000000140002723  jne        0x140002737
0000000140002725  mov        word ptr [rsp + 0x8c], si
000000014000272d  lea        rdi, [rsp + 0x8c]
0000000140002735  jmp        0x140002767
0000000140002737  mov        r8d, 4
000000014000273d  lea        rdx, [rip + 0xc02c] ; \\?\
0000000140002744  lea        rcx, [rsp + 0x80]
000000014000274c  call       0x140005448
0000000140002751  test       eax, eax
0000000140002753  lea        rdi, [rsp + 0x88]
000000014000275b  lea        rcx, [rsp + 0x80]
0000000140002763  cmovne     rdi, rcx
0000000140002767  mov        r8d, 8
000000014000276d  lea        rdx, [rip + 0xbfe4] ; \\?\UNC\
0000000140002774  lea        rcx, [rsp + 0x10080]
000000014000277c  call       0x140005448
0000000140002781  test       eax, eax
0000000140002783  jne        0x140002797
0000000140002785  mov        word ptr [rsp + 0x1008c], si
000000014000278d  lea        rdx, [rsp + 0x1008c]
0000000140002795  jmp        0x1400027c7
0000000140002797  mov        r8d, 4
000000014000279d  lea        rdx, [rip + 0xbfcc] ; \\?\
00000001400027a4  lea        rcx, [rsp + 0x10080]
00000001400027ac  call       0x140005448
00000001400027b1  test       eax, eax
00000001400027b3  lea        rdx, [rsp + 0x10088]
00000001400027bb  lea        rcx, [rsp + 0x10080]
00000001400027c3  cmovne     rdx, rcx
00000001400027c7  mov        rcx, rdi
00000001400027ca  call       0x140005550
00000001400027cf  mov        rsi, qword ptr [rsp + 0x300a8]
00000001400027d7  test       eax, eax
00000001400027d9  jne        0x1400027e0
00000001400027db  mov        rax, rbx
00000001400027de  jmp        0x1400027f0
00000001400027e0  mov        rcx, rbx
00000001400027e3  call       qword ptr [rip + 0xb85f] ; KERNEL32.dll!CloseHandle
00000001400027e9  mov        rax, 0xffffffffffffffff
00000001400027f0  mov        rcx, qword ptr [rsp + 0x30080]
00000001400027f8  xor        rcx, rsp
00000001400027fb  call       0x1400037e0
0000000140002800  mov        rbx, qword ptr [rsp + 0x300b0]
0000000140002808  add        rsp, 0x30090
000000014000280f  pop        rdi
0000000140002810  ret        
0000000140002811  int3       
0000000140002812  int3       
0000000140002813  int3       
0000000140002814  int3       
0000000140002815  int3       
0000000140002816  int3       
0000000140002817  int3       
0000000140002818  int3       
0000000140002819  int3       
000000014000281a  int3       
000000014000281b  int3       
000000014000281c  int3       
000000014000281d  int3       
000000014000281e  int3       
000000014000281f  int3       
0000000140002820  mov        qword ptr [rsp + 8], rbx
0000000140002825  mov        qword ptr [rsp + 0x10], rbp
000000014000282a  mov        qword ptr [rsp + 0x18], rsi
000000014000282f  push       rdi
0000000140002830  sub        rsp, 0x20
0000000140002834  mov        rbx, 0xffffffffffffffff
000000014000283b  mov        rsi, r8
000000014000283e  mov        rdi, rbx
0000000140002841  mov        rbp, rcx
0000000140002844  inc        rdi
0000000140002847  cmp        word ptr [rdx + rdi*2], 0
000000014000284c  jne        0x140002844
000000014000284e  nop        
0000000140002850  inc        rbx
0000000140002853  cmp        word ptr [r8 + rbx*2], 0
0000000140002859  jne        0x140002850
000000014000285b  test       rdi, rdi
000000014000285e  je         0x1400028a6
0000000140002860  test       rbx, rbx
0000000140002863  je         0x1400028a6
0000000140002865  lea        rax, [rdi + 2]
0000000140002869  add        rax, rbx
000000014000286c  cmp        rax, 0x8000
0000000140002872  ja         0x1400028a6
0000000140002874  add        rdi, rdi
0000000140002877  mov        r8, rdi
000000014000287a  call       0x1400042d0
000000014000287f  mov        eax, 0x5c
0000000140002884  lea        rcx, [rbp + 2]
0000000140002888  add        rcx, rdi
000000014000288b  mov        word ptr [rdi + rbp], ax
000000014000288f  lea        r8, [rbx*2 + 2]
0000000140002897  mov        rdx, rsi
000000014000289a  call       0x1400042d0
000000014000289f  mov        eax, 1
00000001400028a4  jmp        0x1400028b6
00000001400028a6  lea        rax, [rip + 0xbe63] ; The installation path is invalid.
00000001400028ad  mov        qword ptr [rip + 0x167b4], rax
00000001400028b4  xor        eax, eax
00000001400028b6  mov        rbx, qword ptr [rsp + 0x30]
00000001400028bb  mov        rbp, qword ptr [rsp + 0x38]
00000001400028c0  mov        rsi, qword ptr [rsp + 0x40]
00000001400028c5  add        rsp, 0x20
00000001400028c9  pop        rdi
00000001400028ca  ret        
00000001400028cb  int3       
00000001400028cc  int3       
00000001400028cd  int3       
00000001400028ce  int3       
00000001400028cf  int3       
00000001400028d0  mov        qword ptr [rsp + 8], rbx
00000001400028d5  mov        qword ptr [rsp + 0x10], rsi
00000001400028da  push       rdi
00000001400028db  sub        rsp, 0x20
00000001400028df  mov        rax, qword ptr [rip + 0x17272]
00000001400028e6  mov        rbx, r8
00000001400028e9  mov        rdi, rdx
00000001400028ec  lea        r8, [rip + 0xc17d] ; package
00000001400028f3  mov        edx, 0xffffd8ee
00000001400028f8  mov        rsi, rcx
00000001400028fb  call       qword ptr [rip + 0xb98f]
0000000140002901  mov        rax, qword ptr [rip + 0x17250]
0000000140002908  lea        r8, [rip + 0xc169] ; preload
000000014000290f  mov        edx, 0xffffffff
0000000140002914  mov        rcx, rsi
0000000140002917  call       qword ptr [rip + 0xb973]
000000014000291d  mov        rax, qword ptr [rip + 0x1724c]
0000000140002924  xor        r8d, r8d
0000000140002927  mov        rdx, rbx
000000014000292a  mov        rcx, rsi
000000014000292d  call       qword ptr [rip + 0xb95d]
0000000140002933  mov        rax, qword ptr [rip + 0x17226]
000000014000293a  mov        r8, rdi
000000014000293d  mov        edx, 0xfffffffe
0000000140002942  mov        rcx, rsi
0000000140002945  call       qword ptr [rip + 0xb945]
000000014000294b  mov        rax, qword ptr [rip + 0x17216]
0000000140002952  xor        edx, edx
0000000140002954  mov        rcx, rsi
0000000140002957  mov        rbx, qword ptr [rsp + 0x30]
000000014000295c  mov        rsi, qword ptr [rsp + 0x38]
0000000140002961  add        rsp, 0x20
0000000140002965  pop        rdi
0000000140002966  jmp        qword ptr [rip + 0xb923]
000000014000296d  int3       
000000014000296e  int3       
000000014000296f  int3       
0000000140002970  mov        qword ptr [rsp + 0x18], r8
0000000140002975  push       rbx
0000000140002976  push       rsi
0000000140002977  push       rdi
0000000140002978  push       r14
000000014000297a  push       r15
000000014000297c  sub        rsp, 0x40
0000000140002980  xor        r14d, r14d
0000000140002983  mov        r15, r9
0000000140002986  mov        rsi, rdx
0000000140002989  mov        rbx, rcx
000000014000298c  cmp        r8, 0x18
0000000140002990  jb         0x140002e33
0000000140002996  lea        r9, [rip + 0xc0eb] ; SBMEM002
000000014000299d  mov        byte ptr [rsp + 0x30], r14b
00000001400029a2  mov        r10, rdx
00000001400029a5  mov        edi, r14d
00000001400029a8  sub        r10, r9
00000001400029ab  nop        dword ptr [rax + rax]
00000001400029b0  lea        rcx, [rdi + r9]
00000001400029b4  inc        rdi
00000001400029b7  movzx      eax, byte ptr [rcx + r10]
00000001400029bc  movzx      ecx, byte ptr [rcx]
00000001400029bf  xor        ecx, eax
00000001400029c1  movzx      eax, byte ptr [rsp + 0x30]
00000001400029c6  or         al, cl
00000001400029c8  mov        byte ptr [rsp + 0x30], al
00000001400029cc  cmp        rdi, 8
00000001400029d0  jb         0x1400029b0
00000001400029d2  movzx      eax, byte ptr [rsp + 0x30]
00000001400029d7  test       al, al
00000001400029d9  jne        0x140002e33
00000001400029df  movzx      eax, byte ptr [rdx + 0xe]
00000001400029e3  movzx      ecx, byte ptr [rdx + 0xf]
00000001400029e7  shl        ecx, 8
00000001400029ea  or         ecx, eax
00000001400029ec  movzx      eax, byte ptr [rdx + 0xd]
00000001400029f0  shl        ecx, 8
00000001400029f3  or         ecx, eax
00000001400029f5  movzx      eax, byte ptr [rdx + 0xc]
00000001400029f9  shl        ecx, 8
00000001400029fc  or         ecx, eax
00000001400029fe  jne        0x140002e33
0000000140002a04  movzx      eax, byte ptr [rdx + 0xa]
0000000140002a08  movzx      ecx, byte ptr [rdx + 0xb]
0000000140002a0c  mov        qword ptr [rsp + 0x70], rbp
0000000140002a11  movzx      ebp, byte ptr [rdx + 0x17]
0000000140002a15  shl        rbp, 8
0000000140002a19  shl        ecx, 8
0000000140002a1c  or         ecx, eax
0000000140002a1e  mov        qword ptr [rsp + 0x78], r12
0000000140002a23  movzx      eax, byte ptr [rdx + 9]
0000000140002a27  shl        ecx, 8
0000000140002a2a  or         ecx, eax
0000000140002a2c  movzx      eax, byte ptr [rdx + 8]
0000000140002a30  shl        ecx, 8
0000000140002a33  or         ecx, eax
0000000140002a35  movzx      eax, byte ptr [rdx + 0x16]
0000000140002a39  or         rbp, rax
0000000140002a3c  movzx      eax, byte ptr [rdx + 0x15]
0000000140002a40  shl        rbp, 8
0000000140002a44  or         rbp, rax
0000000140002a47  movzx      eax, byte ptr [rdx + 0x14]
0000000140002a4b  shl        rbp, 8
0000000140002a4f  or         rbp, rax
0000000140002a52  movzx      eax, byte ptr [rdx + 0x13]
0000000140002a56  shl        rbp, 8
0000000140002a5a  or         rbp, rax
0000000140002a5d  movzx      eax, byte ptr [rdx + 0x12]
0000000140002a61  shl        rbp, 8
0000000140002a65  or         rbp, rax
0000000140002a68  movzx      eax, byte ptr [rdx + 0x11]
0000000140002a6c  shl        rbp, 8
0000000140002a70  or         rbp, rax
0000000140002a73  movzx      eax, byte ptr [rdx + 0x10]
0000000140002a77  shl        rbp, 8
0000000140002a7b  or         rbp, rax
0000000140002a7e  lea        eax, [rcx - 6]
0000000140002a81  cmp        eax, 0xffffa
0000000140002a86  ja         0x140002e1e
0000000140002a8c  cmp        rbp, 0x16
0000000140002a90  jb         0x140002e1e
0000000140002a96  mov        r12d, ecx
0000000140002a99  lea        rax, [rbp + 0x18]
0000000140002a9d  add        rax, r12
0000000140002aa0  cmp        rax, r8
0000000140002aa3  jne        0x140002e1e
0000000140002aa9  lea        r9, [rip + 0xc050]
0000000140002ab0  mov        byte ptr [rsp + 0x30], r14b
0000000140002ab5  mov        r8, rsi
0000000140002ab8  mov        rdi, r14
0000000140002abb  sub        r8, r9
0000000140002abe  nop        
0000000140002ac0  lea        rcx, [rdi + r9]
0000000140002ac4  inc        rdi
0000000140002ac7  movzx      eax, byte ptr [rcx + r8 + 0x18]
0000000140002acd  movzx      ecx, byte ptr [rcx]
0000000140002ad0  xor        ecx, eax
0000000140002ad2  movzx      eax, byte ptr [rsp + 0x30]
0000000140002ad7  or         al, cl
0000000140002ad9  mov        byte ptr [rsp + 0x30], al
0000000140002add  cmp        rdi, 3
0000000140002ae1  jb         0x140002ac0
0000000140002ae3  movzx      eax, byte ptr [rsp + 0x30]
0000000140002ae8  test       al, al
0000000140002aea  jne        0x140002e1e
0000000140002af0  test       byte ptr [rdx + 0x1c], 2
0000000140002af4  je         0x140002e1e
0000000140002afa  lea        rdx, [rip + 0xc06f] ; luaopen_love
0000000140002b01  mov        qword ptr [rsp + 0x88], r13
0000000140002b09  mov        rcx, rbx
0000000140002b0c  call       qword ptr [rip + 0xb586] ; KERNEL32.dll!GetProcAddress
0000000140002b12  lea        rdx, [rip + 0xc067] ; luaopen_love_jitsetup
0000000140002b19  mov        rcx, rbx
0000000140002b1c  mov        rdi, rax
0000000140002b1f  call       qword ptr [rip + 0xb573] ; KERNEL32.dll!GetProcAddress
0000000140002b25  mov        r13, rax
0000000140002b28  test       rdi, rdi
0000000140002b2b  je         0x140002e12
0000000140002b31  test       rax, rax
0000000140002b34  je         0x140002e12
0000000140002b3a  mov        rax, qword ptr [rip + 0x16fef]
0000000140002b41  call       qword ptr [rip + 0xb749]
0000000140002b47  mov        rbx, rax
0000000140002b4a  test       rax, rax
0000000140002b4d  jne        0x140002b7d
0000000140002b4f  lea        rax, [rip + 0xc0aa] ; The game could not allocate its virtual machine.
0000000140002b56  mov        qword ptr [rip + 0x1650b], rax
0000000140002b5d  xor        eax, eax
0000000140002b5f  mov        r13, qword ptr [rsp + 0x88]
0000000140002b67  mov        rbp, qword ptr [rsp + 0x70]
0000000140002b6c  mov        r12, qword ptr [rsp + 0x78]
0000000140002b71  add        rsp, 0x40
0000000140002b75  pop        r15
0000000140002b77  pop        r14
0000000140002b79  pop        rdi
0000000140002b7a  pop        rsi
0000000140002b7b  pop        rbx
0000000140002b7c  ret        
0000000140002b7d  mov        rax, qword ptr [rip + 0x16fb4]
0000000140002b84  mov        rcx, rbx
0000000140002b87  call       qword ptr [rip + 0xb703]
0000000140002b8d  mov        r8, r13
0000000140002b90  lea        rdx, [rip + 0xc0d1] ; love.jitsetup
0000000140002b97  mov        rcx, rbx
0000000140002b9a  call       0x1400028d0
0000000140002b9f  mov        rax, qword ptr [rip + 0x16fb2]
0000000140002ba6  lea        r8, [rip + 0xbed3] ; require
0000000140002bad  mov        edx, 0xffffd8ee
0000000140002bb2  mov        rcx, rbx
0000000140002bb5  call       qword ptr [rip + 0xb6d5]
0000000140002bbb  mov        rax, qword ptr [rip + 0x16fb6]
0000000140002bc2  lea        rdx, [rip + 0xc09f] ; love.jitsetup
0000000140002bc9  mov        r8d, 0xd
0000000140002bcf  mov        rcx, rbx
0000000140002bd2  call       qword ptr [rip + 0xb6b8]
0000000140002bd8  mov        rax, qword ptr [rip + 0x16f71]
0000000140002bdf  xor        r9d, r9d
0000000140002be2  xor        r8d, r8d
0000000140002be5  mov        rcx, rbx
0000000140002be8  lea        edx, [r9 + 1]
0000000140002bec  call       qword ptr [rip + 0xb69e]
0000000140002bf2  test       eax, eax
0000000140002bf4  jne        0x140002db5
0000000140002bfa  mov        r8, rdi
0000000140002bfd  lea        rdx, [rip + 0xc074]
0000000140002c04  mov        rcx, rbx
0000000140002c07  call       0x1400028d0
0000000140002c0c  mov        rax, qword ptr [rip + 0x16f35]
0000000140002c13  lea        rdx, [rsi + 0x18]
0000000140002c17  lea        r9, [rip + 0xc062] ; @protected-startup
0000000140002c1e  mov        r8, r12
0000000140002c21  mov        rcx, rbx
0000000140002c24  call       qword ptr [rip + 0xb666]
0000000140002c2a  test       eax, eax
0000000140002c2c  jne        0x140002db5
0000000140002c32  mov        rax, qword ptr [rip + 0x16f3f]
0000000140002c39  lea        rdx, [rsi + 0x18]
0000000140002c3d  add        rdx, r12
0000000140002c40  mov        r8, rbp
0000000140002c43  mov        rcx, rbx
0000000140002c46  call       qword ptr [rip + 0xb644]
0000000140002c4c  mov        r8, 0xffffffffffffffff
0000000140002c53  inc        r8
0000000140002c56  cmp        byte ptr [r15 + r8], r14b
0000000140002c5a  jne        0x140002c53
0000000140002c5c  mov        rax, qword ptr [rip + 0x16f15]
0000000140002c63  mov        rdx, r15
0000000140002c66  mov        rcx, rbx
0000000140002c69  call       qword ptr [rip + 0xb621]
0000000140002c6f  mov        rdx, qword ptr [rsp + 0x90]
0000000140002c77  mov        r8, 0xffffffffffffffff
0000000140002c7e  nop        
0000000140002c80  inc        r8
0000000140002c83  cmp        byte ptr [rdx + r8], r14b
0000000140002c87  jne        0x140002c80
0000000140002c89  mov        rax, qword ptr [rip + 0x16ee8]
0000000140002c90  mov        rcx, rbx
0000000140002c93  call       qword ptr [rip + 0xb5f7]
0000000140002c99  mov        rcx, qword ptr [rsp + 0x80]
0000000140002ca1  xor        eax, eax
0000000140002ca3  mov        rdi, rsi
0000000140002ca6  xor        r9d, r9d
0000000140002ca9  rep stosb  byte ptr [rdi], al
0000000140002cab  lea        edx, [rax + 3]
0000000140002cae  mov        rcx, rbx
0000000140002cb1  lea        r8d, [rax + 1]
0000000140002cb5  mov        rax, qword ptr [rip + 0x16e94]
0000000140002cbc  call       qword ptr [rip + 0xb5ce]
0000000140002cc2  test       eax, eax
0000000140002cc4  jne        0x140002db5
0000000140002cca  lea        edx, [rax - 1]
0000000140002ccd  mov        rcx, rbx
0000000140002cd0  mov        rax, qword ptr [rip + 0x16ec9]
0000000140002cd7  call       qword ptr [rip + 0xb5b3]
0000000140002cdd  cmp        eax, 6
0000000140002ce0  jne        0x140002db5
0000000140002ce6  mov        rax, qword ptr [rip + 0x16e9b]
0000000140002ced  mov        rcx, rbx
0000000140002cf0  call       qword ptr [rip + 0xb59a]
0000000140002cf6  mov        edx, 0xfffffffe
0000000140002cfb  mov        rcx, rbx
0000000140002cfe  mov        rdi, rax
0000000140002d01  mov        rax, qword ptr [rip + 0x16e78]
0000000140002d08  call       qword ptr [rip + 0xb582]
0000000140002d0e  mov        rax, qword ptr [rip + 0x16e7b]
0000000140002d15  mov        r8d, 1
0000000140002d1b  mov        rdx, rdi
0000000140002d1e  mov        rcx, rbx
0000000140002d21  call       qword ptr [rip + 0xb569]
0000000140002d27  nop        word ptr [rax + rax]
0000000140002d30  mov        rax, qword ptr [rip + 0x16e61]
0000000140002d37  xor        edx, edx
0000000140002d39  mov        rcx, rdi
0000000140002d3c  call       qword ptr [rip + 0xb54e]
0000000140002d42  cmp        eax, 1
0000000140002d45  jne        0x140002d5b
0000000140002d47  mov        rax, qword ptr [rip + 0x16e1a]
0000000140002d4e  xor        edx, edx
0000000140002d50  mov        rcx, rdi
0000000140002d53  call       qword ptr [rip + 0xb537]
0000000140002d59  jmp        0x140002d30
0000000140002d5b  test       eax, eax
0000000140002d5d  jne        0x140002db5
0000000140002d5f  lea        edx, [rax - 1]
0000000140002d62  mov        rcx, rdi
0000000140002d65  mov        rax, qword ptr [rip + 0x16e34]
0000000140002d6c  call       qword ptr [rip + 0xb51e]
0000000140002d72  mov        edx, 0xffffffff
0000000140002d77  mov        rcx, rdi
0000000140002d7a  cmp        eax, 3
0000000140002d7d  jne        0x140002dcd
0000000140002d7f  mov        rax, qword ptr [rip + 0x16e22]
0000000140002d86  call       qword ptr [rip + 0xb504]
0000000140002d8c  xorps      xmm1, xmm1
0000000140002d8f  comisd     xmm1, xmm0
0000000140002d93  ja         0x140002db5
0000000140002d95  comisd     xmm0, xmmword ptr [rip + 0xc633]
0000000140002d9d  ja         0x140002db5
0000000140002d9f  cvttsd2si  r14d, xmm0
0000000140002da4  mov        rcx, qword ptr [rsp + 0x98]
0000000140002dac  mov        dword ptr [rcx], r14d
0000000140002daf  mov        r14d, 1
0000000140002db5  mov        rax, qword ptr [rip + 0x16d84]
0000000140002dbc  mov        rcx, rbx
0000000140002dbf  call       qword ptr [rip + 0xb4cb]
0000000140002dc5  mov        eax, r14d
0000000140002dc8  jmp        0x140002b5f
0000000140002dcd  mov        rax, qword ptr [rip + 0x16ddc]
0000000140002dd4  lea        r8, [rsp + 0x38]
0000000140002dd9  call       qword ptr [rip + 0xb4b1]
0000000140002ddf  test       rax, rax
0000000140002de2  je         0x140002da4
0000000140002de4  cmp        qword ptr [rsp + 0x38], 7
0000000140002dea  jne        0x140002da4
0000000140002dec  cmp        dword ptr [rax], 0x74736572
0000000140002df2  jne        0x140002da4
0000000140002df4  cmp        word ptr [rax + 4], 0x7261
0000000140002dfa  jne        0x140002da4
0000000140002dfc  cmp        byte ptr [rax + 6], 0x74
0000000140002e00  jne        0x140002da4
0000000140002e02  lea        rax, [rip + 0xbe97] ; Please reopen Slotbound to restart the application.
0000000140002e09  mov        qword ptr [rip + 0x16258], rax
0000000140002e10  jmp        0x140002db5
0000000140002e12  lea        rax, [rip + 0xbd87] ; The official game runtime is incompatible.
0000000140002e19  jmp        0x140002b56
0000000140002e1e  lea        rax, [rip + 0xbceb] ; The authenticated startup bytecode is invalid.
0000000140002e25  mov        qword ptr [rip + 0x1623c], rax
0000000140002e2c  xor        eax, eax
0000000140002e2e  jmp        0x140002b67
0000000140002e33  lea        rax, [rip + 0xbc66] ; The authenticated content envelope is invalid.
0000000140002e3a  mov        qword ptr [rip + 0x16227], rax
0000000140002e41  xor        eax, eax
0000000140002e43  add        rsp, 0x40
0000000140002e47  pop        r15
0000000140002e49  pop        r14
0000000140002e4b  pop        rdi
0000000140002e4c  pop        rsi
0000000140002e4d  pop        rbx
0000000140002e4e  ret        
0000000140002e4f  int3       
0000000140002e50  mov        rax, rsp
0000000140002e53  mov        qword ptr [rax + 8], rbx
0000000140002e57  mov        qword ptr [rax + 0x10], rbp
0000000140002e5b  mov        qword ptr [rax + 0x18], rsi
0000000140002e5f  mov        qword ptr [rax + 0x20], rdi
0000000140002e63  push       r14
0000000140002e65  sub        rsp, 0x40
0000000140002e69  xor        r14d, r14d
0000000140002e6c  mov        rbp, rcx
0000000140002e6f  mov        qword ptr [rax - 0x10], r14
0000000140002e73  mov        r8, rcx
0000000140002e76  mov        qword ptr [rax - 0x18], r14
0000000140002e7a  mov        edx, 0x80
0000000140002e7f  mov        dword ptr [rax - 0x20], r14d
0000000140002e83  mov        ecx, 0xfde9
0000000140002e88  lea        r9d, [r14 - 1]
0000000140002e8c  mov        qword ptr [rax - 0x28], r14
0000000140002e90  call       qword ptr [rip + 0xb222] ; KERNEL32.dll!WideCharToMultiByte
0000000140002e96  movsxd     rdi, eax
0000000140002e99  test       eax, eax
0000000140002e9b  jle        0x140002f08
0000000140002e9d  mov        rsi, rdi
0000000140002ea0  call       qword ptr [rip + 0xb1ba] ; KERNEL32.dll!GetProcessHeap
0000000140002ea6  mov        r8, rdi
0000000140002ea9  lea        edx, [r14 + 8]
0000000140002ead  mov        rcx, rax
0000000140002eb0  call       qword ptr [rip + 0xb19a] ; KERNEL32.dll!HeapAlloc
0000000140002eb6  mov        rbx, rax
0000000140002eb9  test       rax, rax
0000000140002ebc  je         0x140002f08
0000000140002ebe  mov        qword ptr [rsp + 0x38], r14
0000000140002ec3  lea        r9d, [r14 - 1]
0000000140002ec7  mov        qword ptr [rsp + 0x30], r14
0000000140002ecc  mov        r8, rbp
0000000140002ecf  mov        dword ptr [rsp + 0x28], edi
0000000140002ed3  mov        edx, 0x80
0000000140002ed8  mov        ecx, 0xfde9
0000000140002edd  mov        qword ptr [rsp + 0x20], rax
0000000140002ee2  call       qword ptr [rip + 0xb1d0] ; KERNEL32.dll!WideCharToMultiByte
0000000140002ee8  test       eax, eax
0000000140002eea  jne        0x140002f25
0000000140002eec  mov        rdi, rbx
0000000140002eef  mov        rcx, rsi
0000000140002ef2  rep stosb  byte ptr [rdi], al
0000000140002ef4  call       qword ptr [rip + 0xb166] ; KERNEL32.dll!GetProcessHeap
0000000140002efa  mov        r8, rbx
0000000140002efd  xor        edx, edx
0000000140002eff  mov        rcx, rax
0000000140002f02  call       qword ptr [rip + 0xb150] ; KERNEL32.dll!HeapFree
0000000140002f08  xor        eax, eax
0000000140002f0a  mov        rbx, qword ptr [rsp + 0x50]
0000000140002f0f  mov        rbp, qword ptr [rsp + 0x58]
0000000140002f14  mov        rsi, qword ptr [rsp + 0x60]
0000000140002f19  mov        rdi, qword ptr [rsp + 0x68]
0000000140002f1e  add        rsp, 0x40
0000000140002f22  pop        r14
0000000140002f24  ret        
0000000140002f25  mov        rax, rbx
0000000140002f28  jmp        0x140002f0a
0000000140002f2a  int3       
0000000140002f2b  int3       
0000000140002f2c  int3       
0000000140002f2d  int3       
0000000140002f2e  int3       
0000000140002f2f  int3       
0000000140002f30  mov        qword ptr [rsp + 8], rbx
0000000140002f35  mov        qword ptr [rsp + 0x18], rbp
0000000140002f3a  mov        qword ptr [rsp + 0x20], rsi
0000000140002f3f  push       rdi
0000000140002f40  push       r12
0000000140002f42  push       r13
0000000140002f44  push       r14
0000000140002f46  push       r15
0000000140002f48  xor        ebp, ebp
0000000140002f4a  mov        r12, r8
0000000140002f4d  mov        r11, rdx
0000000140002f50  mov        r10, rcx
0000000140002f53  mov        esi, ebp
0000000140002f55  cmp        rdx, 0x40
0000000140002f59  jb         0x140003302
0000000140002f5f  cmp        r8, rdx
0000000140002f62  ja         0x140003302
0000000140002f68  lea        rbx, [rip + 0xb9dd]
0000000140002f6f  mov        byte ptr [rsp + 0x38], sil
0000000140002f74  mov        r8, rcx
0000000140002f77  mov        r9d, ebp
0000000140002f7a  sub        r8, rbx
0000000140002f7d  nop        dword ptr [rax]
0000000140002f80  lea        rcx, [r9 + rbx]
0000000140002f84  inc        r9
0000000140002f87  movzx      eax, byte ptr [rcx + r8]
0000000140002f8c  movzx      ecx, byte ptr [rcx]
0000000140002f8f  xor        ecx, eax
0000000140002f91  movzx      eax, byte ptr [rsp + 0x38]
0000000140002f96  or         al, cl
0000000140002f98  mov        byte ptr [rsp + 0x38], al
0000000140002f9c  cmp        r9, 2
0000000140002fa0  jb         0x140002f80
0000000140002fa2  movzx      eax, byte ptr [rsp + 0x38]
0000000140002fa7  test       al, al
0000000140002fa9  jne        0x140003302
0000000140002faf  movzx      eax, byte ptr [r10 + 0x3e]
0000000140002fb4  movzx      ecx, byte ptr [r10 + 0x3f]
0000000140002fb9  shl        ecx, 8
0000000140002fbc  or         ecx, eax
0000000140002fbe  movzx      eax, byte ptr [r10 + 0x3d]
0000000140002fc3  shl        ecx, 8
0000000140002fc6  or         ecx, eax
0000000140002fc8  movzx      eax, byte ptr [r10 + 0x3c]
0000000140002fcd  shl        ecx, 8
0000000140002fd0  or         ecx, eax
0000000140002fd2  cmp        ecx, 0x40
0000000140002fd5  jb         0x140003302
0000000140002fdb  mov        ebx, ecx
0000000140002fdd  lea        rax, [rdx - 0x18]
0000000140002fe1  cmp        rbx, rax
0000000140002fe4  ja         0x140003302
0000000140002fea  lea        rdi, [rip + 0xb95f]
0000000140002ff1  mov        byte ptr [rsp + 0x38], sil
0000000140002ff6  mov        r9d, ebx
0000000140002ff9  mov        r8, rbp
0000000140002ffc  sub        r9, rdi
0000000140002fff  add        r9, r10
0000000140003002  nop        dword ptr [rax]
0000000140003006  nop        word ptr [rax + rax]
0000000140003010  lea        rcx, [r8 + rdi]
0000000140003014  inc        r8
0000000140003017  movzx      eax, byte ptr [rcx + r9]
000000014000301c  movzx      ecx, byte ptr [rcx]
000000014000301f  xor        ecx, eax
0000000140003021  movzx      eax, byte ptr [rsp + 0x38]
0000000140003026  or         al, cl
0000000140003028  mov        byte ptr [rsp + 0x38], al
000000014000302c  cmp        r8, 4
0000000140003030  jb         0x140003010
0000000140003032  movzx      eax, byte ptr [rsp + 0x38]
0000000140003037  test       al, al
0000000140003039  jne        0x140003302
000000014000303f  movzx      eax, byte ptr [rbx + r10 + 6]
0000000140003045  movzx      r8d, byte ptr [rbx + r10 + 7]
000000014000304b  movzx      edx, byte ptr [rbx + r10 + 0x15]
0000000140003051  movzx      ecx, byte ptr [rbx + r10 + 5]
0000000140003057  shl        r8w, 8
000000014000305c  or         r8w, ax
0000000140003060  shl        dx, 8
0000000140003064  movzx      eax, byte ptr [rbx + r10 + 0x14]
000000014000306a  or         dx, ax
000000014000306d  shl        cx, 8
0000000140003071  movzx      eax, byte ptr [rbx + r10 + 4]
0000000140003077  or         cx, ax
000000014000307a  mov        eax, 0x8664
000000014000307f  cmp        cx, ax
0000000140003082  jne        0x140003302
0000000140003088  lea        eax, [r8 - 1]
000000014000308c  cmp        ax, 0x5f
0000000140003090  ja         0x140003302
0000000140003096  cmp        dx, 0x70
000000014000309a  jb         0x140003302
00000001400030a0  movzx      eax, dx
00000001400030a3  lea        r9, [rbx + 0x18]
00000001400030a7  add        r9, rax
00000001400030aa  cmp        r9, r11
00000001400030ad  ja         0x140003302
00000001400030b3  movzx      eax, byte ptr [rbx + r10 + 0x18]
00000001400030b9  movzx      ecx, byte ptr [rbx + r10 + 0x19]
00000001400030bf  shl        cx, 8
00000001400030c3  or         cx, ax
00000001400030c6  mov        eax, 0x20b
00000001400030cb  cmp        cx, ax
00000001400030ce  jne        0x140003302
00000001400030d4  movzx      r15d, r8w
00000001400030d8  lea        rax, [r15 + r15*4]
00000001400030dc  lea        r8, [r9 + rax*8]
00000001400030e0  cmp        r8, r11
00000001400030e3  ja         0x140003302
00000001400030e9  movzx      eax, byte ptr [rbx + r10 + 0x86]
00000001400030f2  movzx      ecx, byte ptr [rbx + r10 + 0x87]
00000001400030fb  movzx      r14d, byte ptr [rbx + r10 + 0x57]
0000000140003101  shl        ecx, 8
0000000140003104  or         ecx, eax
0000000140003106  shl        r14, 8
000000014000310a  movzx      eax, byte ptr [rbx + r10 + 0x85]
0000000140003113  shl        ecx, 8
0000000140003116  or         ecx, eax
0000000140003118  movzx      eax, byte ptr [rbx + r10 + 0x84]
0000000140003121  shl        ecx, 8
0000000140003124  or         ecx, eax
0000000140003126  movzx      eax, byte ptr [rbx + r10 + 0x56]
000000014000312c  or         r14, rax
000000014000312f  movzx      eax, byte ptr [rbx + r10 + 0x55]
0000000140003135  shl        r14, 8
0000000140003139  or         r14, rax
000000014000313c  movzx      eax, byte ptr [rbx + r10 + 0x54]
0000000140003142  shl        r14, 8
0000000140003146  or         r14, rax
0000000140003149  cmp        r14, r8
000000014000314c  jb         0x140003302
0000000140003152  cmp        r14, r12
0000000140003155  ja         0x140003302
000000014000315b  movzx      eax, dx
000000014000315e  sub        eax, 0x70
0000000140003161  shr        eax, 3
0000000140003164  cmp        ecx, eax
0000000140003166  ja         0x140003302
000000014000316c  cmp        ecx, 4
000000014000316f  jbe        0x1400031e3
0000000140003171  movzx      eax, byte ptr [rbx + r10 + 0xaa]
000000014000317a  movzx      ecx, byte ptr [rbx + r10 + 0xab]
0000000140003183  shl        ecx, 8
0000000140003186  or         ecx, eax
0000000140003188  movzx      eax, byte ptr [rbx + r10 + 0xa9]
0000000140003191  shl        ecx, 8
0000000140003194  or         ecx, eax
0000000140003196  movzx      eax, byte ptr [rbx + r10 + 0xa8]
000000014000319f  shl        ecx, 8
00000001400031a2  or         ecx, eax
00000001400031a4  jne        0x140003302
00000001400031aa  movzx      eax, byte ptr [rbx + r10 + 0xae]
00000001400031b3  movzx      ecx, byte ptr [rbx + r10 + 0xaf]
00000001400031bc  shl        ecx, 8
00000001400031bf  or         ecx, eax
00000001400031c1  movzx      eax, byte ptr [rbx + r10 + 0xad]
00000001400031ca  shl        ecx, 8
00000001400031cd  or         ecx, eax
00000001400031cf  movzx      eax, byte ptr [rbx + r10 + 0xac]
00000001400031d8  shl        ecx, 8
00000001400031db  or         ecx, eax
00000001400031dd  jne        0x140003302
00000001400031e3  mov        r11, rbp
00000001400031e6  test       r15, r15
00000001400031e9  je         0x1400032ef
00000001400031ef  lea        r13, [r9 + r10]
00000001400031f3  lea        rdi, [r13 + 0x13]
00000001400031f7  nop        word ptr [rax + rax]
0000000140003200  movzx      eax, byte ptr [rdi + 3]
0000000140003204  movzx      r10d, byte ptr [rdi + 4]
0000000140003209  movzx      ecx, byte ptr [rdi - 1]
000000014000320d  shl        r10, 8
0000000140003211  or         r10, rax
0000000140003214  movzx      eax, byte ptr [rdi + 2]
0000000140003218  shl        r10, 8
000000014000321c  or         r10, rax
000000014000321f  movzx      eax, byte ptr [rdi + 1]
0000000140003223  shl        r10, 8
0000000140003227  or         r10, rax
000000014000322a  movzx      eax, byte ptr [rdi]
000000014000322d  shl        rax, 8
0000000140003231  or         rcx, rax
0000000140003234  movzx      eax, byte ptr [rdi - 2]
0000000140003238  shl        rcx, 8
000000014000323c  or         rcx, rax
000000014000323f  movzx      eax, byte ptr [rdi - 3]
0000000140003243  shl        rcx, 8
0000000140003247  or         rcx, rax
000000014000324a  je         0x1400032df
0000000140003250  cmp        r10, r14
0000000140003253  jb         0x140003302
0000000140003259  lea        rbx, [rcx + r10]
000000014000325d  cmp        rbx, r12
0000000140003260  ja         0x140003302
0000000140003266  mov        r9, rbp
0000000140003269  test       r11, r11
000000014000326c  je         0x1400032d8
000000014000326e  lea        rdx, [r13 + 0x13]
0000000140003272  movzx      ecx, byte ptr [rdx + 3]
0000000140003276  movzx      eax, byte ptr [rdx + 4]
000000014000327a  movzx      r8d, byte ptr [rdx - 1]
000000014000327f  shl        rax, 8
0000000140003283  or         rax, rcx
0000000140003286  movzx      ecx, byte ptr [rdx + 2]
000000014000328a  shl        rax, 8
000000014000328e  or         rax, rcx
0000000140003291  movzx      ecx, byte ptr [rdx + 1]
0000000140003295  shl        rax, 8
0000000140003299  or         rax, rcx
000000014000329c  movzx      ecx, byte ptr [rdx]
000000014000329f  shl        rcx, 8
00000001400032a3  or         r8, rcx
00000001400032a6  movzx      ecx, byte ptr [rdx - 2]
00000001400032aa  shl        r8, 8
00000001400032ae  or         r8, rcx
00000001400032b1  movzx      ecx, byte ptr [rdx - 3]
00000001400032b5  shl        r8, 8
00000001400032b9  or         r8, rcx
00000001400032bc  je         0x1400032cc
00000001400032be  lea        rcx, [r8 + rax]
00000001400032c2  cmp        r10, rcx
00000001400032c5  jae        0x1400032cc
00000001400032c7  cmp        rax, rbx
00000001400032ca  jb         0x140003302
00000001400032cc  inc        r9
00000001400032cf  add        rdx, 0x28
00000001400032d3  cmp        r9, r11
00000001400032d6  jb         0x140003272
00000001400032d8  cmp        rbx, rsi
00000001400032db  cmova      rsi, rbx
00000001400032df  inc        r11
00000001400032e2  add        rdi, 0x28
00000001400032e6  cmp        r11, r15
00000001400032e9  jb         0x140003200
00000001400032ef  cmp        rsi, r12
00000001400032f2  jne        0x1400032fe
00000001400032f4  cmp        rsi, r14
00000001400032f7  jbe        0x1400032fe
00000001400032f9  mov        ebp, 1
00000001400032fe  mov        eax, ebp
0000000140003300  jmp        0x140003304
0000000140003302  xor        eax, eax
0000000140003304  mov        rbx, qword ptr [rsp + 0x30]
0000000140003309  mov        rbp, qword ptr [rsp + 0x40]
000000014000330e  mov        rsi, qword ptr [rsp + 0x48]
0000000140003313  pop        r15
0000000140003315  pop        r14
0000000140003317  pop        r13
0000000140003319  pop        r12
000000014000331b  pop        rdi
000000014000331c  ret        
000000014000331d  int3       
000000014000331e  int3       
000000014000331f  int3       
0000000140003320  sub        rsp, 0x48
0000000140003324  lea        rcx, [rsp + 0x30]
0000000140003329  mov        dword ptr [rsp + 0x30], 1
0000000140003331  call       0x1400014e0
0000000140003336  test       eax, eax
0000000140003338  je         0x140003343
000000014000333a  mov        eax, dword ptr [rsp + 0x30]
000000014000333e  add        rsp, 0x48
0000000140003342  ret        
0000000140003343  mov        qword ptr [rsp + 0x50], rbx
0000000140003348  mov        ecx, 0xfffffff4
000000014000334d  mov        qword ptr [rsp + 0x58], rsi
0000000140003352  mov        qword ptr [rsp + 0x40], rdi
0000000140003357  call       qword ptr [rip + 0xaca3] ; KERNEL32.dll!GetStdHandle
000000014000335d  mov        rcx, qword ptr [rip + 0x15d04]
0000000140003364  mov        rdi, rax
0000000140003367  call       0x140002e50
000000014000336c  lea        rcx, [rdi - 1]
0000000140003370  mov        rsi, rax
0000000140003373  mov        rbx, 0xffffffffffffffff
000000014000337a  cmp        rcx, -3
000000014000337e  ja         0x1400033de
0000000140003380  test       rax, rax
0000000140003383  je         0x1400033de
0000000140003385  mov        r8, rbx
0000000140003388  nop        dword ptr [rax + rax]
0000000140003390  inc        r8
0000000140003393  cmp        byte ptr [rax + r8], 0
0000000140003398  jne        0x140003390
000000014000339a  lea        r9, [rsp + 0x34]
000000014000339f  mov        qword ptr [rsp + 0x20], 0
00000001400033a8  mov        rdx, rsi
00000001400033ab  mov        rcx, rdi
00000001400033ae  call       qword ptr [rip + 0xac8c] ; KERNEL32.dll!WriteFile
00000001400033b4  test       eax, eax
00000001400033b6  je         0x1400033de
00000001400033b8  lea        r9, [rsp + 0x34]
00000001400033bd  mov        qword ptr [rsp + 0x20], 0
00000001400033c6  mov        r8d, 2
00000001400033cc  lea        rdx, [rip + 0xbfe1]
00000001400033d3  mov        rcx, rdi
00000001400033d6  call       qword ptr [rip + 0xac64] ; KERNEL32.dll!WriteFile
00000001400033dc  jmp        0x140003400
00000001400033de  mov        rdx, qword ptr [rip + 0x15c83]
00000001400033e5  lea        r8, [rip + 0xbfcc] ; Slotbound
00000001400033ec  mov        r9d, 0x10
00000001400033f2  xor        ecx, ecx
00000001400033f4  call       qword ptr [rip + 0xae76] ; USER32.dll!MessageBoxW
00000001400033fa  test       rsi, rsi
00000001400033fd  je         0x14000342a
00000001400033ff  nop        
0000000140003400  cmp        byte ptr [rsi + rbx + 1], 0
0000000140003405  lea        rbx, [rbx + 1]
0000000140003409  jne        0x140003400
000000014000340b  xor        eax, eax
000000014000340d  lea        rcx, [rbx + 1]
0000000140003411  mov        rdi, rsi
0000000140003414  rep stosb  byte ptr [rdi], al
0000000140003416  call       qword ptr [rip + 0xac44] ; KERNEL32.dll!GetProcessHeap
000000014000341c  mov        r8, rsi
000000014000341f  xor        edx, edx
0000000140003421  mov        rcx, rax
0000000140003424  call       qword ptr [rip + 0xac2e] ; KERNEL32.dll!HeapFree
000000014000342a  mov        rdi, qword ptr [rsp + 0x40]
000000014000342f  mov        eax, 1
0000000140003434  mov        rsi, qword ptr [rsp + 0x58]
0000000140003439  mov        rbx, qword ptr [rsp + 0x50]
000000014000343e  add        rsp, 0x48
0000000140003442  ret        
0000000140003443  int3       
0000000140003444  push       rbx
0000000140003446  sub        rsp, 0x20
000000014000344a  mov        rbx, rcx
000000014000344d  xor        ecx, ecx
000000014000344f  call       qword ptr [rip + 0xac93] ; KERNEL32.dll!SetUnhandledExceptionFilter
0000000140003455  mov        rcx, rbx
0000000140003458  call       qword ptr [rip + 0xac82] ; KERNEL32.dll!UnhandledExceptionFilter
000000014000345e  call       qword ptr [rip + 0xac8c] ; KERNEL32.dll!GetCurrentProcess
0000000140003464  mov        rcx, rax
0000000140003467  mov        edx, 0xc0000409
000000014000346c  add        rsp, 0x20
0000000140003470  pop        rbx
0000000140003471  jmp        qword ptr [rip + 0xac80] ; KERNEL32.dll!TerminateProcess
0000000140003478  int3       
0000000140003479  int3       
000000014000347a  int3       
000000014000347b  int3       
000000014000347c  int3       
000000014000347d  int3       
000000014000347e  int3       
000000014000347f  int3       
0000000140003480  mov        qword ptr [rsp + 8], rcx
0000000140003485  sub        rsp, 0x38
0000000140003489  mov        ecx, 0x17
000000014000348e  call       qword ptr [rip + 0xac6c] ; KERNEL32.dll!IsProcessorFeaturePresent
0000000140003494  test       eax, eax
0000000140003496  je         0x14000349f
0000000140003498  mov        ecx, 2
000000014000349d  int        0x29
000000014000349f  lea        rcx, [rip + 0x167ba]
00000001400034a6  call       0x140003674 ; @SVWH
00000001400034ab  mov        rax, qword ptr [rsp + 0x38]
00000001400034b0  mov        qword ptr [rip + 0x168a1], rax
00000001400034b7  lea        rax, [rsp + 0x38]
00000001400034bc  add        rax, 8
00000001400034c0  mov        qword ptr [rip + 0x16831], rax
00000001400034c7  mov        rax, qword ptr [rip + 0x1688a]
00000001400034ce  mov        qword ptr [rip + 0x166fb], rax
00000001400034d5  mov        rax, qword ptr [rsp + 0x40]
00000001400034da  mov        qword ptr [rip + 0x167ff], rax
00000001400034e1  mov        dword ptr [rip + 0x166d5], 0xc0000409
00000001400034eb  mov        dword ptr [rip + 0x166cf], 1
00000001400034f5  mov        dword ptr [rip + 0x166d9], 1
00000001400034ff  mov        eax, 8
0000000140003504  imul       rax, rax, 0
0000000140003508  lea        rcx, [rip + 0x166d1]
000000014000350f  mov        qword ptr [rcx + rax], 2
0000000140003517  mov        eax, 8
000000014000351c  imul       rax, rax, 0
0000000140003520  mov        rcx, qword ptr [rip + 0x15ba1]
0000000140003527  mov        qword ptr [rsp + rax + 0x20], rcx
000000014000352c  mov        eax, 8
0000000140003531  imul       rax, rax, 1
0000000140003535  mov        rcx, qword ptr [rip + 0x15b84]
000000014000353c  mov        qword ptr [rsp + rax + 0x20], rcx
0000000140003541  lea        rcx, [rip + 0xbe90]
0000000140003548  call       0x140003444
000000014000354d  add        rsp, 0x38
0000000140003551  ret        
0000000140003552  int3       
0000000140003553  int3       
0000000140003554  sub        rsp, 0x28
0000000140003558  mov        ecx, 8
000000014000355d  call       0x140003568
0000000140003562  add        rsp, 0x28
0000000140003566  ret        
0000000140003567  int3       
0000000140003568  mov        dword ptr [rsp + 8], ecx
000000014000356c  sub        rsp, 0x28
0000000140003570  mov        ecx, 0x17
0000000140003575  call       qword ptr [rip + 0xab85] ; KERNEL32.dll!IsProcessorFeaturePresent
000000014000357b  test       eax, eax
000000014000357d  je         0x140003587
000000014000357f  mov        eax, dword ptr [rsp + 0x30]
0000000140003583  mov        ecx, eax
0000000140003585  int        0x29
0000000140003587  lea        rcx, [rip + 0x166d2]
000000014000358e  call       0x140003604
0000000140003593  mov        rax, qword ptr [rsp + 0x28]
0000000140003598  mov        qword ptr [rip + 0x167b9], rax
000000014000359f  lea        rax, [rsp + 0x28]
00000001400035a4  add        rax, 8
00000001400035a8  mov        qword ptr [rip + 0x16749], rax
00000001400035af  mov        rax, qword ptr [rip + 0x167a2]
00000001400035b6  mov        qword ptr [rip + 0x16613], rax
00000001400035bd  mov        dword ptr [rip + 0x165f9], 0xc0000409
00000001400035c7  mov        dword ptr [rip + 0x165f3], 1
00000001400035d1  mov        dword ptr [rip + 0x165fd], 1
00000001400035db  mov        eax, 8
00000001400035e0  imul       rax, rax, 0
00000001400035e4  lea        rcx, [rip + 0x165f5]
00000001400035eb  mov        edx, dword ptr [rsp + 0x30]
00000001400035ef  mov        qword ptr [rcx + rax], rdx
00000001400035f3  lea        rcx, [rip + 0xbdde]
00000001400035fa  call       0x140003444
00000001400035ff  add        rsp, 0x28
0000000140003603  ret        
0000000140003604  mov        qword ptr [rsp + 0x20], rbx
0000000140003609  push       rdi
000000014000360a  sub        rsp, 0x40
000000014000360e  mov        rbx, rcx
0000000140003611  call       qword ptr [rip + 0xaab1] ; KERNEL32.dll!RtlCaptureContext
0000000140003617  mov        rdi, qword ptr [rbx + 0xf8]
000000014000361e  lea        rdx, [rsp + 0x50]
0000000140003623  mov        rcx, rdi
0000000140003626  xor        r8d, r8d
0000000140003629  call       qword ptr [rip + 0xaaa1] ; KERNEL32.dll!RtlLookupFunctionEntry
000000014000362f  test       rax, rax
0000000140003632  je         0x140003666
0000000140003634  and        qword ptr [rsp + 0x38], 0
000000014000363a  lea        rcx, [rsp + 0x58]
000000014000363f  mov        rdx, qword ptr [rsp + 0x50]
0000000140003644  mov        r9, rax
0000000140003647  mov        qword ptr [rsp + 0x30], rcx
000000014000364c  mov        r8, rdi
000000014000364f  lea        rcx, [rsp + 0x60]
0000000140003654  mov        qword ptr [rsp + 0x28], rcx
0000000140003659  xor        ecx, ecx
000000014000365b  mov        qword ptr [rsp + 0x20], rbx
0000000140003660  call       qword ptr [rip + 0xaa72] ; KERNEL32.dll!RtlVirtualUnwind
0000000140003666  mov        rbx, qword ptr [rsp + 0x68]
000000014000366b  add        rsp, 0x40
000000014000366f  pop        rdi
0000000140003670  ret        
0000000140003671  int3       
0000000140003672  int3       
0000000140003673  int3       
0000000140003674  push       rbx
0000000140003676  push       rsi
0000000140003677  push       rdi
0000000140003678  sub        rsp, 0x40
000000014000367c  mov        rbx, rcx
000000014000367f  call       qword ptr [rip + 0xaa43] ; KERNEL32.dll!RtlCaptureContext
0000000140003685  mov        rsi, qword ptr [rbx + 0xf8]
000000014000368c  xor        edi, edi
000000014000368e  xor        r8d, r8d
0000000140003691  lea        rdx, [rsp + 0x60]
0000000140003696  mov        rcx, rsi
0000000140003699  call       qword ptr [rip + 0xaa31] ; KERNEL32.dll!RtlLookupFunctionEntry
000000014000369f  test       rax, rax
00000001400036a2  je         0x1400036dd
00000001400036a4  and        qword ptr [rsp + 0x38], 0
00000001400036aa  lea        rcx, [rsp + 0x68]
00000001400036af  mov        rdx, qword ptr [rsp + 0x60]
00000001400036b4  mov        r9, rax
00000001400036b7  mov        qword ptr [rsp + 0x30], rcx
00000001400036bc  mov        r8, rsi
00000001400036bf  lea        rcx, [rsp + 0x70]
00000001400036c4  mov        qword ptr [rsp + 0x28], rcx
00000001400036c9  xor        ecx, ecx
00000001400036cb  mov        qword ptr [rsp + 0x20], rbx
00000001400036d0  call       qword ptr [rip + 0xaa02] ; KERNEL32.dll!RtlVirtualUnwind
00000001400036d6  inc        edi
00000001400036d8  cmp        edi, 2
00000001400036db  jl         0x14000368e
00000001400036dd  add        rsp, 0x40
00000001400036e1  pop        rdi
00000001400036e2  pop        rsi
00000001400036e3  pop        rbx
00000001400036e4  ret        
00000001400036e5  int3       
00000001400036e6  int3       
00000001400036e7  int3       
00000001400036e8  sub        rsp, 0x28
00000001400036ec  mov        r8, qword ptr [r9 + 0x38]
00000001400036f0  mov        rcx, rdx
00000001400036f3  mov        rdx, r9
00000001400036f6  call       0x140003708
00000001400036fb  mov        eax, 1
0000000140003700  add        rsp, 0x28
0000000140003704  ret        
0000000140003705  int3       
0000000140003706  int3       
0000000140003707  int3       
0000000140003708  push       rbx
000000014000370a  mov        r11d, dword ptr [r8]
000000014000370d  mov        rbx, rdx
0000000140003710  and        r11d, 0xfffffff8
0000000140003714  mov        r9, rcx
0000000140003717  test       byte ptr [r8], 4
000000014000371b  mov        r10, rcx
000000014000371e  je         0x140003733
0000000140003720  mov        eax, dword ptr [r8 + 8]
0000000140003724  movsxd     r10, dword ptr [r8 + 4]
0000000140003728  neg        eax
000000014000372a  add        r10, rcx
000000014000372d  movsxd     rcx, eax
0000000140003730  and        r10, rcx
0000000140003733  movsxd     rax, r11d
0000000140003736  mov        rdx, qword ptr [rax + r10]
000000014000373a  mov        rax, qword ptr [rbx + 0x10]
000000014000373e  mov        ecx, dword ptr [rax + 8]
0000000140003741  mov        rax, qword ptr [rbx + 8]
0000000140003745  test       byte ptr [rcx + rax + 3], 0xf
000000014000374a  je         0x140003757
000000014000374c  movzx      eax, byte ptr [rcx + rax + 3]
0000000140003751  and        eax, 0xfffffff0
0000000140003754  add        r9, rax
0000000140003757  xor        r9, rdx
000000014000375a  mov        rcx, r9
000000014000375d  pop        rbx
000000014000375e  jmp        0x1400037e0
0000000140003763  int3       
0000000140003764  int3       
0000000140003765  int3       
0000000140003766  int3       
0000000140003767  int3       
0000000140003768  int3       
0000000140003769  int3       
000000014000376a  int3       
000000014000376b  int3       
000000014000376c  int3       
000000014000376d  int3       
000000014000376e  int3       
000000014000376f  int3       
0000000140003770  int3       
0000000140003771  int3       
0000000140003772  int3       
0000000140003773  int3       
0000000140003774  int3       
0000000140003775  int3       
0000000140003776  nop        word ptr [rax + rax]
0000000140003780  sub        rsp, 0x10
0000000140003784  mov        qword ptr [rsp], r10
0000000140003788  mov        qword ptr [rsp + 8], r11
000000014000378d  xor        r11, r11
0000000140003790  lea        r10, [rsp + 0x18]
0000000140003795  sub        r10, rax
0000000140003798  cmovb      r10, r11
000000014000379c  mov        r11, qword ptr gs:[0x10]
00000001400037a5  cmp        r10, r11
00000001400037a8  jae        0x1400037c0
00000001400037aa  and        r10w, 0xf000
00000001400037b0  lea        r11, [r11 - 0x1000]
00000001400037b7  mov        byte ptr [r11], 0
00000001400037bb  cmp        r10, r11
00000001400037be  jne        0x1400037b0
00000001400037c0  mov        r10, qword ptr [rsp]
00000001400037c4  mov        r11, qword ptr [rsp + 8]
00000001400037c9  add        rsp, 0x10
00000001400037cd  ret        
00000001400037ce  int3       
00000001400037cf  int3       
00000001400037d0  int3       
00000001400037d1  int3       
00000001400037d2  int3       
00000001400037d3  int3       
00000001400037d4  int3       
00000001400037d5  int3       
00000001400037d6  nop        word ptr [rax + rax]
00000001400037e0  cmp        rcx, qword ptr [rip + 0x158e1]
00000001400037e7  jne        0x1400037f9
00000001400037e9  rol        rcx, 0x10
00000001400037ed  test       cx, 0xffff
00000001400037f2  jne        0x1400037f5
00000001400037f4  ret        
00000001400037f5  ror        rcx, 0x10
00000001400037f9  jmp        0x140003480
00000001400037fe  int3       
00000001400037ff  int3       
0000000140003800  ret        0
0000000140003803  int3       
0000000140003804  int3       
0000000140003805  int3       
0000000140003806  int3       
0000000140003807  int3       
0000000140003808  int3       
0000000140003809  int3       
000000014000380a  int3       
000000014000380b  int3       
000000014000380c  int3       
000000014000380d  int3       
000000014000380e  int3       
000000014000380f  int3       
0000000140003810  push       rbx
0000000140003812  sub        rsp, 0x20
0000000140003816  mov        ecx, 2
000000014000381b  call       0x14000584c
0000000140003820  call       0x140003d9c
0000000140003825  mov        ecx, eax
0000000140003827  call       0x140006270
000000014000382c  call       0x140003d90
0000000140003831  mov        ebx, eax
0000000140003833  call       0x140006400
0000000140003838  mov        ecx, 1
000000014000383d  mov        dword ptr [rax], ebx
000000014000383f  call       0x140003b18
0000000140003844  test       al, al
0000000140003846  je         0x1400038bb
0000000140003848  call       0x14000406c
000000014000384d  lea        rcx, [rip + 0x85c]
0000000140003854  call       0x140003cc8
0000000140003859  call       0x140003d94
000000014000385e  mov        ecx, eax
0000000140003860  call       0x140005ad4
0000000140003865  test       eax, eax
0000000140003867  jne        0x1400038bb
0000000140003869  call       0x140003da4
000000014000386e  call       0x140003df0
0000000140003873  test       eax, eax
0000000140003875  je         0x140003883
0000000140003877  lea        rcx, [rip + 0x512]
000000014000387e  call       0x1400058ac
0000000140003883  call       0x140003800
0000000140003888  call       0x140003800
000000014000388d  call       0x140003d90
0000000140003892  mov        ecx, eax
0000000140003894  call       0x140006360
0000000140003899  call       0x140003dc0
000000014000389e  test       al, al
00000001400038a0  je         0x1400038a7
00000001400038a2  call       0x140005e88
00000001400038a7  call       0x140003d90
00000001400038ac  call       0x140003f9c
00000001400038b1  test       eax, eax
00000001400038b3  jne        0x1400038bb
00000001400038b5  add        rsp, 0x20
00000001400038b9  pop        rbx
00000001400038ba  ret        
00000001400038bb  mov        ecx, 7
00000001400038c0  call       0x140003e14
00000001400038c5  int3       
00000001400038c6  int3       
00000001400038c7  int3       
00000001400038c8  int3       
00000001400038c9  int3       
00000001400038ca  int3       
00000001400038cb  int3       
00000001400038cc  int3       
00000001400038cd  int3       
00000001400038ce  int3       
00000001400038cf  int3       
00000001400038d0  sub        rsp, 0x28
00000001400038d4  call       0x140003dd4
00000001400038d9  xor        eax, eax
00000001400038db  add        rsp, 0x28
00000001400038df  ret        
00000001400038e0  sub        rsp, 0x28
00000001400038e4  call       0x140003ff8
00000001400038e9  call       0x140003d90
00000001400038ee  mov        ecx, eax
00000001400038f0  add        rsp, 0x28
00000001400038f4  jmp        0x1400063d4
00000001400038f9  int3       
00000001400038fa  int3       
00000001400038fb  int3       
00000001400038fc  mov        qword ptr [rsp + 8], rbx
0000000140003901  push       rdi
0000000140003902  sub        rsp, 0x30
0000000140003906  mov        ecx, 1
000000014000390b  call       0x140003acc
0000000140003910  test       al, al
0000000140003912  je         0x140003a48
0000000140003918  xor        dil, dil
000000014000391b  mov        byte ptr [rsp + 0x20], dil
0000000140003920  call       0x140003a90
0000000140003925  mov        bl, al
0000000140003927  mov        ecx, dword ptr [rip + 0x1680b]
000000014000392d  cmp        ecx, 1
0000000140003930  je         0x140003a53
0000000140003936  test       ecx, ecx
0000000140003938  jne        0x140003984
000000014000393a  mov        dword ptr [rip + 0x167f4], 1
0000000140003944  lea        rdx, [rip + 0xa9ad]
000000014000394b  lea        rcx, [rip + 0xa96e]
0000000140003952  call       0x140005f48
0000000140003957  test       eax, eax
0000000140003959  je         0x140003965
000000014000395b  mov        eax, 0xff
0000000140003960  jmp        0x140003a3d
0000000140003965  lea        rdx, [rip + 0xa94c]
000000014000396c  lea        rcx, [rip + 0xa935]
0000000140003973  call       0x140005ee4
0000000140003978  mov        dword ptr [rip + 0x167b6], 2
0000000140003982  jmp        0x14000398c
0000000140003984  mov        dil, 1
0000000140003987  mov        byte ptr [rsp + 0x20], dil
000000014000398c  mov        cl, bl
000000014000398e  call       0x140003c3c
0000000140003993  call       0x140003dfc
0000000140003998  mov        rbx, rax
000000014000399b  cmp        qword ptr [rax], 0
000000014000399f  je         0x1400039bf
00000001400039a1  mov        rcx, rax
00000001400039a4  call       0x140003ba4
00000001400039a9  test       al, al
00000001400039ab  je         0x1400039bf
00000001400039ad  xor        r8d, r8d
00000001400039b0  lea        edx, [r8 + 2]
00000001400039b4  xor        ecx, ecx
00000001400039b6  mov        rax, qword ptr [rbx]
00000001400039b9  call       qword ptr [rip + 0xa8d1]
00000001400039bf  call       0x140003e04
00000001400039c4  mov        rbx, rax
00000001400039c7  cmp        qword ptr [rax], 0
00000001400039cb  je         0x1400039e1
00000001400039cd  mov        rcx, rax
00000001400039d0  call       0x140003ba4
00000001400039d5  test       al, al
00000001400039d7  je         0x1400039e1
00000001400039d9  mov        rcx, qword ptr [rbx]
00000001400039dc  call       0x140006228
00000001400039e1  call       0x140003f60
00000001400039e6  movzx      ebx, ax
00000001400039e9  call       0x140005e90
00000001400039ee  mov        r9d, ebx
00000001400039f1  mov        r8, rax
00000001400039f4  xor        edx, edx
00000001400039f6  lea        rcx, [rip - 0x39fd]
00000001400039fd  call       0x140003320
0000000140003a02  mov        ebx, eax
0000000140003a04  call       0x140003fa4
0000000140003a09  test       al, al
0000000140003a0b  je         0x140003a5d
0000000140003a0d  test       dil, dil
0000000140003a10  jne        0x140003a17
0000000140003a12  call       0x14000620c
0000000140003a17  xor        edx, edx
0000000140003a19  mov        cl, 1
0000000140003a1b  call       0x140003c60
0000000140003a20  mov        eax, ebx
0000000140003a22  jmp        0x140003a3d
0000000140003a24  mov        ebx, eax
0000000140003a26  call       0x140003fa4
0000000140003a2b  test       al, al
0000000140003a2d  je         0x140003a65
0000000140003a2f  cmp        byte ptr [rsp + 0x20], 0
0000000140003a34  jne        0x140003a3b
0000000140003a36  call       0x1400061fc
0000000140003a3b  mov        eax, ebx
0000000140003a3d  mov        rbx, qword ptr [rsp + 0x40]
0000000140003a42  add        rsp, 0x30
0000000140003a46  pop        rdi
0000000140003a47  ret        
0000000140003a48  mov        ecx, 7
0000000140003a4d  call       0x140003e14
0000000140003a52  nop        
0000000140003a53  mov        ecx, 7
0000000140003a58  call       0x140003e14
0000000140003a5d  mov        ecx, ebx
0000000140003a5f  call       0x140006264
0000000140003a64  nop        
0000000140003a65  mov        ecx, ebx
0000000140003a67  call       0x14000621c
0000000140003a6c  nop        
0000000140003a6d  int3       
0000000140003a6e  int3       
0000000140003a6f  int3       
0000000140003a70  sub        rsp, 0x28
0000000140003a74  call       0x140003ce0
0000000140003a79  add        rsp, 0x28
0000000140003a7d  jmp        0x1400038fc
0000000140003a82  int3       
0000000140003a83  int3       
0000000140003a84  int3       
0000000140003a85  int3       
0000000140003a86  int3       
0000000140003a87  int3       
0000000140003a88  int3       
0000000140003a89  int3       
0000000140003a8a  int3       
0000000140003a8b  int3       
0000000140003a8c  int3       
0000000140003a8d  int3       
0000000140003a8e  int3       
0000000140003a8f  int3       
0000000140003a90  sub        rsp, 0x28
0000000140003a94  call       0x140004290
0000000140003a99  test       eax, eax
0000000140003a9b  je         0x140003abe
0000000140003a9d  mov        rax, qword ptr gs:[0x30]
0000000140003aa6  mov        rcx, qword ptr [rax + 8]
0000000140003aaa  jmp        0x140003ab1
0000000140003aac  cmp        rcx, rax
0000000140003aaf  je         0x140003ac5
0000000140003ab1  xor        eax, eax
0000000140003ab3  lock cmpxchg qword ptr [rip + 0x16684], rcx
0000000140003abc  jne        0x140003aac
0000000140003abe  xor        al, al
0000000140003ac0  add        rsp, 0x28
0000000140003ac4  ret        
0000000140003ac5  mov        al, 1
0000000140003ac7  jmp        0x140003ac0
0000000140003ac9  int3       
0000000140003aca  int3       
0000000140003acb  int3       
0000000140003acc  push       rbx
0000000140003ace  sub        rsp, 0x20
0000000140003ad2  movzx      eax, byte ptr [rip + 0x1666f]
0000000140003ad9  test       ecx, ecx
0000000140003adb  mov        ebx, 1
0000000140003ae0  cmove      eax, ebx
0000000140003ae3  mov        byte ptr [rip + 0x1665f], al
0000000140003ae9  call       0x1400040ec
0000000140003aee  call       0x140004b54
0000000140003af3  test       al, al
0000000140003af5  jne        0x140003afb
0000000140003af7  xor        al, al
0000000140003af9  jmp        0x140003b0f
0000000140003afb  call       0x14000695c
0000000140003b00  test       al, al
0000000140003b02  jne        0x140003b0d
0000000140003b04  xor        ecx, ecx
0000000140003b06  call       0x140004b7c
0000000140003b0b  jmp        0x140003af7
0000000140003b0d  mov        al, bl
0000000140003b0f  add        rsp, 0x20
0000000140003b13  pop        rbx
0000000140003b14  ret        
0000000140003b15  int3       
0000000140003b16  int3       
0000000140003b17  int3       
0000000140003b18  push       rbx
0000000140003b1a  sub        rsp, 0x20
0000000140003b1e  cmp        byte ptr [rip + 0x16624], 0
0000000140003b25  mov        ebx, ecx
0000000140003b27  jne        0x140003b90
0000000140003b29  cmp        ecx, 1
0000000140003b2c  ja         0x140003b98
0000000140003b2e  call       0x140004290
0000000140003b33  test       eax, eax
0000000140003b35  je         0x140003b5f
0000000140003b37  test       ebx, ebx
0000000140003b39  jne        0x140003b5f
0000000140003b3b  lea        rcx, [rip + 0x1660e]
0000000140003b42  call       0x140006794
0000000140003b47  test       eax, eax
0000000140003b49  jne        0x140003b5b
0000000140003b4b  lea        rcx, [rip + 0x16616]
0000000140003b52  call       0x140006794
0000000140003b57  test       eax, eax
0000000140003b59  je         0x140003b89
0000000140003b5b  xor        al, al
0000000140003b5d  jmp        0x140003b92
0000000140003b5f  movdqa     xmm0, xmmword ptr [rip + 0xb889]
0000000140003b67  or         rax, 0xffffffffffffffff
0000000140003b6b  movdqu     xmmword ptr [rip + 0x165dd], xmm0
0000000140003b73  mov        qword ptr [rip + 0x165e6], rax
0000000140003b7a  movdqu     xmmword ptr [rip + 0x165e6], xmm0
0000000140003b82  mov        qword ptr [rip + 0x165ef], rax
0000000140003b89  mov        byte ptr [rip + 0x165b9], 1
0000000140003b90  mov        al, 1
0000000140003b92  add        rsp, 0x20
0000000140003b96  pop        rbx
0000000140003b97  ret        
0000000140003b98  mov        ecx, 5
0000000140003b9d  call       0x140003e14
0000000140003ba2  int3       
0000000140003ba3  int3       
0000000140003ba4  sub        rsp, 0x18
0000000140003ba8  mov        r8, rcx
0000000140003bab  mov        eax, 0x5a4d
0000000140003bb0  cmp        word ptr [rip - 0x3bb7], ax
0000000140003bb7  jne        0x140003c31
0000000140003bb9  movsxd     rcx, dword ptr [rip - 0x3b84]
0000000140003bc0  lea        rdx, [rip - 0x3bc7]
0000000140003bc7  add        rcx, rdx
0000000140003bca  cmp        dword ptr [rcx], 0x4550
0000000140003bd0  jne        0x140003c31
0000000140003bd2  mov        eax, 0x20b
0000000140003bd7  cmp        word ptr [rcx + 0x18], ax
0000000140003bdb  jne        0x140003c31
0000000140003bdd  sub        r8, rdx
0000000140003be0  movzx      eax, word ptr [rcx + 0x14]
0000000140003be4  lea        rdx, [rcx + 0x18]
0000000140003be8  add        rdx, rax
0000000140003beb  movzx      eax, word ptr [rcx + 6]
0000000140003bef  lea        rcx, [rax + rax*4]
0000000140003bf3  lea        r9, [rdx + rcx*8]
0000000140003bf7  mov        qword ptr [rsp], rdx
0000000140003bfb  cmp        rdx, r9
0000000140003bfe  je         0x140003c18
0000000140003c00  mov        ecx, dword ptr [rdx + 0xc]
0000000140003c03  cmp        r8, rcx
0000000140003c06  jb         0x140003c12
0000000140003c08  mov        eax, dword ptr [rdx + 8]
0000000140003c0b  add        eax, ecx
0000000140003c0d  cmp        r8, rax
0000000140003c10  jb         0x140003c1a
0000000140003c12  add        rdx, 0x28
0000000140003c16  jmp        0x140003bf7
0000000140003c18  xor        edx, edx
0000000140003c1a  test       rdx, rdx
0000000140003c1d  jne        0x140003c23
0000000140003c1f  xor        al, al
0000000140003c21  jmp        0x140003c37
0000000140003c23  cmp        dword ptr [rdx + 0x24], 0
0000000140003c27  jge        0x140003c2d
0000000140003c29  xor        al, al
0000000140003c2b  jmp        0x140003c37
0000000140003c2d  mov        al, 1
0000000140003c2f  jmp        0x140003c37
0000000140003c31  xor        al, al
0000000140003c33  jmp        0x140003c37
0000000140003c35  xor        al, al
0000000140003c37  add        rsp, 0x18
0000000140003c3b  ret        
0000000140003c3c  push       rbx
0000000140003c3e  sub        rsp, 0x20
0000000140003c42  mov        bl, cl
0000000140003c44  call       0x140004290
0000000140003c49  xor        edx, edx
0000000140003c4b  test       eax, eax
0000000140003c4d  je         0x140003c5a
0000000140003c4f  test       bl, bl
0000000140003c51  jne        0x140003c5a
0000000140003c53  xchg       qword ptr [rip + 0x164e6], rdx
0000000140003c5a  add        rsp, 0x20
0000000140003c5e  pop        rbx
0000000140003c5f  ret        
0000000140003c60  push       rbx
0000000140003c62  sub        rsp, 0x20
0000000140003c66  cmp        byte ptr [rip + 0x164db], 0
0000000140003c6d  mov        bl, cl
0000000140003c6f  je         0x140003c75
0000000140003c71  test       dl, dl
0000000140003c73  jne        0x140003c81
0000000140003c75  call       0x140006970
0000000140003c7a  mov        cl, bl
0000000140003c7c  call       0x140004b7c
0000000140003c81  mov        al, 1
0000000140003c83  add        rsp, 0x20
0000000140003c87  pop        rbx
0000000140003c88  ret        
0000000140003c89  int3       
0000000140003c8a  int3       
0000000140003c8b  int3       
0000000140003c8c  push       rbx
0000000140003c8e  sub        rsp, 0x20
0000000140003c92  cmp        qword ptr [rip + 0x164b6], -1
0000000140003c9a  mov        rbx, rcx
0000000140003c9d  jne        0x140003ca6
0000000140003c9f  call       0x140006748
0000000140003ca4  jmp        0x140003cb5
0000000140003ca6  mov        rdx, rbx
0000000140003ca9  lea        rcx, [rip + 0x164a0]
0000000140003cb0  call       0x1400067bc
0000000140003cb5  xor        edx, edx
0000000140003cb7  test       eax, eax
0000000140003cb9  cmove      rdx, rbx
0000000140003cbd  mov        rax, rdx
0000000140003cc0  add        rsp, 0x20
0000000140003cc4  pop        rbx
0000000140003cc5  ret        
0000000140003cc6  int3       
0000000140003cc7  int3       
0000000140003cc8  sub        rsp, 0x28
0000000140003ccc  call       0x140003c8c
0000000140003cd1  neg        rax
0000000140003cd4  sbb        eax, eax
0000000140003cd6  neg        eax
0000000140003cd8  dec        eax
0000000140003cda  add        rsp, 0x28
0000000140003cde  ret        
0000000140003cdf  int3       
0000000140003ce0  mov        qword ptr [rsp + 0x20], rbx
0000000140003ce5  push       rbp
0000000140003ce6  mov        rbp, rsp
0000000140003ce9  sub        rsp, 0x20
0000000140003ced  mov        rax, qword ptr [rip + 0x153d4]
0000000140003cf4  movabs     rbx, 0x2b992ddfa232
0000000140003cfe  cmp        rax, rbx
0000000140003d01  jne        0x140003d77
0000000140003d03  and        qword ptr [rbp + 0x18], 0
0000000140003d08  lea        rcx, [rbp + 0x18]
0000000140003d0c  call       qword ptr [rip + 0xa40e] ; KERNEL32.dll!GetSystemTimeAsFileTime
0000000140003d12  mov        rax, qword ptr [rbp + 0x18]
0000000140003d16  mov        qword ptr [rbp + 0x10], rax
0000000140003d1a  call       qword ptr [rip + 0xa3f8] ; KERNEL32.dll!GetCurrentThreadId
0000000140003d20  mov        eax, eax
0000000140003d22  xor        qword ptr [rbp + 0x10], rax
0000000140003d26  call       qword ptr [rip + 0xa3e4] ; KERNEL32.dll!GetCurrentProcessId
0000000140003d2c  mov        eax, eax
0000000140003d2e  lea        rcx, [rbp + 0x20]
0000000140003d32  xor        qword ptr [rbp + 0x10], rax
0000000140003d36  call       qword ptr [rip + 0xa3cc] ; KERNEL32.dll!QueryPerformanceCounter
0000000140003d3c  mov        eax, dword ptr [rbp + 0x20]
0000000140003d3f  lea        rcx, [rbp + 0x10]
0000000140003d43  shl        rax, 0x20
0000000140003d47  xor        rax, qword ptr [rbp + 0x20]
0000000140003d4b  xor        rax, qword ptr [rbp + 0x10]
0000000140003d4f  xor        rax, rcx
0000000140003d52  movabs     rcx, 0xffffffffffff
0000000140003d5c  and        rax, rcx
0000000140003d5f  movabs     rcx, 0x2b992ddfa233
0000000140003d69  cmp        rax, rbx
0000000140003d6c  cmove      rax, rcx
0000000140003d70  mov        qword ptr [rip + 0x15351], rax
0000000140003d77  mov        rbx, qword ptr [rsp + 0x48]
0000000140003d7c  not        rax
0000000140003d7f  mov        qword ptr [rip + 0x1533a], rax
0000000140003d86  add        rsp, 0x20
0000000140003d8a  pop        rbp
0000000140003d8b  ret        
0000000140003d8c  int3       
0000000140003d8d  int3       
0000000140003d8e  int3       
0000000140003d8f  int3       
0000000140003d90  xor        eax, eax
0000000140003d92  ret        
0000000140003d93  int3       
0000000140003d94  mov        eax, 1
0000000140003d99  ret        
0000000140003d9a  int3       
0000000140003d9b  int3       
0000000140003d9c  mov        eax, 0x4000
0000000140003da1  ret        
0000000140003da2  int3       
0000000140003da3  int3       
0000000140003da4  lea        rcx, [rip + 0x163d5]
0000000140003dab  jmp        qword ptr [rip + 0xa376] ; KERNEL32.dll!InitializeSListHead
0000000140003db2  int3       
0000000140003db3  int3       
0000000140003db4  int3       
0000000140003db5  int3       
0000000140003db6  int3       
0000000140003db7  int3       
0000000140003db8  int3       
0000000140003db9  int3       
0000000140003dba  int3       
0000000140003dbb  int3       
0000000140003dbc  int3       
0000000140003dbd  int3       
0000000140003dbe  int3       
0000000140003dbf  int3       
0000000140003dc0  mov        al, 1
0000000140003dc2  ret        
0000000140003dc3  int3       
0000000140003dc4  lea        rax, [rip + 0x163c5]
0000000140003dcb  ret        
0000000140003dcc  lea        rax, [rip + 0x163c5]
0000000140003dd3  ret        
0000000140003dd4  sub        rsp, 0x28
0000000140003dd8  call       0x140003dc4
0000000140003ddd  or         qword ptr [rax], 0x24
0000000140003de1  call       0x140003dcc
0000000140003de6  or         qword ptr [rax], 2
0000000140003dea  add        rsp, 0x28
0000000140003dee  ret        
0000000140003def  int3       
0000000140003df0  xor        eax, eax
0000000140003df2  cmp        dword ptr [rip + 0x152ec], eax
0000000140003df8  sete       al
0000000140003dfb  ret        
0000000140003dfc  lea        rax, [rip + 0x1707d]
0000000140003e03  ret        
0000000140003e04  lea        rax, [rip + 0x1706d]
0000000140003e0b  ret        
0000000140003e0c  and        dword ptr [rip + 0x1638d], 0
0000000140003e13  ret        
0000000140003e14  mov        qword ptr [rsp + 8], rbx
0000000140003e19  push       rbp
0000000140003e1a  lea        rbp, [rsp - 0x4c0]
0000000140003e22  sub        rsp, 0x5c0
0000000140003e29  mov        ebx, ecx
0000000140003e2b  mov        ecx, 0x17
0000000140003e30  call       qword ptr [rip + 0xa2ca] ; KERNEL32.dll!IsProcessorFeaturePresent
0000000140003e36  test       eax, eax
0000000140003e38  je         0x140003e3e
0000000140003e3a  mov        ecx, ebx
0000000140003e3c  int        0x29
0000000140003e3e  mov        ecx, 3
0000000140003e43  call       0x140003e0c
0000000140003e48  xor        edx, edx
0000000140003e4a  lea        rcx, [rbp - 0x10]
0000000140003e4e  mov        r8d, 0x4d0
0000000140003e54  call       0x140004c70
0000000140003e59  lea        rcx, [rbp - 0x10]
0000000140003e5d  call       qword ptr [rip + 0xa265] ; KERNEL32.dll!RtlCaptureContext
0000000140003e63  mov        rbx, qword ptr [rbp + 0xe8]
0000000140003e6a  lea        rdx, [rbp + 0x4d8]
0000000140003e71  mov        rcx, rbx
0000000140003e74  xor        r8d, r8d
0000000140003e77  call       qword ptr [rip + 0xa253] ; KERNEL32.dll!RtlLookupFunctionEntry
0000000140003e7d  test       rax, rax
0000000140003e80  je         0x140003ebe
0000000140003e82  and        qword ptr [rsp + 0x38], 0
0000000140003e88  lea        rcx, [rbp + 0x4e0]
0000000140003e8f  mov        rdx, qword ptr [rbp + 0x4d8]
0000000140003e96  mov        r9, rax
0000000140003e99  mov        qword ptr [rsp + 0x30], rcx
0000000140003e9e  mov        r8, rbx
0000000140003ea1  lea        rcx, [rbp + 0x4e8]
0000000140003ea8  mov        qword ptr [rsp + 0x28], rcx
0000000140003ead  lea        rcx, [rbp - 0x10]
0000000140003eb1  mov        qword ptr [rsp + 0x20], rcx
0000000140003eb6  xor        ecx, ecx
0000000140003eb8  call       qword ptr [rip + 0xa21a] ; KERNEL32.dll!RtlVirtualUnwind
0000000140003ebe  mov        rax, qword ptr [rbp + 0x4c8]
0000000140003ec5  lea        rcx, [rsp + 0x50]
0000000140003eca  mov        qword ptr [rbp + 0xe8], rax
0000000140003ed1  xor        edx, edx
0000000140003ed3  lea        rax, [rbp + 0x4c8]
0000000140003eda  mov        r8d, 0x98
0000000140003ee0  add        rax, 8
0000000140003ee4  mov        qword ptr [rbp + 0x88], rax
0000000140003eeb  call       0x140004c70
0000000140003ef0  mov        rax, qword ptr [rbp + 0x4c8]
0000000140003ef7  mov        qword ptr [rsp + 0x60], rax
0000000140003efc  mov        dword ptr [rsp + 0x50], 0x40000015
0000000140003f04  mov        dword ptr [rsp + 0x54], 1
0000000140003f0c  call       qword ptr [rip + 0xa21e] ; KERNEL32.dll!IsDebuggerPresent
0000000140003f12  cmp        eax, 1
0000000140003f15  lea        rax, [rsp + 0x50]
0000000140003f1a  mov        qword ptr [rsp + 0x40], rax
0000000140003f1f  lea        rax, [rbp - 0x10]
0000000140003f23  sete       bl
0000000140003f26  mov        qword ptr [rsp + 0x48], rax
0000000140003f2b  xor        ecx, ecx
0000000140003f2d  call       qword ptr [rip + 0xa1b5] ; KERNEL32.dll!SetUnhandledExceptionFilter
0000000140003f33  lea        rcx, [rsp + 0x40]
0000000140003f38  call       qword ptr [rip + 0xa1a2] ; KERNEL32.dll!UnhandledExceptionFilter
0000000140003f3e  test       eax, eax
0000000140003f40  jne        0x140003f4e
0000000140003f42  test       bl, bl
0000000140003f44  jne        0x140003f4e
0000000140003f46  lea        ecx, [rax + 3]
0000000140003f49  call       0x140003e0c
0000000140003f4e  mov        rbx, qword ptr [rsp + 0x5d0]
0000000140003f56  add        rsp, 0x5c0
0000000140003f5d  pop        rbp
0000000140003f5e  ret        
0000000140003f5f  int3       
0000000140003f60  sub        rsp, 0x98
0000000140003f67  xor        edx, edx
0000000140003f69  lea        rcx, [rsp + 0x20]
0000000140003f6e  lea        r8d, [rdx + 0x68]
0000000140003f72  call       0x140004c70
0000000140003f77  lea        rcx, [rsp + 0x20]
0000000140003f7c  call       qword ptr [rip + 0xa1b6] ; KERNEL32.dll!GetStartupInfoW
0000000140003f82  test       byte ptr [rsp + 0x5c], 1
0000000140003f87  mov        eax, 0xa
0000000140003f8c  cmovne     ax, word ptr [rsp + 0x60]
0000000140003f92  add        rsp, 0x98
0000000140003f99  ret        
0000000140003f9a  int3       
0000000140003f9b  int3       
0000000140003f9c  jmp        0x140003d90
0000000140003fa1  int3       
0000000140003fa2  int3       
0000000140003fa3  int3       
0000000140003fa4  sub        rsp, 0x28
0000000140003fa8  xor        ecx, ecx
0000000140003faa  call       qword ptr [rip + 0xa190] ; KERNEL32.dll!GetModuleHandleW
0000000140003fb0  test       rax, rax
0000000140003fb3  je         0x140003fef
0000000140003fb5  mov        ecx, 0x5a4d
0000000140003fba  cmp        word ptr [rax], cx
0000000140003fbd  jne        0x140003fef
0000000140003fbf  movsxd     rcx, dword ptr [rax + 0x3c]
0000000140003fc3  add        rcx, rax
0000000140003fc6  cmp        dword ptr [rcx], 0x4550
0000000140003fcc  jne        0x140003fef
0000000140003fce  mov        eax, 0x20b
0000000140003fd3  cmp        word ptr [rcx + 0x18], ax
0000000140003fd7  jne        0x140003fef
0000000140003fd9  cmp        dword ptr [rcx + 0x84], 0xe
0000000140003fe0  jbe        0x140003fef
0000000140003fe2  cmp        dword ptr [rcx + 0xf8], 0
0000000140003fe9  je         0x140003fef
0000000140003feb  mov        al, 1
0000000140003fed  jmp        0x140003ff1
0000000140003fef  xor        al, al
0000000140003ff1  add        rsp, 0x28
0000000140003ff5  ret        
0000000140003ff6  int3       
0000000140003ff7  int3       
0000000140003ff8  lea        rcx, [rip + 0x11]
0000000140003fff  jmp        qword ptr [rip + 0xa0e2] ; KERNEL32.dll!SetUnhandledExceptionFilter
0000000140004006  int3       
0000000140004007  int3       
0000000140004008  int3       
0000000140004009  int3       
000000014000400a  int3       
000000014000400b  int3       
000000014000400c  int3       
000000014000400d  int3       
000000014000400e  int3       
000000014000400f  int3       
0000000140004010  mov        qword ptr [rsp + 8], rbx
0000000140004015  push       rdi
0000000140004016  sub        rsp, 0x20
000000014000401a  mov        rbx, qword ptr [rcx]
000000014000401d  mov        rdi, rcx
0000000140004020  cmp        dword ptr [rbx], 0xe06d7363
0000000140004026  jne        0x140004044
0000000140004028  cmp        dword ptr [rbx + 0x18], 4
000000014000402c  jne        0x140004044
000000014000402e  mov        edx, dword ptr [rbx + 0x20]
0000000140004031  lea        eax, [rdx - 0x19930520]
0000000140004037  cmp        eax, 2
000000014000403a  jbe        0x140004051
000000014000403c  cmp        edx, 0x1994000
0000000140004042  je         0x140004051
0000000140004044  mov        rbx, qword ptr [rsp + 0x30]
0000000140004049  xor        eax, eax
000000014000404b  add        rsp, 0x20
000000014000404f  pop        rdi
0000000140004050  ret        
0000000140004051  call       0x140004c14
0000000140004056  mov        qword ptr [rax], rbx
0000000140004059  mov        rbx, qword ptr [rdi + 8]
000000014000405d  call       0x140004c28
0000000140004062  mov        qword ptr [rax], rbx
0000000140004065  call       0x1400069a8
000000014000406a  int3       
000000014000406b  int3       
000000014000406c  mov        qword ptr [rsp + 8], rbx
0000000140004071  push       rdi
0000000140004072  sub        rsp, 0x20
0000000140004076  lea        rbx, [rip + 0x12d4b]
000000014000407d  lea        rdi, [rip + 0x12d44]
0000000140004084  jmp        0x140004098
0000000140004086  mov        rax, qword ptr [rbx]
0000000140004089  test       rax, rax
000000014000408c  je         0x140004094
000000014000408e  call       qword ptr [rip + 0xa1fc]
0000000140004094  add        rbx, 8
0000000140004098  cmp        rbx, rdi
000000014000409b  jb         0x140004086
000000014000409d  mov        rbx, qword ptr [rsp + 0x30]
00000001400040a2  add        rsp, 0x20
00000001400040a6  pop        rdi
00000001400040a7  ret        
00000001400040a8  int3       
00000001400040a9  int3       
00000001400040aa  int3       
00000001400040ab  int3       
00000001400040ac  int3       
00000001400040ad  int3       
00000001400040ae  int3       
00000001400040af  int3       
00000001400040b0  mov        qword ptr [rsp + 8], rbx
00000001400040b5  push       rdi
00000001400040b6  sub        rsp, 0x20
00000001400040ba  lea        rbx, [rip + 0x12d17]
00000001400040c1  lea        rdi, [rip + 0x12d10]
00000001400040c8  jmp        0x1400040dc
00000001400040ca  mov        rax, qword ptr [rbx]
00000001400040cd  test       rax, rax
00000001400040d0  je         0x1400040d8
00000001400040d2  call       qword ptr [rip + 0xa1b8]
00000001400040d8  add        rbx, 8
00000001400040dc  cmp        rbx, rdi
00000001400040df  jb         0x1400040ca
00000001400040e1  mov        rbx, qword ptr [rsp + 0x30]
00000001400040e6  add        rsp, 0x20
00000001400040ea  pop        rdi
00000001400040eb  ret        
00000001400040ec  mov        qword ptr [rsp + 0x10], rbx
00000001400040f1  mov        qword ptr [rsp + 0x18], rsi
00000001400040f6  push       rdi
00000001400040f7  sub        rsp, 0x10
00000001400040fb  xor        eax, eax
00000001400040fd  xor        ecx, ecx
00000001400040ff  cpuid      
0000000140004101  mov        r8d, ecx
0000000140004104  xor        r11d, r11d
0000000140004107  mov        r9d, ebx
000000014000410a  xor        r8d, 0x6c65746e
0000000140004111  xor        r9d, 0x756e6547
0000000140004118  mov        r10d, edx
000000014000411b  mov        esi, eax
000000014000411d  xor        ecx, ecx
000000014000411f  lea        eax, [r11 + 1]
0000000140004123  or         r9d, r8d
0000000140004126  cpuid      
0000000140004128  xor        r10d, 0x49656e69
000000014000412f  mov        dword ptr [rsp], eax
0000000140004132  or         r9d, r10d
0000000140004135  mov        dword ptr [rsp + 4], ebx
0000000140004139  mov        edi, ecx
000000014000413b  mov        dword ptr [rsp + 8], ecx
000000014000413f  mov        dword ptr [rsp + 0xc], edx
0000000140004143  jne        0x140004195
0000000140004145  or         qword ptr [rip + 0x14fa3], 0xffffffffffffffff
000000014000414d  and        eax, 0xfff3ff0
0000000140004152  cmp        eax, 0x106c0
0000000140004157  je         0x140004181
0000000140004159  cmp        eax, 0x20660
000000014000415e  je         0x140004181
0000000140004160  cmp        eax, 0x20670
0000000140004165  je         0x140004181
0000000140004167  add        eax, 0xfffcf9b0
000000014000416c  cmp        eax, 0x20
000000014000416f  ja         0x140004195
0000000140004171  movabs     rcx, 0x100010001
000000014000417b  bt         rcx, rax
000000014000417f  jae        0x140004195
0000000140004181  mov        r8d, dword ptr [rip + 0x1601c]
0000000140004188  or         r8d, 1
000000014000418c  mov        dword ptr [rip + 0x16011], r8d
0000000140004193  jmp        0x14000419c
0000000140004195  mov        r8d, dword ptr [rip + 0x16008]
000000014000419c  mov        eax, 7
00000001400041a1  lea        r9d, [rax - 5]
00000001400041a5  cmp        esi, eax
00000001400041a7  jl         0x1400041cf
00000001400041a9  xor        ecx, ecx
00000001400041ab  cpuid      
00000001400041ad  mov        dword ptr [rsp], eax
00000001400041b0  mov        r11d, ebx
00000001400041b3  mov        dword ptr [rsp + 4], ebx
00000001400041b7  mov        dword ptr [rsp + 8], ecx
00000001400041bb  mov        dword ptr [rsp + 0xc], edx
00000001400041bf  bt         ebx, 9
00000001400041c3  jae        0x1400041cf
00000001400041c5  or         r8d, r9d
00000001400041c8  mov        dword ptr [rip + 0x15fd5], r8d
00000001400041cf  mov        dword ptr [rip + 0x14f0f], 1
00000001400041d9  mov        dword ptr [rip + 0x14f0c], r9d
00000001400041e0  bt         edi, 0x14
00000001400041e4  jae        0x14000427b
00000001400041ea  mov        dword ptr [rip + 0x14ef7], r9d
00000001400041f1  mov        ebx, 6
00000001400041f6  mov        dword ptr [rip + 0x14ef0], ebx
00000001400041fc  bt         edi, 0x1b
0000000140004200  jae        0x14000427b
0000000140004202  bt         edi, 0x1c
0000000140004206  jae        0x14000427b
0000000140004208  xor        ecx, ecx
000000014000420a  xgetbv     
000000014000420d  shl        rdx, 0x20
0000000140004211  or         rdx, rax
0000000140004214  mov        qword ptr [rsp + 0x20], rdx
0000000140004219  mov        rax, qword ptr [rsp + 0x20]
000000014000421e  and        al, bl
0000000140004220  cmp        al, bl
0000000140004222  jne        0x14000427b
0000000140004224  mov        eax, dword ptr [rip + 0x14ec2]
000000014000422a  or         eax, 8
000000014000422d  mov        dword ptr [rip + 0x14eb1], 3
0000000140004237  mov        dword ptr [rip + 0x14eaf], eax
000000014000423d  test       r11b, 0x20
0000000140004241  je         0x14000427b
0000000140004243  or         eax, 0x20
0000000140004246  mov        dword ptr [rip + 0x14e98], 5
0000000140004250  mov        dword ptr [rip + 0x14e96], eax
0000000140004256  mov        eax, 0xd0030000
000000014000425b  and        r11d, eax
000000014000425e  cmp        r11d, eax
0000000140004261  jne        0x14000427b
0000000140004263  mov        rax, qword ptr [rsp + 0x20]
0000000140004268  and        al, 0xe0
000000014000426a  cmp        al, 0xe0
000000014000426c  jne        0x14000427b
000000014000426e  or         dword ptr [rip + 0x14e77], 0x40
0000000140004275  mov        dword ptr [rip + 0x14e6d], ebx
000000014000427b  mov        rbx, qword ptr [rsp + 0x28]
0000000140004280  xor        eax, eax
0000000140004282  mov        rsi, qword ptr [rsp + 0x30]
0000000140004287  add        rsp, 0x10
000000014000428b  pop        rdi
000000014000428c  ret        
000000014000428d  int3       
000000014000428e  int3       
000000014000428f  int3       
0000000140004290  xor        eax, eax
0000000140004292  cmp        dword ptr [rip + 0x16bd8], eax
0000000140004298  setne      al
000000014000429b  ret        
000000014000429c  int3       
000000014000429d  int3       
000000014000429e  int3       
000000014000429f  int3       
00000001400042a0  int3       
00000001400042a1  int3       
00000001400042a2  int3       
00000001400042a3  int3       
00000001400042a4  int3       
00000001400042a5  int3       
00000001400042a6  nop        word ptr [rax + rax]
00000001400042b0  push       rdi
00000001400042b1  push       rsi
00000001400042b2  mov        rdi, rcx
00000001400042b5  mov        rsi, rdx
00000001400042b8  mov        rcx, r8
00000001400042bb  rep movsb  byte ptr [rdi], byte ptr [rsi]
00000001400042bd  pop        rsi
00000001400042be  pop        rdi
00000001400042bf  ret        
00000001400042c0  int3       
00000001400042c1  int3       
00000001400042c2  int3       
00000001400042c3  int3       
00000001400042c4  int3       
00000001400042c5  int3       
00000001400042c6  nop        word ptr [rax + rax]
00000001400042d0  mov        rax, rcx
00000001400042d3  lea        r10, [rip - 0x42da]
00000001400042da  cmp        r8, 0xf
00000001400042de  ja         0x1400043f0
00000001400042e4  nop        word ptr [rax + rax]
00000001400042f0  mov        r9d, dword ptr [r10 + r8*4 + 0x1c000]
00000001400042f8  add        r9, r10
00000001400042fb  jmp        r9
00000001400042fe  ret        
00000001400042ff  nop        
0000000140004300  mov        r8, qword ptr [rdx]
0000000140004303  mov        ecx, dword ptr [rdx + 8]
0000000140004306  movzx      r9d, word ptr [rdx + 0xc]
000000014000430b  movzx      r10d, byte ptr [rdx + 0xe]
0000000140004310  mov        qword ptr [rax], r8
0000000140004313  mov        dword ptr [rax + 8], ecx
0000000140004316  mov        word ptr [rax + 0xc], r9w
000000014000431b  mov        byte ptr [rax + 0xe], r10b
000000014000431f  ret        
0000000140004320  mov        r8, qword ptr [rdx]
0000000140004323  movzx      ecx, word ptr [rdx + 8]
0000000140004327  movzx      r9d, byte ptr [rdx + 0xa]
000000014000432c  mov        qword ptr [rax], r8
000000014000432f  mov        word ptr [rax + 8], cx
0000000140004333  mov        byte ptr [rax + 0xa], r9b
0000000140004337  ret        
0000000140004338  movzx      ecx, word ptr [rdx]
000000014000433b  mov        word ptr [rax], cx
000000014000433e  ret        
000000014000433f  nop        
0000000140004340  mov        ecx, dword ptr [rdx]
0000000140004342  movzx      r8d, word ptr [rdx + 4]
0000000140004347  movzx      r9d, byte ptr [rdx + 6]
000000014000434c  mov        dword ptr [rax], ecx
000000014000434e  mov        word ptr [rax + 4], r8w
0000000140004353  mov        byte ptr [rax + 6], r9b
0000000140004357  ret        
0000000140004358  mov        r8, qword ptr [rdx]
000000014000435b  mov        ecx, dword ptr [rdx + 8]
000000014000435e  movzx      r9d, word ptr [rdx + 0xc]
0000000140004363  mov        qword ptr [rax], r8
0000000140004366  mov        dword ptr [rax + 8], ecx
0000000140004369  mov        word ptr [rax + 0xc], r9w
000000014000436e  ret        
000000014000436f  movzx      ecx, word ptr [rdx]
0000000140004372  movzx      r8d, byte ptr [rdx + 2]
0000000140004377  mov        word ptr [rax], cx
000000014000437a  mov        byte ptr [rax + 2], r8b
000000014000437e  ret        
000000014000437f  nop        
0000000140004380  mov        r8, qword ptr [rdx]
0000000140004383  mov        ecx, dword ptr [rdx + 8]
0000000140004386  movzx      r9d, byte ptr [rdx + 0xc]
000000014000438b  mov        qword ptr [rax], r8
000000014000438e  mov        dword ptr [rax + 8], ecx
0000000140004391  mov        byte ptr [rax + 0xc], r9b
0000000140004395  ret        
0000000140004396  mov        r8, qword ptr [rdx]
0000000140004399  movzx      ecx, word ptr [rdx + 8]
000000014000439d  mov        qword ptr [rax], r8
00000001400043a0  mov        word ptr [rax + 8], cx
00000001400043a4  ret        
00000001400043a5  mov        r8, qword ptr [rdx]
00000001400043a8  movzx      ecx, byte ptr [rdx + 8]
00000001400043ac  mov        qword ptr [rax], r8
00000001400043af  mov        byte ptr [rax + 8], cl
00000001400043b2  ret        
00000001400043b3  mov        r8, qword ptr [rdx]
00000001400043b6  mov        ecx, dword ptr [rdx + 8]
00000001400043b9  mov        qword ptr [rax], r8
00000001400043bc  mov        dword ptr [rax + 8], ecx
00000001400043bf  ret        
00000001400043c0  mov        ecx, dword ptr [rdx]
00000001400043c2  movzx      r8d, word ptr [rdx + 4]
00000001400043c7  mov        dword ptr [rax], ecx
00000001400043c9  mov        word ptr [rax + 4], r8w
00000001400043ce  ret        
00000001400043cf  mov        ecx, dword ptr [rdx]
00000001400043d1  movzx      r8d, byte ptr [rdx + 4]
00000001400043d6  mov        dword ptr [rax], ecx
00000001400043d8  mov        byte ptr [rax + 4], r8b
00000001400043dc  ret        
00000001400043dd  mov        rcx, qword ptr [rdx]
00000001400043e0  mov        qword ptr [rax], rcx
00000001400043e3  ret        
00000001400043e4  movzx      ecx, byte ptr [rdx]
00000001400043e7  mov        byte ptr [rax], cl
00000001400043e9  ret        
00000001400043ea  mov        ecx, dword ptr [rdx]
00000001400043ec  mov        dword ptr [rax], ecx
00000001400043ee  ret        
00000001400043ef  nop        
00000001400043f0  cmp        r8, 0x20
00000001400043f4  ja         0x14000440d
00000001400043f6  movdqu     xmm1, xmmword ptr [rdx]
00000001400043fa  movdqu     xmm2, xmmword ptr [rdx + r8 - 0x10]
0000000140004401  movdqu     xmmword ptr [rcx], xmm1
0000000140004405  movdqu     xmmword ptr [rcx + r8 - 0x10], xmm2
000000014000440c  ret        
000000014000440d  cmp        rdx, rcx
0000000140004410  jae        0x140004420
0000000140004412  lea        r9, [rdx + r8]
0000000140004416  cmp        rcx, r9
0000000140004419  jb         0x140004860
000000014000441f  nop        
0000000140004420  cmp        dword ptr [rip + 0x14cc1], 3
0000000140004427  jb         0x140004710
000000014000442d  cmp        r8, 0x2000
0000000140004434  jbe        0x14000444c
0000000140004436  cmp        r8, 0x180000
000000014000443d  ja         0x14000444c
000000014000443f  test       byte ptr [rip + 0x15d5e], 2
0000000140004446  jne        0x1400042b0
000000014000444c  vmovdqu    ymm0, ymmword ptr [rdx]
0000000140004450  vmovdqu    ymm5, ymmword ptr [rdx + r8 - 0x20]
0000000140004457  cmp        r8, 0x100
000000014000445e  jbe        0x140004528
0000000140004464  mov        r9, rcx
0000000140004467  and        r9, 0x1f
000000014000446b  sub        r9, 0x20
000000014000446f  sub        rcx, r9
0000000140004472  sub        rdx, r9
0000000140004475  add        r8, r9
0000000140004478  cmp        r8, 0x100
000000014000447f  jbe        0x140004528
0000000140004485  cmp        r8, 0x180000
000000014000448c  ja         0x1400045d0
0000000140004492  nop        word ptr [rax + rax]
00000001400044a0  vmovdqu    ymm1, ymmword ptr [rdx]
00000001400044a4  vmovdqu    ymm2, ymmword ptr [rdx + 0x20]
00000001400044a9  vmovdqu    ymm3, ymmword ptr [rdx + 0x40]
00000001400044ae  vmovdqu    ymm4, ymmword ptr [rdx + 0x60]
00000001400044b3  vmovdqa    ymmword ptr [rcx], ymm1
00000001400044b7  vmovdqa    ymmword ptr [rcx + 0x20], ymm2
00000001400044bc  vmovdqa    ymmword ptr [rcx + 0x40], ymm3
00000001400044c1  vmovdqa    ymmword ptr [rcx + 0x60], ymm4
00000001400044c6  vmovdqu    ymm1, ymmword ptr [rdx + 0x80]
00000001400044ce  vmovdqu    ymm2, ymmword ptr [rdx + 0xa0]
00000001400044d6  vmovdqu    ymm3, ymmword ptr [rdx + 0xc0]
00000001400044de  vmovdqu    ymm4, ymmword ptr [rdx + 0xe0]
00000001400044e6  vmovdqa    ymmword ptr [rcx + 0x80], ymm1
00000001400044ee  vmovdqa    ymmword ptr [rcx + 0xa0], ymm2
00000001400044f6  vmovdqa    ymmword ptr [rcx + 0xc0], ymm3
00000001400044fe  vmovdqa    ymmword ptr [rcx + 0xe0], ymm4
0000000140004506  add        rcx, 0x100
000000014000450d  add        rdx, 0x100
0000000140004514  sub        r8, 0x100
000000014000451b  cmp        r8, 0x100
0000000140004522  jae        0x1400044a0
0000000140004528  lea        r9, [r8 + 0x1f]
000000014000452c  and        r9, 0xffffffffffffffe0
0000000140004530  mov        r11, r9
0000000140004533  shr        r11, 5
0000000140004537  mov        r11d, dword ptr [r10 + r11*4 + 0x1c040]
000000014000453f  add        r11, r10
0000000140004542  jmp        r11
0000000140004545  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0x100]
000000014000454f  vmovdqu    ymmword ptr [rcx + r9 - 0x100], ymm1
0000000140004559  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0xe0]
0000000140004563  vmovdqu    ymmword ptr [rcx + r9 - 0xe0], ymm1
000000014000456d  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0xc0]
0000000140004577  vmovdqu    ymmword ptr [rcx + r9 - 0xc0], ymm1
0000000140004581  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0xa0]
000000014000458b  vmovdqu    ymmword ptr [rcx + r9 - 0xa0], ymm1
0000000140004595  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0x80]
000000014000459c  vmovdqu    ymmword ptr [rcx + r9 - 0x80], ymm1
00000001400045a3  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0x60]
00000001400045aa  vmovdqu    ymmword ptr [rcx + r9 - 0x60], ymm1
00000001400045b1  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0x40]
00000001400045b8  vmovdqu    ymmword ptr [rcx + r9 - 0x40], ymm1
00000001400045bf  vmovdqu    ymmword ptr [rcx + r8 - 0x20], ymm5
00000001400045c6  vmovdqu    ymmword ptr [rax], ymm0
00000001400045ca  vzeroupper 
00000001400045cd  ret        
00000001400045ce  nop        
00000001400045d0  vmovdqu    ymm1, ymmword ptr [rdx]
00000001400045d4  vmovdqu    ymm2, ymmword ptr [rdx + 0x20]
00000001400045d9  vmovdqu    ymm3, ymmword ptr [rdx + 0x40]
00000001400045de  vmovdqu    ymm4, ymmword ptr [rdx + 0x60]
00000001400045e3  vmovntdq   ymmword ptr [rcx], ymm1
00000001400045e7  vmovntdq   ymmword ptr [rcx + 0x20], ymm2
00000001400045ec  vmovntdq   ymmword ptr [rcx + 0x40], ymm3
00000001400045f1  vmovntdq   ymmword ptr [rcx + 0x60], ymm4
00000001400045f6  vmovdqu    ymm1, ymmword ptr [rdx + 0x80]
00000001400045fe  vmovdqu    ymm2, ymmword ptr [rdx + 0xa0]
0000000140004606  vmovdqu    ymm3, ymmword ptr [rdx + 0xc0]
000000014000460e  vmovdqu    ymm4, ymmword ptr [rdx + 0xe0]
0000000140004616  vmovntdq   ymmword ptr [rcx + 0x80], ymm1
000000014000461e  vmovntdq   ymmword ptr [rcx + 0xa0], ymm2
0000000140004626  vmovntdq   ymmword ptr [rcx + 0xc0], ymm3
000000014000462e  vmovntdq   ymmword ptr [rcx + 0xe0], ymm4
0000000140004636  add        rcx, 0x100
000000014000463d  add        rdx, 0x100
0000000140004644  sub        r8, 0x100
000000014000464b  cmp        r8, 0x100
0000000140004652  jae        0x1400045d0
0000000140004658  lea        r9, [r8 + 0x1f]
000000014000465c  and        r9, 0xffffffffffffffe0
0000000140004660  mov        r11, r9
0000000140004663  shr        r11, 5
0000000140004667  mov        r11d, dword ptr [r10 + r11*4 + 0x1c064]
000000014000466f  add        r11, r10
0000000140004672  jmp        r11
0000000140004675  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0x100]
000000014000467f  vmovntdq   ymmword ptr [rcx + r9 - 0x100], ymm1
0000000140004689  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0xe0]
0000000140004693  vmovntdq   ymmword ptr [rcx + r9 - 0xe0], ymm1
000000014000469d  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0xc0]
00000001400046a7  vmovntdq   ymmword ptr [rcx + r9 - 0xc0], ymm1
00000001400046b1  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0xa0]
00000001400046bb  vmovntdq   ymmword ptr [rcx + r9 - 0xa0], ymm1
00000001400046c5  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0x80]
00000001400046cc  vmovntdq   ymmword ptr [rcx + r9 - 0x80], ymm1
00000001400046d3  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0x60]
00000001400046da  vmovntdq   ymmword ptr [rcx + r9 - 0x60], ymm1
00000001400046e1  vmovdqu    ymm1, ymmword ptr [rdx + r9 - 0x40]
00000001400046e8  vmovntdq   ymmword ptr [rcx + r9 - 0x40], ymm1
00000001400046ef  vmovdqu    ymmword ptr [rcx + r8 - 0x20], ymm5
00000001400046f6  vmovdqu    ymmword ptr [rax], ymm0
00000001400046fa  sfence     
00000001400046fd  vzeroupper 
0000000140004700  ret        
0000000140004701  nop        word ptr [rax + rax]
0000000140004710  cmp        r8, 0x800
0000000140004717  jbe        0x140004726
0000000140004719  test       byte ptr [rip + 0x15a84], 2
0000000140004720  jne        0x1400042b0
0000000140004726  movdqu     xmm0, xmmword ptr [rdx]
000000014000472a  movdqu     xmm5, xmmword ptr [rdx + r8 - 0x10]
0000000140004731  cmp        r8, 0x80
0000000140004738  jbe        0x1400047cc
000000014000473e  mov        r9, rcx
0000000140004741  and        r9, 0xf
0000000140004745  sub        r9, 0x10
0000000140004749  sub        rcx, r9
000000014000474c  sub        rdx, r9
000000014000474f  add        r8, r9
0000000140004752  cmp        r8, 0x80
0000000140004759  jbe        0x1400047cc
000000014000475b  nop        dword ptr [rax + rax]
0000000140004760  movdqu     xmm1, xmmword ptr [rdx]
0000000140004764  movdqu     xmm2, xmmword ptr [rdx + 0x10]
0000000140004769  movdqu     xmm3, xmmword ptr [rdx + 0x20]
000000014000476e  movdqu     xmm4, xmmword ptr [rdx + 0x30]
0000000140004773  movdqa     xmmword ptr [rcx], xmm1
0000000140004777  movdqa     xmmword ptr [rcx + 0x10], xmm2
000000014000477c  movdqa     xmmword ptr [rcx + 0x20], xmm3
0000000140004781  movdqa     xmmword ptr [rcx + 0x30], xmm4
0000000140004786  movdqu     xmm1, xmmword ptr [rdx + 0x40]
000000014000478b  movdqu     xmm2, xmmword ptr [rdx + 0x50]
0000000140004790  movdqu     xmm3, xmmword ptr [rdx + 0x60]
0000000140004795  movdqu     xmm4, xmmword ptr [rdx + 0x70]
000000014000479a  movdqa     xmmword ptr [rcx + 0x40], xmm1
000000014000479f  movdqa     xmmword ptr [rcx + 0x50], xmm2
00000001400047a4  movdqa     xmmword ptr [rcx + 0x60], xmm3
00000001400047a9  movdqa     xmmword ptr [rcx + 0x70], xmm4
00000001400047ae  add        rcx, 0x80
00000001400047b5  add        rdx, 0x80
00000001400047bc  sub        r8, 0x80
00000001400047c3  cmp        r8, 0x80
00000001400047ca  jae        0x140004760
00000001400047cc  lea        r9, [r8 + 0xf]
00000001400047d0  and        r9, 0xfffffffffffffff0
00000001400047d4  mov        r11, r9
00000001400047d7  shr        r11, 4
00000001400047db  mov        r11d, dword ptr [r10 + r11*4 + 0x1c088]
00000001400047e3  add        r11, r10
00000001400047e6  jmp        r11
00000001400047e9  movdqu     xmm1, xmmword ptr [rdx + r9 - 0x80]
00000001400047f0  movdqu     xmmword ptr [rcx + r9 - 0x80], xmm1
00000001400047f7  movdqu     xmm1, xmmword ptr [rdx + r9 - 0x70]
00000001400047fe  movdqu     xmmword ptr [rcx + r9 - 0x70], xmm1
0000000140004805  movdqu     xmm1, xmmword ptr [rdx + r9 - 0x60]
000000014000480c  movdqu     xmmword ptr [rcx + r9 - 0x60], xmm1
0000000140004813  movdqu     xmm1, xmmword ptr [rdx + r9 - 0x50]
000000014000481a  movdqu     xmmword ptr [rcx + r9 - 0x50], xmm1
0000000140004821  movdqu     xmm1, xmmword ptr [rdx + r9 - 0x40]
0000000140004828  movdqu     xmmword ptr [rcx + r9 - 0x40], xmm1
000000014000482f  movdqu     xmm1, xmmword ptr [rdx + r9 - 0x30]
0000000140004836  movdqu     xmmword ptr [rcx + r9 - 0x30], xmm1
000000014000483d  movdqu     xmm1, xmmword ptr [rdx + r9 - 0x20]
0000000140004844  movdqu     xmmword ptr [rcx + r9 - 0x20], xmm1
000000014000484b  movdqu     xmmword ptr [rcx + r8 - 0x10], xmm5
0000000140004852  movdqu     xmmword ptr [rax], xmm0
0000000140004856  ret        
0000000140004857  nop        word ptr [rax + rax]
0000000140004860  mov        r11, rcx
0000000140004863  mov        r10, rdx
0000000140004866  sub        rdx, rcx
0000000140004869  add        rcx, r8
000000014000486c  movups     xmm0, xmmword ptr [rcx + rdx - 0x10]
0000000140004871  sub        rcx, 0x10
0000000140004875  sub        r8, 0x10
0000000140004879  test       cl, 0xf
000000014000487c  je         0x140004895
000000014000487e  mov        rax, rcx
0000000140004881  and        rcx, 0xfffffffffffffff0
0000000140004885  movups     xmm1, xmm0
0000000140004888  movups     xmm0, xmmword ptr [rcx + rdx]
000000014000488c  movups     xmmword ptr [rax], xmm1
000000014000488f  mov        r8, rcx
0000000140004892  sub        r8, r11
0000000140004895  mov        r9, r8
0000000140004898  shr        r9, 7
000000014000489c  je         0x14000490d
000000014000489e  movaps     xmmword ptr [rcx], xmm0
00000001400048a1  jmp        0x1400048b7
00000001400048a3  nop        word ptr [rax + rax]
00000001400048b0  movaps     xmmword ptr [rcx + 0x10], xmm0
00000001400048b4  movaps     xmmword ptr [rcx], xmm1
00000001400048b7  movups     xmm0, xmmword ptr [rcx + rdx - 0x10]
00000001400048bc  movups     xmm1, xmmword ptr [rcx + rdx - 0x20]
00000001400048c1  sub        rcx, 0x80
00000001400048c8  movaps     xmmword ptr [rcx + 0x70], xmm0
00000001400048cc  movaps     xmmword ptr [rcx + 0x60], xmm1
00000001400048d0  movups     xmm0, xmmword ptr [rcx + rdx + 0x50]
00000001400048d5  movups     xmm1, xmmword ptr [rcx + rdx + 0x40]
00000001400048da  dec        r9
00000001400048dd  movaps     xmmword ptr [rcx + 0x50], xmm0
00000001400048e1  movaps     xmmword ptr [rcx + 0x40], xmm1
00000001400048e5  movups     xmm0, xmmword ptr [rcx + rdx + 0x30]
00000001400048ea  movups     xmm1, xmmword ptr [rcx + rdx + 0x20]
00000001400048ef  movaps     xmmword ptr [rcx + 0x30], xmm0
00000001400048f3  movaps     xmmword ptr [rcx + 0x20], xmm1
00000001400048f7  movups     xmm0, xmmword ptr [rcx + rdx + 0x10]
00000001400048fc  movups     xmm1, xmmword ptr [rcx + rdx]
0000000140004900  jne        0x1400048b0
0000000140004902  movaps     xmmword ptr [rcx + 0x10], xmm0
0000000140004906  and        r8, 0x7f
000000014000490a  movaps     xmm0, xmm1
000000014000490d  mov        r9, r8
0000000140004910  shr        r9, 4
0000000140004914  je         0x140004930
0000000140004916  nop        word ptr [rax + rax]
0000000140004920  movups     xmmword ptr [rcx], xmm0
0000000140004923  sub        rcx, 0x10
0000000140004927  movups     xmm0, xmmword ptr [rcx + rdx]
000000014000492b  dec        r9
000000014000492e  jne        0x140004920
0000000140004930  and        r8, 0xf
0000000140004934  je         0x14000493e
0000000140004936  movups     xmm1, xmmword ptr [r10]
000000014000493a  movups     xmmword ptr [r11], xmm1
000000014000493e  movups     xmmword ptr [rcx], xmm0
0000000140004941  mov        rax, r11
0000000140004944  ret        
0000000140004945  int3       
0000000140004946  int3       
0000000140004947  int3       
0000000140004948  mov        qword ptr [rsp + 8], rbx
000000014000494d  mov        qword ptr [rsp + 0x10], rbp
0000000140004952  mov        qword ptr [rsp + 0x18], rsi
0000000140004957  push       rdi
0000000140004958  push       r12
000000014000495a  push       r13
000000014000495c  push       r14
000000014000495e  push       r15
0000000140004960  sub        rsp, 0x40
0000000140004964  mov        rbp, rcx
0000000140004967  mov        r15, r9
000000014000496a  mov        rcx, r8
000000014000496d  mov        rdi, r8
0000000140004970  mov        r13, rdx
0000000140004973  call       0x140004e44
0000000140004978  mov        r12, qword ptr [r15 + 8]
000000014000497c  mov        r14, qword ptr [r15]
000000014000497f  mov        rbx, qword ptr [r15 + 0x38]
0000000140004983  sub        r14, r12
0000000140004986  test       byte ptr [rbp + 4], 0x66
000000014000498a  mov        esi, dword ptr [r15 + 0x48]
000000014000498e  jne        0x140004a70
0000000140004994  mov        qword ptr [rsp + 0x30], rbp
0000000140004999  mov        qword ptr [rsp + 0x38], rdi
000000014000499e  cmp        esi, dword ptr [rbx]
00000001400049a0  jae        0x140004b30
00000001400049a6  mov        edi, esi
00000001400049a8  add        rdi, rdi
00000001400049ab  mov        eax, dword ptr [rbx + rdi*8 + 4]
00000001400049af  cmp        r14, rax
00000001400049b2  jb         0x140004a62
00000001400049b8  mov        eax, dword ptr [rbx + rdi*8 + 8]
00000001400049bc  cmp        r14, rax
00000001400049bf  jae        0x140004a62
00000001400049c5  cmp        dword ptr [rbx + rdi*8 + 0x10], 0
00000001400049ca  je         0x140004a62
00000001400049d0  cmp        dword ptr [rbx + rdi*8 + 0xc], 1
00000001400049d5  je         0x1400049ee
00000001400049d7  mov        eax, dword ptr [rbx + rdi*8 + 0xc]
00000001400049db  lea        rcx, [rsp + 0x30]
00000001400049e0  add        rax, r12
00000001400049e3  mov        rdx, r13
00000001400049e6  call       rax
00000001400049e8  test       eax, eax
00000001400049ea  js         0x140004a69
00000001400049ec  jle        0x140004a62
00000001400049ee  cmp        dword ptr [rbp], 0xe06d7363
00000001400049f5  jne        0x140004a1f
00000001400049f7  cmp        qword ptr [rip + 0xaa01], 0
00000001400049ff  je         0x140004a1f
0000000140004a01  lea        rcx, [rip + 0xa9f8]
0000000140004a08  call       0x14000daf0
0000000140004a0d  test       eax, eax
0000000140004a0f  je         0x140004a1f
0000000140004a11  mov        edx, 1
0000000140004a16  mov        rcx, rbp
0000000140004a19  call       qword ptr [rip + 0xa9e1]
0000000140004a1f  mov        ecx, dword ptr [rbx + rdi*8 + 0x10]
0000000140004a23  mov        r8d, 1
0000000140004a29  add        rcx, r12
0000000140004a2c  mov        rdx, r13
0000000140004a2f  call       0x140004e10
0000000140004a34  mov        rax, qword ptr [r15 + 0x40]
0000000140004a38  mov        r8, rbp
0000000140004a3b  mov        edx, dword ptr [rbx + rdi*8 + 0x10]
0000000140004a3f  mov        rcx, r13
0000000140004a42  mov        r9d, dword ptr [rbp]
0000000140004a46  add        rdx, r12
0000000140004a49  mov        qword ptr [rsp + 0x28], rax
0000000140004a4e  mov        rax, qword ptr [r15 + 0x28]
0000000140004a52  mov        qword ptr [rsp + 0x20], rax
0000000140004a57  call       qword ptr [rip + 0x96eb] ; KERNEL32.dll!RtlUnwindEx
0000000140004a5d  call       0x140004e40
0000000140004a62  inc        esi
0000000140004a64  jmp        0x14000499e
0000000140004a69  xor        eax, eax
0000000140004a6b  jmp        0x140004b35
0000000140004a70  mov        rdi, qword ptr [r15 + 0x20]
0000000140004a74  mov        r9d, dword ptr [rbx]
0000000140004a77  sub        rdi, r12
0000000140004a7a  cmp        esi, r9d
0000000140004a7d  jae        0x140004b30
0000000140004a83  mov        r8d, r9d
0000000140004a86  mov        edx, esi
0000000140004a88  mov        ecx, r8d
0000000140004a8b  add        rdx, rdx
0000000140004a8e  mov        eax, dword ptr [rbx + rdx*8 + 4]
0000000140004a92  cmp        r14, rax
0000000140004a95  jb         0x140004b23
0000000140004a9b  mov        eax, dword ptr [rbx + rdx*8 + 8]
0000000140004a9f  cmp        r14, rax
0000000140004aa2  jae        0x140004b23
0000000140004aa4  mov        r11d, dword ptr [rbp + 4]
0000000140004aa8  and        r11d, 0x20
0000000140004aac  je         0x140004af2
0000000140004aae  xor        r10d, r10d
0000000140004ab1  test       r8d, r8d
0000000140004ab4  je         0x140004aea
0000000140004ab6  mov        ecx, r10d
0000000140004ab9  add        rcx, rcx
0000000140004abc  mov        eax, dword ptr [rbx + rcx*8 + 4]
0000000140004ac0  cmp        rdi, rax
0000000140004ac3  jb         0x140004ae2
0000000140004ac5  mov        eax, dword ptr [rbx + rcx*8 + 8]
0000000140004ac9  cmp        rdi, rax
0000000140004acc  jae        0x140004ae2
0000000140004ace  mov        eax, dword ptr [rbx + rdx*8 + 0x10]
0000000140004ad2  cmp        dword ptr [rbx + rcx*8 + 0x10], eax
0000000140004ad6  jne        0x140004ae2
0000000140004ad8  mov        eax, dword ptr [rbx + rdx*8 + 0xc]
0000000140004adc  cmp        dword ptr [rbx + rcx*8 + 0xc], eax
0000000140004ae0  je         0x140004aea
0000000140004ae2  inc        r10d
0000000140004ae5  cmp        r10d, r8d
0000000140004ae8  jb         0x140004ab6
0000000140004aea  mov        ecx, r9d
0000000140004aed  cmp        r10d, r9d
0000000140004af0  jne        0x140004b30
0000000140004af2  mov        eax, dword ptr [rbx + rdx*8 + 0x10]
0000000140004af6  test       eax, eax
0000000140004af8  je         0x140004b06
0000000140004afa  cmp        rdi, rax
0000000140004afd  jne        0x140004b23
0000000140004aff  test       r11d, r11d
0000000140004b02  jne        0x140004b30
0000000140004b04  jmp        0x140004b23
0000000140004b06  lea        eax, [rsi + 1]
0000000140004b09  mov        cl, 1
0000000140004b0b  mov        dword ptr [r15 + 0x48], eax
0000000140004b0f  mov        r8d, dword ptr [rbx + rdx*8 + 0xc]
0000000140004b14  mov        rdx, r13
0000000140004b17  add        r8, r12
0000000140004b1a  call       r8
0000000140004b1d  mov        r9d, dword ptr [rbx]
0000000140004b20  mov        ecx, r9d
0000000140004b23  inc        esi
0000000140004b25  mov        r8d, ecx
0000000140004b28  cmp        esi, ecx
0000000140004b2a  jb         0x140004a86
0000000140004b30  mov        eax, 1
0000000140004b35  lea        r11, [rsp + 0x40]
0000000140004b3a  mov        rbx, qword ptr [r11 + 0x30]
0000000140004b3e  mov        rbp, qword ptr [r11 + 0x38]
0000000140004b42  mov        rsi, qword ptr [r11 + 0x40]
0000000140004b46  mov        rsp, r11
0000000140004b49  pop        r15
0000000140004b4b  pop        r14
0000000140004b4d  pop        r13
0000000140004b4f  pop        r12
0000000140004b51  pop        rdi
0000000140004b52  ret        
0000000140004b53  int3       
0000000140004b54  sub        rsp, 0x28
0000000140004b58  call       0x140004fe8
0000000140004b5d  test       al, al
0000000140004b5f  jne        0x140004b65
0000000140004b61  xor        al, al
0000000140004b63  jmp        0x140004b77
0000000140004b65  call       0x140004f7c
0000000140004b6a  test       al, al
0000000140004b6c  jne        0x140004b75
0000000140004b6e  call       0x14000501c
0000000140004b73  jmp        0x140004b61
0000000140004b75  mov        al, 1
0000000140004b77  add        rsp, 0x28
0000000140004b7b  ret        
0000000140004b7c  sub        rsp, 0x28
0000000140004b80  test       cl, cl
0000000140004b82  jne        0x140004b8e
0000000140004b84  call       0x140004fc4
0000000140004b89  call       0x14000501c
0000000140004b8e  mov        al, 1
0000000140004b90  add        rsp, 0x28
0000000140004b94  ret        
0000000140004b95  int3       
0000000140004b96  int3       
0000000140004b97  int3       
0000000140004b98  int3       
0000000140004b99  int3       
0000000140004b9a  int3       
0000000140004b9b  int3       
0000000140004b9c  int3       
0000000140004b9d  int3       
0000000140004b9e  int3       
0000000140004b9f  int3       
0000000140004ba0  test       rcx, rcx
0000000140004ba3  je         0x140004c0c
0000000140004ba5  mov        byte ptr [rsp + 0x10], dl
0000000140004ba9  sub        rsp, 0x48
0000000140004bad  cmp        dword ptr [rcx], 0xe06d7363
0000000140004bb3  jne        0x140004c08
0000000140004bb5  cmp        dword ptr [rcx + 0x18], 4
0000000140004bb9  jne        0x140004c08
0000000140004bbb  mov        eax, dword ptr [rcx + 0x20]
0000000140004bbe  sub        eax, 0x19930520
0000000140004bc3  cmp        eax, 2
0000000140004bc6  ja         0x140004c08
0000000140004bc8  mov        rax, qword ptr [rcx + 0x30]
0000000140004bcc  test       rax, rax
0000000140004bcf  je         0x140004c08
0000000140004bd1  movsxd     rdx, dword ptr [rax + 4]
0000000140004bd5  test       edx, edx
0000000140004bd7  je         0x140004bea
0000000140004bd9  add        rdx, qword ptr [rcx + 0x38]
0000000140004bdd  mov        rcx, qword ptr [rcx + 0x28]
0000000140004be1  call       0x140004c10
0000000140004be6  jmp        0x140004c08
0000000140004be8  jmp        0x140004c08
0000000140004bea  test       byte ptr [rax], 0x10
0000000140004bed  je         0x140004c08
0000000140004bef  mov        rax, qword ptr [rcx + 0x28]
0000000140004bf3  mov        rcx, qword ptr [rax]
0000000140004bf6  test       rcx, rcx
0000000140004bf9  je         0x140004c08
0000000140004bfb  mov        rax, qword ptr [rcx]
0000000140004bfe  mov        rax, qword ptr [rax + 0x10]
0000000140004c02  call       qword ptr [rip + 0x9688]
0000000140004c08  add        rsp, 0x48
0000000140004c0c  ret        
0000000140004c0d  int3       
0000000140004c0e  int3       
0000000140004c0f  int3       
0000000140004c10  jmp        rdx
0000000140004c13  int3       
0000000140004c14  sub        rsp, 0x28
0000000140004c18  call       0x140004ea0
0000000140004c1d  add        rax, 0x20
0000000140004c21  add        rsp, 0x28
0000000140004c25  ret        
0000000140004c26  int3       
0000000140004c27  int3       
0000000140004c28  sub        rsp, 0x28
0000000140004c2c  call       0x140004ea0
0000000140004c31  add        rax, 0x28
0000000140004c35  add        rsp, 0x28
0000000140004c39  ret        
0000000140004c3a  int3       
0000000140004c3b  int3       
0000000140004c3c  int3       
0000000140004c3d  int3       
0000000140004c3e  int3       
0000000140004c3f  int3       
0000000140004c40  int3       
0000000140004c41  int3       
0000000140004c42  int3       
0000000140004c43  int3       
0000000140004c44  int3       
0000000140004c45  int3       
0000000140004c46  nop        word ptr [rax + rax]
0000000140004c50  push       rdi
0000000140004c51  mov        eax, edx
0000000140004c53  mov        rdi, rcx
0000000140004c56  mov        rcx, r8
0000000140004c59  rep stosb  byte ptr [rdi], al
0000000140004c5b  mov        rax, r11
0000000140004c5e  pop        rdi
0000000140004c5f  ret        
0000000140004c60  int3       
0000000140004c61  int3       
0000000140004c62  int3       
0000000140004c63  int3       
0000000140004c64  int3       
0000000140004c65  int3       
0000000140004c66  nop        word ptr [rax + rax]
0000000140004c70  mov        r11, rcx
0000000140004c73  movzx      edx, dl
0000000140004c76  movabs     r9, 0x101010101010101
0000000140004c80  imul       r9, rdx
0000000140004c84  cmp        r8, 0x10
0000000140004c88  jbe        0x140004d80
0000000140004c8e  movq       xmm0, r9
0000000140004c93  punpcklbw  xmm0, xmm0
0000000140004c97  cmp        r8, 0x80
0000000140004c9e  ja         0x140004cb0
0000000140004ca0  jmp        0x140004d10
0000000140004ca5  nop        word ptr [rax + rax]
0000000140004cb0  test       byte ptr [rip + 0x154ed], 2
0000000140004cb7  jne        0x140004c50
0000000140004cb9  movups     xmmword ptr [rcx], xmm0
0000000140004cbc  add        r8, rcx
0000000140004cbf  add        rcx, 0x10
0000000140004cc3  and        rcx, 0xfffffffffffffff0
0000000140004cc7  sub        r8, rcx
0000000140004cca  mov        r9, r8
0000000140004ccd  shr        r9, 7
0000000140004cd1  je         0x140004d10
0000000140004cd3  cmp        r9, qword ptr [rip + 0x1441e]
0000000140004cda  ja         0x140004d40
0000000140004ce0  movaps     xmmword ptr [rcx], xmm0
0000000140004ce3  movaps     xmmword ptr [rcx + 0x10], xmm0
0000000140004ce7  add        rcx, 0x80
0000000140004cee  movaps     xmmword ptr [rcx - 0x60], xmm0
0000000140004cf2  movaps     xmmword ptr [rcx - 0x50], xmm0
0000000140004cf6  dec        r9
0000000140004cf9  movaps     xmmword ptr [rcx - 0x40], xmm0
0000000140004cfd  movaps     xmmword ptr [rcx - 0x30], xmm0
0000000140004d01  movaps     xmmword ptr [rcx - 0x20], xmm0
0000000140004d05  movapd     xmmword ptr [rcx - 0x10], xmm0
0000000140004d0a  jne        0x140004ce0
0000000140004d0c  and        r8, 0x7f
0000000140004d10  mov        r9, r8
0000000140004d13  shr        r9, 4
0000000140004d17  je         0x140004d2c
0000000140004d19  nop        dword ptr [rax]
0000000140004d20  movups     xmmword ptr [rcx], xmm0
0000000140004d23  add        rcx, 0x10
0000000140004d27  dec        r9
0000000140004d2a  jne        0x140004d20
0000000140004d2c  and        r8, 0xf
0000000140004d30  je         0x140004d38
0000000140004d32  movups     xmmword ptr [rcx + r8 - 0x10], xmm0
0000000140004d38  mov        rax, r11
0000000140004d3b  ret        
0000000140004d3c  nop        dword ptr [rax]
0000000140004d40  movntps    xmmword ptr [rcx], xmm0
0000000140004d43  movntps    xmmword ptr [rcx + 0x10], xmm0
0000000140004d47  add        rcx, 0x80
0000000140004d4e  movntps    xmmword ptr [rcx - 0x60], xmm0
0000000140004d52  movntps    xmmword ptr [rcx - 0x50], xmm0
0000000140004d56  dec        r9
0000000140004d59  movntps    xmmword ptr [rcx - 0x40], xmm0
0000000140004d5d  movntps    xmmword ptr [rcx - 0x30], xmm0
0000000140004d61  movntps    xmmword ptr [rcx - 0x20], xmm0
0000000140004d65  movntps    xmmword ptr [rcx - 0x10], xmm0
0000000140004d69  jne        0x140004d40
0000000140004d6b  sfence     
0000000140004d6e  and        r8, 0x7f
0000000140004d72  jmp        0x140004d10
0000000140004d74  nop        word ptr [rax + rax]
0000000140004d80  mov        rdx, r9
0000000140004d83  lea        r9, [rip - 0x4d8a]
0000000140004d8a  mov        eax, dword ptr [r9 + r8*4 + 0x1c0b0]
0000000140004d92  add        r9, rax
0000000140004d95  add        rcx, r8
0000000140004d98  mov        rax, r11
0000000140004d9b  jmp        r9
0000000140004d9e  nop        
0000000140004da0  mov        qword ptr [rcx - 0xf], rdx
0000000140004da4  mov        dword ptr [rcx - 7], edx
0000000140004da7  mov        word ptr [rcx - 3], dx
0000000140004dab  mov        byte ptr [rcx - 1], dl
0000000140004dae  ret        
0000000140004daf  nop        
0000000140004db0  mov        qword ptr [rcx - 0xc], rdx
0000000140004db4  mov        dword ptr [rcx - 4], edx
0000000140004db7  ret        
0000000140004db8  mov        qword ptr [rcx - 9], rdx
0000000140004dbc  mov        byte ptr [rcx - 1], dl
0000000140004dbf  ret        
0000000140004dc0  mov        qword ptr [rcx - 0xd], rdx
0000000140004dc4  mov        dword ptr [rcx - 5], edx
0000000140004dc7  mov        byte ptr [rcx - 1], dl
0000000140004dca  ret        
0000000140004dcb  nop        dword ptr [rax + rax]
0000000140004dd0  mov        qword ptr [rcx - 0xe], rdx
0000000140004dd4  mov        dword ptr [rcx - 6], edx
0000000140004dd7  mov        word ptr [rcx - 2], dx
0000000140004ddb  ret        
0000000140004ddc  mov        qword ptr [rax], rdx
0000000140004ddf  ret        
0000000140004de0  mov        qword ptr [rax], rdx
0000000140004de3  mov        word ptr [rax + 8], dx
0000000140004de7  mov        byte ptr [rax + 0xa], dl
0000000140004dea  ret        
0000000140004deb  nop        dword ptr [rax + rax]
0000000140004df0  mov        qword ptr [rax], rdx
0000000140004df3  mov        word ptr [rax + 8], dx
0000000140004df7  ret        
0000000140004df8  mov        qword ptr [rax], rdx
0000000140004dfb  mov        qword ptr [rax + 8], rdx
0000000140004dff  ret        
0000000140004e00  int3       
0000000140004e01  int3       
0000000140004e02  int3       
0000000140004e03  int3       
0000000140004e04  int3       
0000000140004e05  int3       
0000000140004e06  nop        word ptr [rax + rax]
0000000140004e10  mov        qword ptr [rsp + 8], rcx
0000000140004e15  mov        qword ptr [rsp + 0x18], rdx
0000000140004e1a  mov        dword ptr [rsp + 0x10], r8d
0000000140004e1f  mov        r9, 0x19930520
0000000140004e26  jmp        0x140004e30
0000000140004e28  int3       
0000000140004e29  int3       
0000000140004e2a  int3       
0000000140004e2b  int3       
0000000140004e2c  int3       
0000000140004e2d  int3       
0000000140004e2e  nop        
0000000140004e30  ret        
0000000140004e31  int3       
0000000140004e32  int3       
0000000140004e33  int3       
0000000140004e34  int3       
0000000140004e35  int3       
0000000140004e36  int3       
0000000140004e37  nop        word ptr [rax + rax]
0000000140004e40  ret        
0000000140004e41  int3       
0000000140004e42  int3       
0000000140004e43  int3       
0000000140004e44  mov        rax, qword ptr [rip + 0x9435]
0000000140004e4b  lea        rdx, [rip - 0x1652]
0000000140004e52  cmp        rax, rdx
0000000140004e55  je         0x140004e7a
0000000140004e57  mov        rax, qword ptr gs:[0x30]
0000000140004e60  mov        rcx, qword ptr [rcx + 0x98]
0000000140004e67  cmp        rcx, qword ptr [rax + 0x10]
0000000140004e6b  jb         0x140004e73
0000000140004e6d  cmp        rcx, qword ptr [rax + 8]
0000000140004e71  jbe        0x140004e7a
0000000140004e73  mov        ecx, 0xd
0000000140004e78  int        0x29
0000000140004e7a  ret        
0000000140004e7b  int3       
0000000140004e7c  int3       
0000000140004e7d  int3       
0000000140004e7e  int3       
0000000140004e7f  int3       
0000000140004e80  sub        rsp, 0x28
0000000140004e84  test       rcx, rcx
0000000140004e87  je         0x140004e9a
0000000140004e89  lea        rax, [rip + 0x15320]
0000000140004e90  cmp        rcx, rax
0000000140004e93  je         0x140004e9a
0000000140004e95  call       0x1400069c8
0000000140004e9a  add        rsp, 0x28
0000000140004e9e  ret        
0000000140004e9f  int3       
0000000140004ea0  sub        rsp, 0x28
0000000140004ea4  call       0x140004ebc
0000000140004ea9  test       rax, rax
0000000140004eac  je         0x140004eb3
0000000140004eae  add        rsp, 0x28
0000000140004eb2  ret        
0000000140004eb3  call       0x1400069dc
0000000140004eb8  int3       
0000000140004eb9  int3       
0000000140004eba  int3       
0000000140004ebb  int3       
0000000140004ebc  mov        qword ptr [rsp + 8], rbx
0000000140004ec1  mov        qword ptr [rsp + 0x10], rsi
0000000140004ec6  push       rdi
0000000140004ec7  sub        rsp, 0x20
0000000140004ecb  cmp        dword ptr [rip + 0x1422e], -1
0000000140004ed2  jne        0x140004edb
0000000140004ed4  xor        eax, eax
0000000140004ed6  jmp        0x140004f6b
0000000140004edb  call       qword ptr [rip + 0x926f] ; KERNEL32.dll!GetLastError
0000000140004ee1  mov        ecx, dword ptr [rip + 0x14219]
0000000140004ee7  mov        edi, eax
0000000140004ee9  call       0x140005234
0000000140004eee  or         rdx, 0xffffffffffffffff
0000000140004ef2  xor        esi, esi
0000000140004ef4  cmp        rax, rdx
0000000140004ef7  je         0x140004f60
0000000140004ef9  test       rax, rax
0000000140004efc  je         0x140004f03
0000000140004efe  mov        rsi, rax
0000000140004f01  jmp        0x140004f60
0000000140004f03  mov        ecx, dword ptr [rip + 0x141f7]
0000000140004f09  call       0x14000527c
0000000140004f0e  test       eax, eax
0000000140004f10  je         0x140004f60
0000000140004f12  mov        edx, 0x80
0000000140004f17  lea        ecx, [rdx - 0x7f]
0000000140004f1a  call       0x140006a34
0000000140004f1f  mov        ecx, dword ptr [rip + 0x141db]
0000000140004f25  mov        rbx, rax
0000000140004f28  test       rax, rax
0000000140004f2b  je         0x140004f51
0000000140004f2d  mov        rdx, rax
0000000140004f30  call       0x14000527c
0000000140004f35  test       eax, eax
0000000140004f37  je         0x140004f4b
0000000140004f39  mov        rax, rbx
0000000140004f3c  mov        dword ptr [rbx + 0x78], 0xfffffffe
0000000140004f43  mov        rbx, rsi
0000000140004f46  mov        rsi, rax
0000000140004f49  jmp        0x140004f58
0000000140004f4b  mov        ecx, dword ptr [rip + 0x141af]
0000000140004f51  xor        edx, edx
0000000140004f53  call       0x14000527c
0000000140004f58  mov        rcx, rbx
0000000140004f5b  call       0x1400069c8
0000000140004f60  mov        ecx, edi
0000000140004f62  call       qword ptr [rip + 0x91f0] ; KERNEL32.dll!SetLastError
0000000140004f68  mov        rax, rsi
0000000140004f6b  mov        rbx, qword ptr [rsp + 0x30]
0000000140004f70  mov        rsi, qword ptr [rsp + 0x38]
0000000140004f75  add        rsp, 0x20
0000000140004f79  pop        rdi
0000000140004f7a  ret        
0000000140004f7b  int3       
0000000140004f7c  sub        rsp, 0x28
0000000140004f80  lea        rcx, [rip - 0x107]
0000000140004f87  call       0x1400051a4
0000000140004f8c  mov        dword ptr [rip + 0x1416e], eax
0000000140004f92  cmp        eax, -1
0000000140004f95  je         0x140004fbc
0000000140004f97  lea        rdx, [rip + 0x15212]
0000000140004f9e  mov        ecx, eax
0000000140004fa0  call       0x14000527c
0000000140004fa5  test       eax, eax
0000000140004fa7  je         0x140004fb7
0000000140004fa9  mov        dword ptr [rip + 0x15275], 0xfffffffe
0000000140004fb3  mov        al, 1
0000000140004fb5  jmp        0x140004fbe
0000000140004fb7  call       0x140004fc4
0000000140004fbc  xor        al, al
0000000140004fbe  add        rsp, 0x28
0000000140004fc2  ret        
0000000140004fc3  int3       
0000000140004fc4  sub        rsp, 0x28
0000000140004fc8  mov        ecx, dword ptr [rip + 0x14132]
0000000140004fce  cmp        ecx, -1
0000000140004fd1  je         0x140004fdf
0000000140004fd3  call       0x1400051ec
0000000140004fd8  or         dword ptr [rip + 0x14121], 0xffffffff
0000000140004fdf  mov        al, 1
0000000140004fe1  add        rsp, 0x28
0000000140004fe5  ret        
0000000140004fe6  int3       
0000000140004fe7  int3       
0000000140004fe8  sub        rsp, 0x28
0000000140004fec  xor        r8d, r8d
0000000140004fef  lea        rcx, [rip + 0x1523a]
0000000140004ff6  mov        edx, 0xfa0
0000000140004ffb  call       0x1400052d0
0000000140005000  test       eax, eax
0000000140005002  je         0x14000500e
0000000140005004  inc        dword ptr [rip + 0x1524e]
000000014000500a  mov        al, 1
000000014000500c  jmp        0x140005015
000000014000500e  call       0x14000501c
0000000140005013  xor        al, al
0000000140005015  add        rsp, 0x28
0000000140005019  ret        
000000014000501a  int3       
000000014000501b  int3       
000000014000501c  push       rbx
000000014000501e  sub        rsp, 0x20
0000000140005022  mov        ebx, dword ptr [rip + 0x15230]
0000000140005028  jmp        0x140005047
000000014000502a  lea        rax, [rip + 0x151ff]
0000000140005031  dec        ebx
0000000140005033  lea        rcx, [rbx + rbx*4]
0000000140005037  lea        rcx, [rax + rcx*8]
000000014000503b  call       qword ptr [rip + 0x912f] ; KERNEL32.dll!DeleteCriticalSection
0000000140005041  dec        dword ptr [rip + 0x15211]
0000000140005047  test       ebx, ebx
0000000140005049  jne        0x14000502a
000000014000504b  mov        al, 1
000000014000504d  add        rsp, 0x20
0000000140005051  pop        rbx
0000000140005052  ret        
0000000140005053  int3       
0000000140005054  mov        qword ptr [rsp + 8], rbx
0000000140005059  mov        qword ptr [rsp + 0x10], rbp
000000014000505e  mov        qword ptr [rsp + 0x18], rsi
0000000140005063  push       rdi
0000000140005064  push       r12
0000000140005066  push       r13
0000000140005068  push       r14
000000014000506a  push       r15
000000014000506c  sub        rsp, 0x20
0000000140005070  mov        edi, ecx
0000000140005072  lea        r15, [rip - 0x5079]
0000000140005079  or         r14, 0xffffffffffffffff
000000014000507d  mov        r12, r9
0000000140005080  mov        rbp, r8
0000000140005083  mov        r13, rdx
0000000140005086  mov        rax, qword ptr [r15 + rdi*8 + 0x1a2e0]
000000014000508e  nop        
000000014000508f  cmp        rax, r14
0000000140005092  je         0x140005183
0000000140005098  test       rax, rax
000000014000509b  jne        0x140005185
00000001400050a1  cmp        r8, r9
00000001400050a4  je         0x14000517b
00000001400050aa  mov        esi, dword ptr [rbp]
00000001400050ad  mov        rbx, qword ptr [r15 + rsi*8 + 0x1a2c8]
00000001400050b5  nop        
00000001400050b6  test       rbx, rbx
00000001400050b9  je         0x1400050c6
00000001400050bb  cmp        rbx, r14
00000001400050be  jne        0x14000515d
00000001400050c4  jmp        0x140005131
00000001400050c6  mov        r15, qword ptr [r15 + rsi*8 + 0x101c8]
00000001400050ce  xor        edx, edx
00000001400050d0  mov        rcx, r15
00000001400050d3  mov        r8d, 0x800
00000001400050d9  call       qword ptr [rip + 0x8fc1] ; KERNEL32.dll!LoadLibraryExW
00000001400050df  mov        rbx, rax
00000001400050e2  test       rax, rax
00000001400050e5  jne        0x14000513d
00000001400050e7  call       qword ptr [rip + 0x9063] ; KERNEL32.dll!GetLastError
00000001400050ed  cmp        eax, 0x57
00000001400050f0  jne        0x14000511f
00000001400050f2  lea        r8d, [rbx + 7]
00000001400050f6  mov        rcx, r15
00000001400050f9  lea        rdx, [rip + 0xb178] ; api-ms-
0000000140005100  call       0x140005448
0000000140005105  test       eax, eax
0000000140005107  je         0x14000511f
0000000140005109  xor        r8d, r8d
000000014000510c  xor        edx, edx
000000014000510e  mov        rcx, r15
0000000140005111  call       qword ptr [rip + 0x8f89] ; KERNEL32.dll!LoadLibraryExW
0000000140005117  mov        rbx, rax
000000014000511a  test       rax, rax
000000014000511d  jne        0x14000513d
000000014000511f  mov        rax, r14
0000000140005122  lea        r15, [rip - 0x5129]
0000000140005129  xchg       qword ptr [r15 + rsi*8 + 0x1a2c8], rax
0000000140005131  add        rbp, 4
0000000140005135  cmp        rbp, r12
0000000140005138  jmp        0x1400050a4
000000014000513d  mov        rax, rbx
0000000140005140  lea        r15, [rip - 0x5147]
0000000140005147  xchg       qword ptr [r15 + rsi*8 + 0x1a2c8], rax
000000014000514f  test       rax, rax
0000000140005152  je         0x14000515d
0000000140005154  mov        rcx, rbx
0000000140005157  call       qword ptr [rip + 0x8f2b] ; KERNEL32.dll!FreeLibrary
000000014000515d  mov        rdx, r13
0000000140005160  mov        rcx, rbx
0000000140005163  call       qword ptr [rip + 0x8f2f] ; KERNEL32.dll!GetProcAddress
0000000140005169  test       rax, rax
000000014000516c  je         0x14000517b
000000014000516e  mov        rcx, rax
0000000140005171  xchg       qword ptr [r15 + rdi*8 + 0x1a2e0], rcx
0000000140005179  jmp        0x140005185
000000014000517b  xchg       qword ptr [r15 + rdi*8 + 0x1a2e0], r14
0000000140005183  xor        eax, eax
0000000140005185  mov        rbx, qword ptr [rsp + 0x50]
000000014000518a  mov        rbp, qword ptr [rsp + 0x58]
000000014000518f  mov        rsi, qword ptr [rsp + 0x60]
0000000140005194  add        rsp, 0x20
0000000140005198  pop        r15
000000014000519a  pop        r14
000000014000519c  pop        r13
000000014000519e  pop        r12
00000001400051a0  pop        rdi
00000001400051a1  ret        
00000001400051a2  int3       
00000001400051a3  int3       
00000001400051a4  push       rbx
00000001400051a6  sub        rsp, 0x20
00000001400051aa  mov        rbx, rcx
00000001400051ad  lea        r9, [rip + 0xb0dc] ; FlsAlloc
00000001400051b4  xor        ecx, ecx
00000001400051b6  lea        r8, [rip + 0xb0cb]
00000001400051bd  lea        rdx, [rip + 0xb0cc] ; FlsAlloc
00000001400051c4  call       0x140005054
00000001400051c9  test       rax, rax
00000001400051cc  je         0x1400051dd
00000001400051ce  mov        rcx, rbx
00000001400051d1  add        rsp, 0x20
00000001400051d5  pop        rbx
00000001400051d6  jmp        qword ptr [rip + 0x90b3]
00000001400051dd  add        rsp, 0x20
00000001400051e1  pop        rbx
00000001400051e2  jmp        qword ptr [rip + 0x8f97] ; KERNEL32.dll!TlsAlloc
00000001400051e9  int3       
00000001400051ea  int3       
00000001400051eb  int3       
00000001400051ec  push       rbx
00000001400051ee  sub        rsp, 0x20
00000001400051f2  mov        ebx, ecx
00000001400051f4  lea        r9, [rip + 0xb0ad] ; FlsFree
00000001400051fb  mov        ecx, 1
0000000140005200  lea        r8, [rip + 0xb099]
0000000140005207  lea        rdx, [rip + 0xb09a] ; FlsFree
000000014000520e  call       0x140005054
0000000140005213  mov        ecx, ebx
0000000140005215  test       rax, rax
0000000140005218  je         0x140005226
000000014000521a  add        rsp, 0x20
000000014000521e  pop        rbx
000000014000521f  jmp        qword ptr [rip + 0x906a]
0000000140005226  add        rsp, 0x20
000000014000522a  pop        rbx
000000014000522b  jmp        qword ptr [rip + 0x8f66] ; KERNEL32.dll!TlsFree
0000000140005232  int3       
0000000140005233  int3       
0000000140005234  push       rbx
0000000140005236  sub        rsp, 0x20
000000014000523a  mov        ebx, ecx
000000014000523c  lea        r9, [rip + 0xb075] ; FlsGetValue
0000000140005243  mov        ecx, 2
0000000140005248  lea        r8, [rip + 0xb061]
000000014000524f  lea        rdx, [rip + 0xb062] ; FlsGetValue
0000000140005256  call       0x140005054
000000014000525b  mov        ecx, ebx
000000014000525d  test       rax, rax
0000000140005260  je         0x14000526e
0000000140005262  add        rsp, 0x20
0000000140005266  pop        rbx
0000000140005267  jmp        qword ptr [rip + 0x9022]
000000014000526e  add        rsp, 0x20
0000000140005272  pop        rbx
0000000140005273  jmp        qword ptr [rip + 0x8f0e] ; KERNEL32.dll!TlsGetValue
000000014000527a  int3       
000000014000527b  int3       
000000014000527c  mov        qword ptr [rsp + 8], rbx
0000000140005281  push       rdi
0000000140005282  sub        rsp, 0x20
0000000140005286  mov        rbx, rdx
0000000140005289  lea        r9, [rip + 0xb040] ; FlsSetValue
0000000140005290  mov        edi, ecx
0000000140005292  lea        rdx, [rip + 0xb037] ; FlsSetValue
0000000140005299  mov        ecx, 3
000000014000529e  lea        r8, [rip + 0xb023]
00000001400052a5  call       0x140005054
00000001400052aa  mov        rdx, rbx
00000001400052ad  mov        ecx, edi
00000001400052af  test       rax, rax
00000001400052b2  je         0x1400052bc
00000001400052b4  call       qword ptr [rip + 0x8fd6]
00000001400052ba  jmp        0x1400052c2
00000001400052bc  call       qword ptr [rip + 0x8ece] ; KERNEL32.dll!TlsSetValue
00000001400052c2  mov        rbx, qword ptr [rsp + 0x30]
00000001400052c7  add        rsp, 0x20
00000001400052cb  pop        rdi
00000001400052cc  ret        
00000001400052cd  int3       
00000001400052ce  int3       
00000001400052cf  int3       
00000001400052d0  mov        qword ptr [rsp + 8], rbx
00000001400052d5  mov        qword ptr [rsp + 0x10], rsi
00000001400052da  push       rdi
00000001400052db  sub        rsp, 0x20
00000001400052df  mov        esi, r8d
00000001400052e2  lea        r9, [rip + 0xafff] ; InitializeCriticalSectionEx
00000001400052e9  mov        ebx, edx
00000001400052eb  lea        r8, [rip + 0xafee]
00000001400052f2  mov        rdi, rcx
00000001400052f5  lea        rdx, [rip + 0xafec] ; InitializeCriticalSectionEx
00000001400052fc  mov        ecx, 4
0000000140005301  call       0x140005054
0000000140005306  mov        edx, ebx
0000000140005308  mov        rcx, rdi
000000014000530b  test       rax, rax
000000014000530e  je         0x14000531b
0000000140005310  mov        r8d, esi
0000000140005313  call       qword ptr [rip + 0x8f77]
0000000140005319  jmp        0x140005321
000000014000531b  call       qword ptr [rip + 0x8e57] ; KERNEL32.dll!InitializeCriticalSectionAndSpinCount
0000000140005321  mov        rbx, qword ptr [rsp + 0x30]
0000000140005326  mov        rsi, qword ptr [rsp + 0x38]
000000014000532b  add        rsp, 0x20
000000014000532f  pop        rdi
0000000140005330  ret        
0000000140005331  int3       
0000000140005332  int3       
0000000140005333  int3       
0000000140005334  int3       
0000000140005335  int3       
0000000140005336  int3       
0000000140005337  int3       
0000000140005338  int3       
0000000140005339  int3       
000000014000533a  int3       
000000014000533b  int3       
000000014000533c  int3       
000000014000533d  int3       
000000014000533e  int3       
000000014000533f  int3       
0000000140005340  int3       
0000000140005341  int3       
0000000140005342  int3       
0000000140005343  int3       
0000000140005344  int3       
0000000140005345  int3       
0000000140005346  nop        word ptr [rax + rax]
0000000140005350  sub        rsp, 0x28
0000000140005354  mov        qword ptr [rsp + 0x30], rcx
0000000140005359  mov        qword ptr [rsp + 0x38], rdx
000000014000535e  mov        dword ptr [rsp + 0x40], r8d
0000000140005363  mov        rdx, qword ptr [rdx]
0000000140005366  mov        rax, rcx
0000000140005369  call       0x140004e10
000000014000536e  call       rax
0000000140005370  call       0x140004e40
0000000140005375  mov        rcx, rax
0000000140005378  mov        rdx, qword ptr [rsp + 0x38]
000000014000537d  mov        rdx, qword ptr [rdx]
0000000140005380  mov        r8d, 2
0000000140005386  call       0x140004e10
000000014000538b  add        rsp, 0x28
000000014000538f  ret        
0000000140005390  int3       
0000000140005391  int3       
0000000140005392  int3       
0000000140005393  int3       
0000000140005394  int3       
0000000140005395  int3       
0000000140005396  nop        word ptr [rax + rax]
00000001400053a0  sub        rsp, 0x28
00000001400053a4  mov        qword ptr [rsp + 0x30], rcx
00000001400053a9  mov        qword ptr [rsp + 0x38], rdx
00000001400053ae  mov        dword ptr [rsp + 0x40], r8d
00000001400053b3  mov        rdx, qword ptr [rdx]
00000001400053b6  mov        rax, rcx
00000001400053b9  call       0x140004e10
00000001400053be  call       rax
00000001400053c0  call       0x140004e40
00000001400053c5  add        rsp, 0x28
00000001400053c9  ret        
00000001400053ca  int3       
00000001400053cb  int3       
00000001400053cc  int3       
00000001400053cd  int3       
00000001400053ce  int3       
00000001400053cf  int3       
00000001400053d0  sub        rsp, 0x28
00000001400053d4  mov        qword ptr [rsp + 0x30], rcx
00000001400053d9  mov        qword ptr [rsp + 0x38], rdx
00000001400053de  mov        rdx, qword ptr [rsp + 0x38]
00000001400053e3  mov        rdx, qword ptr [rdx]
00000001400053e6  mov        r8d, 2
00000001400053ec  call       0x140004e10
00000001400053f1  add        rsp, 0x28
00000001400053f5  ret        
00000001400053f6  int3       
00000001400053f7  int3       
00000001400053f8  int3       
00000001400053f9  int3       
00000001400053fa  int3       
00000001400053fb  int3       
00000001400053fc  nop        dword ptr [rax]
0000000140005400  sub        rsp, 0x28
0000000140005404  mov        qword ptr [rsp + 0x30], rcx
0000000140005409  mov        qword ptr [rsp + 0x38], rdx
000000014000540e  mov        qword ptr [rsp + 0x40], r8
0000000140005413  mov        dword ptr [rsp + 0x48], r9d
0000000140005418  mov        r8d, r9d
000000014000541b  mov        rax, rcx
000000014000541e  call       0x140004e10
0000000140005423  mov        rcx, qword ptr [rsp + 0x40]
0000000140005428  call       rax
000000014000542a  call       0x140004e40
000000014000542f  mov        rcx, rax
0000000140005432  mov        rdx, qword ptr [rsp + 0x38]
0000000140005437  mov        r8d, 2
000000014000543d  call       0x140004e10
0000000140005442  add        rsp, 0x28
0000000140005446  ret        
0000000140005447  int3       
0000000140005448  test       r8, r8
000000014000544b  jne        0x140005465
000000014000544d  xor        eax, eax
000000014000544f  ret        
0000000140005450  movzx      eax, word ptr [rcx]
0000000140005453  test       ax, ax
0000000140005456  je         0x14000546b
0000000140005458  cmp        ax, word ptr [rdx]
000000014000545b  jne        0x14000546b
000000014000545d  add        rcx, 2
0000000140005461  add        rdx, 2
0000000140005465  sub        r8, 1
0000000140005469  jne        0x140005450
000000014000546b  movzx      eax, word ptr [rcx]
000000014000546e  movzx      ecx, word ptr [rdx]
0000000140005471  sub        eax, ecx
0000000140005473  ret        
0000000140005474  mov        qword ptr [rsp + 8], rbx
0000000140005479  mov        qword ptr [rsp + 0x10], rsi
000000014000547e  push       rdi
000000014000547f  sub        rsp, 0x20
0000000140005483  mov        byte ptr [rcx + 0x18], 0
0000000140005487  mov        rdi, rcx
000000014000548a  lea        rsi, [rcx + 8]
000000014000548e  test       rdx, rdx
0000000140005491  je         0x140005498
0000000140005493  movups     xmm0, xmmword ptr [rdx]
0000000140005496  jmp        0x1400054a8
0000000140005498  cmp        dword ptr [rip + 0x150c5], 0
000000014000549f  jne        0x1400054ae
00000001400054a1  movups     xmm0, xmmword ptr [rip + 0x13de0]
00000001400054a8  movdqu     xmmword ptr [rsi], xmm0
00000001400054ac  jmp        0x1400054fc
00000001400054ae  call       0x140007260
00000001400054b3  mov        qword ptr [rdi], rax
00000001400054b6  mov        rdx, rsi
00000001400054b9  mov        rcx, qword ptr [rax + 0x90]
00000001400054c0  mov        qword ptr [rsi], rcx
00000001400054c3  mov        rcx, qword ptr [rax + 0x88]
00000001400054ca  mov        qword ptr [rdi + 0x10], rcx
00000001400054ce  mov        rcx, rax
00000001400054d1  call       0x140007514
00000001400054d6  mov        rcx, qword ptr [rdi]
00000001400054d9  lea        rdx, [rdi + 0x10]
00000001400054dd  call       0x140007548
00000001400054e2  mov        rcx, qword ptr [rdi]
00000001400054e5  mov        eax, dword ptr [rcx + 0x3a8]
00000001400054eb  test       al, 2
00000001400054ed  jne        0x1400054fc
00000001400054ef  or         eax, 2
00000001400054f2  mov        dword ptr [rcx + 0x3a8], eax
00000001400054f8  mov        byte ptr [rdi + 0x18], 1
00000001400054fc  mov        rbx, qword ptr [rsp + 0x30]
0000000140005501  mov        rax, rdi
0000000140005504  mov        rsi, qword ptr [rsp + 0x38]
0000000140005509  add        rsp, 0x20
000000014000550d  pop        rdi
000000014000550e  ret        
000000014000550f  int3       
0000000140005510  mov        r11, rdx
0000000140005513  mov        r10, rcx
0000000140005516  movzx      r8d, word ptr [r10]
000000014000551a  lea        r10, [r10 + 2]
000000014000551e  movzx      edx, word ptr [r11]
0000000140005522  lea        r11, [r11 + 2]
0000000140005526  lea        eax, [r8 - 0x41]
000000014000552a  cmp        eax, 0x19
000000014000552d  lea        r9d, [r8 + 0x20]
0000000140005531  lea        eax, [rdx - 0x41]
0000000140005534  cmova      r9d, r8d
0000000140005538  lea        ecx, [rdx + 0x20]
000000014000553b  cmp        eax, 0x19
000000014000553e  mov        eax, r9d
0000000140005541  cmova      ecx, edx
0000000140005544  sub        eax, ecx
0000000140005546  jne        0x14000554d
0000000140005548  test       r9d, r9d
000000014000554b  jne        0x140005516
000000014000554d  ret        
000000014000554e  int3       
000000014000554f  int3       
0000000140005550  sub        rsp, 0x28
0000000140005554  cmp        dword ptr [rip + 0x15009], 0
000000014000555b  jne        0x14000558a
000000014000555d  test       rcx, rcx
0000000140005560  jne        0x14000557c
0000000140005562  call       0x140006ec0
0000000140005567  mov        dword ptr [rax], 0x16
000000014000556d  call       0x140006ce4
0000000140005572  mov        eax, 0x7fffffff
0000000140005577  add        rsp, 0x28
000000014000557b  ret        
000000014000557c  test       rdx, rdx
000000014000557f  je         0x140005562
0000000140005581  add        rsp, 0x28
0000000140005585  jmp        0x140005510
000000014000558a  xor        r8d, r8d
000000014000558d  add        rsp, 0x28
0000000140005591  jmp        0x140005598
0000000140005596  int3       
0000000140005597  int3       
0000000140005598  mov        qword ptr [rsp + 8], rbx
000000014000559d  mov        qword ptr [rsp + 0x10], rbp
00000001400055a2  mov        qword ptr [rsp + 0x18], rsi
00000001400055a7  push       rdi
00000001400055a8  push       r14
00000001400055aa  push       r15
00000001400055ac  sub        rsp, 0x40
00000001400055b0  mov        rsi, rdx
00000001400055b3  mov        rbx, rcx
00000001400055b6  test       rcx, rcx
00000001400055b9  jne        0x1400055d5
00000001400055bb  call       0x140006ec0
00000001400055c0  mov        dword ptr [rax], 0x16
00000001400055c6  call       0x140006ce4
00000001400055cb  mov        eax, 0x7fffffff
00000001400055d0  jmp        0x1400056a6
00000001400055d5  test       rsi, rsi
00000001400055d8  je         0x1400055bb
00000001400055da  mov        rdx, r8
00000001400055dd  lea        rcx, [rsp + 0x20]
00000001400055e2  call       0x140005474
00000001400055e7  mov        rdx, qword ptr [rsp + 0x28]
00000001400055ec  cmp        qword ptr [rdx + 0x138], 0
00000001400055f4  jne        0x140005608
00000001400055f6  mov        rdx, rsi
00000001400055f9  mov        rcx, rbx
00000001400055fc  call       0x140005510
0000000140005601  mov        edi, eax
0000000140005603  jmp        0x140005691
0000000140005608  mov        r14d, 0x100
000000014000560e  lea        r15, [rip + 0xbceb]
0000000140005615  cmp        word ptr [rbx], r14w
0000000140005619  jae        0x140005635
000000014000561b  movzx      ecx, byte ptr [rbx]
000000014000561e  test       byte ptr [r15 + rcx*2 + 2], 1
0000000140005624  je         0x140005630
0000000140005626  mov        rax, qword ptr [rdx + 0x110]
000000014000562d  mov        cl, byte ptr [rcx + rax]
0000000140005630  movzx      eax, cl
0000000140005633  jmp        0x140005647
0000000140005635  movzx      ecx, word ptr [rbx]
0000000140005638  lea        rdx, [rsp + 0x28]
000000014000563d  call       0x140006d4c
0000000140005642  mov        rdx, qword ptr [rsp + 0x28]
0000000140005647  add        rbx, 2
000000014000564b  movzx      ebp, ax
000000014000564e  mov        edi, ebp
0000000140005650  cmp        word ptr [rsi], r14w
0000000140005654  jae        0x140005670
0000000140005656  movzx      ecx, byte ptr [rsi]
0000000140005659  test       byte ptr [r15 + rcx*2 + 2], 1
000000014000565f  je         0x14000566b
0000000140005661  mov        rax, qword ptr [rdx + 0x110]
0000000140005668  mov        cl, byte ptr [rcx + rax]
000000014000566b  movzx      eax, cl
000000014000566e  jmp        0x140005682
0000000140005670  movzx      ecx, word ptr [rsi]
0000000140005673  lea        rdx, [rsp + 0x28]
0000000140005678  call       0x140006d4c
000000014000567d  mov        rdx, qword ptr [rsp + 0x28]
0000000140005682  add        rsi, 2
0000000140005686  movzx      eax, ax
0000000140005689  sub        edi, eax
000000014000568b  jne        0x140005691
000000014000568d  test       ebp, ebp
000000014000568f  jne        0x140005615 ; fD93s
0000000140005691  cmp        byte ptr [rsp + 0x38], 0
0000000140005696  je         0x1400056a4
0000000140005698  mov        rax, qword ptr [rsp + 0x20]
000000014000569d  and        dword ptr [rax + 0x3a8], 0xfffffffd
00000001400056a4  mov        eax, edi
00000001400056a6  mov        rbx, qword ptr [rsp + 0x60]
00000001400056ab  mov        rbp, qword ptr [rsp + 0x68]
00000001400056b0  mov        rsi, qword ptr [rsp + 0x70]
00000001400056b5  add        rsp, 0x40
00000001400056b9  pop        r15
00000001400056bb  pop        r14
00000001400056bd  pop        rdi
00000001400056be  ret        
00000001400056bf  int3       
00000001400056c0  mov        qword ptr [rsp + 8], rbx
00000001400056c5  mov        qword ptr [rsp + 0x10], rbp
00000001400056ca  mov        qword ptr [rsp + 0x18], rsi
00000001400056cf  push       rdi
00000001400056d0  sub        rsp, 0x20
00000001400056d4  mov        rsi, rdx
00000001400056d7  mov        edi, ecx
00000001400056d9  call       0x1400073dc
00000001400056de  xor        r9d, r9d
00000001400056e1  mov        rbx, rax
00000001400056e4  test       rax, rax
00000001400056e7  je         0x14000582b
00000001400056ed  mov        rcx, qword ptr [rax]
00000001400056f0  mov        rax, rcx
00000001400056f3  lea        r8, [rcx + 0xc0]
00000001400056fa  cmp        rcx, r8
00000001400056fd  je         0x14000570c
00000001400056ff  cmp        dword ptr [rax], edi
0000000140005701  je         0x14000570f
0000000140005703  add        rax, 0x10
0000000140005707  cmp        rax, r8
000000014000570a  jne        0x1400056ff
000000014000570c  mov        rax, r9
000000014000570f  test       rax, rax
0000000140005712  je         0x14000582b
0000000140005718  mov        r8, qword ptr [rax + 8]
000000014000571c  test       r8, r8
000000014000571f  je         0x14000582b
0000000140005725  cmp        r8, 5
0000000140005729  jne        0x140005738
000000014000572b  mov        qword ptr [rax + 8], r9
000000014000572f  lea        eax, [r8 - 4]
0000000140005733  jmp        0x14000582d
0000000140005738  cmp        r8, 1
000000014000573c  jne        0x140005746
000000014000573e  or         eax, 0xffffffff
0000000140005741  jmp        0x14000582d
0000000140005746  mov        rbp, qword ptr [rbx + 8]
000000014000574a  mov        qword ptr [rbx + 8], rsi
000000014000574e  cmp        dword ptr [rax + 4], 8
0000000140005752  jne        0x140005812
0000000140005758  add        rcx, 0x30
000000014000575c  lea        rdx, [rcx + 0x90]
0000000140005763  jmp        0x14000576d
0000000140005765  mov        qword ptr [rcx + 8], r9
0000000140005769  add        rcx, 0x10
000000014000576d  cmp        rcx, rdx
0000000140005770  jne        0x140005765
0000000140005772  cmp        dword ptr [rax], 0xc000008d
0000000140005778  mov        edi, dword ptr [rbx + 0x10]
000000014000577b  je         0x1400057f7
000000014000577d  cmp        dword ptr [rax], 0xc000008e
0000000140005783  je         0x1400057f0
0000000140005785  cmp        dword ptr [rax], 0xc000008f
000000014000578b  je         0x1400057e9
000000014000578d  cmp        dword ptr [rax], 0xc0000090
0000000140005793  je         0x1400057e2
0000000140005795  cmp        dword ptr [rax], 0xc0000091
000000014000579b  je         0x1400057db
000000014000579d  cmp        dword ptr [rax], 0xc0000092
00000001400057a3  je         0x1400057d4
00000001400057a5  cmp        dword ptr [rax], 0xc0000093
00000001400057ab  je         0x1400057cd
00000001400057ad  cmp        dword ptr [rax], 0xc00002b4
00000001400057b3  je         0x1400057c6
00000001400057b5  cmp        dword ptr [rax], 0xc00002b5
00000001400057bb  mov        edx, edi
00000001400057bd  jne        0x1400057ff
00000001400057bf  mov        edx, 0x8d
00000001400057c4  jmp        0x1400057fc
00000001400057c6  mov        edx, 0x8e
00000001400057cb  jmp        0x1400057fc
00000001400057cd  mov        edx, 0x85
00000001400057d2  jmp        0x1400057fc
00000001400057d4  mov        edx, 0x8a
00000001400057d9  jmp        0x1400057fc
00000001400057db  mov        edx, 0x84
00000001400057e0  jmp        0x1400057fc
00000001400057e2  mov        edx, 0x81
00000001400057e7  jmp        0x1400057fc
00000001400057e9  mov        edx, 0x86
00000001400057ee  jmp        0x1400057fc
00000001400057f0  mov        edx, 0x83
00000001400057f5  jmp        0x1400057fc
00000001400057f7  mov        edx, 0x82
00000001400057fc  mov        dword ptr [rbx + 0x10], edx
00000001400057ff  mov        ecx, 8
0000000140005804  mov        rax, r8
0000000140005807  call       qword ptr [rip + 0x8a83]
000000014000580d  mov        dword ptr [rbx + 0x10], edi
0000000140005810  jmp        0x140005822
0000000140005812  mov        ecx, dword ptr [rax + 4]
0000000140005815  mov        qword ptr [rax + 8], r9
0000000140005819  mov        rax, r8
000000014000581c  call       qword ptr [rip + 0x8a6e]
0000000140005822  mov        qword ptr [rbx + 8], rbp
0000000140005826  jmp        0x14000573e
000000014000582b  xor        eax, eax
000000014000582d  mov        rbx, qword ptr [rsp + 0x30]
0000000140005832  mov        rbp, qword ptr [rsp + 0x38]
0000000140005837  mov        rsi, qword ptr [rsp + 0x40]
000000014000583c  add        rsp, 0x20
0000000140005840  pop        rdi
0000000140005841  ret        
0000000140005842  int3       
0000000140005843  int3       
0000000140005844  mov        eax, dword ptr [rip + 0x14ac6]
000000014000584a  ret        
000000014000584b  int3       
000000014000584c  mov        dword ptr [rip + 0x14abe], ecx
0000000140005852  ret        
0000000140005853  int3       
0000000140005854  mov        rdx, qword ptr [rip + 0x1386d]
000000014000585b  mov        ecx, edx
000000014000585d  xor        rdx, qword ptr [rip + 0x14ab4]
0000000140005864  and        ecx, 0x3f
0000000140005867  ror        rdx, cl
000000014000586a  test       rdx, rdx
000000014000586d  setne      al
0000000140005870  ret        
0000000140005871  int3       
0000000140005872  int3       
0000000140005873  int3       
0000000140005874  mov        qword ptr [rip + 0x14a9d], rcx
000000014000587b  ret        
000000014000587c  mov        rdx, qword ptr [rip + 0x13845]
0000000140005883  mov        r8, rcx
0000000140005886  mov        ecx, edx
0000000140005888  xor        rdx, qword ptr [rip + 0x14a89]
000000014000588f  and        ecx, 0x3f
0000000140005892  ror        rdx, cl
0000000140005895  test       rdx, rdx
0000000140005898  jne        0x14000589d
000000014000589a  xor        eax, eax
000000014000589c  ret        
000000014000589d  mov        rcx, r8
00000001400058a0  mov        rax, rdx
00000001400058a3  jmp        qword ptr [rip + 0x89e6]
00000001400058aa  int3       
00000001400058ab  int3       
00000001400058ac  mov        r8, qword ptr [rip + 0x13815]
00000001400058b3  mov        r9, rcx
00000001400058b6  mov        edx, r8d
00000001400058b9  mov        ecx, 0x40
00000001400058be  and        edx, 0x3f
00000001400058c1  sub        ecx, edx
00000001400058c3  ror        r9, cl
00000001400058c6  xor        r9, r8
00000001400058c9  mov        qword ptr [rip + 0x14a48], r9
00000001400058d0  ret        
00000001400058d1  int3       
00000001400058d2  int3       
00000001400058d3  int3       
00000001400058d4  mov        rax, rsp
00000001400058d7  mov        qword ptr [rax + 8], rbx
00000001400058db  mov        qword ptr [rax + 0x10], rsi
00000001400058df  mov        qword ptr [rax + 0x18], rdi
00000001400058e3  mov        qword ptr [rax + 0x20], r12
00000001400058e7  push       r15
00000001400058e9  mov        r10, qword ptr [rsp + 0x30]
00000001400058ee  xor        esi, esi
00000001400058f0  mov        rbx, r9
00000001400058f3  mov        qword ptr [r10], rsi
00000001400058f6  mov        qword ptr [r9], 1
00000001400058fd  test       rdx, rdx
0000000140005900  je         0x140005909
0000000140005902  mov        qword ptr [rdx], r8
0000000140005905  add        rdx, 8
0000000140005909  mov        r9b, sil
000000014000590c  mov        r12d, 0x22
0000000140005912  cmp        word ptr [rcx], r12w
0000000140005916  jne        0x140005929
0000000140005918  test       r9b, r9b
000000014000591b  movzx      eax, r12w
000000014000591f  sete       r9b
0000000140005923  add        rcx, 2
0000000140005927  jmp        0x140005948
0000000140005929  inc        qword ptr [r10]
000000014000592c  test       r8, r8
000000014000592f  je         0x14000593c
0000000140005931  movzx      eax, word ptr [rcx]
0000000140005934  mov        word ptr [r8], ax
0000000140005938  add        r8, 2
000000014000593c  movzx      eax, word ptr [rcx]
000000014000593f  add        rcx, 2
0000000140005943  test       ax, ax
0000000140005946  je         0x140005965
0000000140005948  test       r9b, r9b
000000014000594b  jne        0x140005912 ; fD9!u
000000014000594d  cmp        ax, 0x20
0000000140005951  je         0x140005959
0000000140005953  cmp        ax, 9
0000000140005957  jne        0x140005912 ; fD9!u
0000000140005959  test       r8, r8
000000014000595c  je         0x140005969
000000014000595e  mov        word ptr [r8 - 2], si
0000000140005963  jmp        0x140005969
0000000140005965  sub        rcx, 2
0000000140005969  mov        dil, sil
000000014000596c  mov        r15d, 0x5c
0000000140005972  movzx      eax, word ptr [rcx]
0000000140005975  test       ax, ax
0000000140005978  je         0x140005a52
000000014000597e  cmp        ax, 0x20
0000000140005982  je         0x14000598a
0000000140005984  cmp        ax, 9
0000000140005988  jne        0x140005993
000000014000598a  add        rcx, 2
000000014000598e  movzx      eax, word ptr [rcx]
0000000140005991  jmp        0x14000597e
0000000140005993  test       ax, ax
0000000140005996  je         0x140005a52
000000014000599c  test       rdx, rdx
000000014000599f  je         0x1400059a8
00000001400059a1  mov        qword ptr [rdx], r8
00000001400059a4  add        rdx, 8
00000001400059a8  inc        qword ptr [rbx]
00000001400059ab  mov        r11d, 1
00000001400059b1  mov        eax, esi
00000001400059b3  jmp        0x1400059bb
00000001400059b5  add        rcx, 2
00000001400059b9  inc        eax
00000001400059bb  movzx      r9d, word ptr [rcx]
00000001400059bf  cmp        r9w, r15w
00000001400059c3  je         0x1400059b5
00000001400059c5  cmp        r9w, r12w
00000001400059c9  jne        0x140005a02
00000001400059cb  test       r11b, al
00000001400059ce  jne        0x1400059ec
00000001400059d0  test       dil, dil
00000001400059d3  je         0x1400059e2
00000001400059d5  cmp        word ptr [rcx + 2], r12w
00000001400059da  jne        0x1400059e2
00000001400059dc  add        rcx, 2
00000001400059e0  jmp        0x1400059ec
00000001400059e2  test       dil, dil
00000001400059e5  mov        r11d, esi
00000001400059e8  sete       dil
00000001400059ec  shr        eax, 1
00000001400059ee  jmp        0x140005a02
00000001400059f0  dec        eax
00000001400059f2  test       r8, r8
00000001400059f5  je         0x1400059ff
00000001400059f7  mov        word ptr [r8], r15w
00000001400059fb  add        r8, 2
00000001400059ff  inc        qword ptr [r10]
0000000140005a02  test       eax, eax
0000000140005a04  jne        0x1400059f0
0000000140005a06  movzx      eax, word ptr [rcx]
0000000140005a09  test       ax, ax
0000000140005a0c  je         0x140005a3d
0000000140005a0e  test       dil, dil
0000000140005a11  jne        0x140005a1f
0000000140005a13  cmp        ax, 0x20
0000000140005a17  je         0x140005a3d
0000000140005a19  cmp        ax, 9
0000000140005a1d  je         0x140005a3d
0000000140005a1f  test       r11d, r11d
0000000140005a22  je         0x140005a34
0000000140005a24  test       r8, r8
0000000140005a27  je         0x140005a31
0000000140005a29  mov        word ptr [r8], ax
0000000140005a2d  add        r8, 2
0000000140005a31  inc        qword ptr [r10]
0000000140005a34  add        rcx, 2
0000000140005a38  jmp        0x1400059ab
0000000140005a3d  test       r8, r8
0000000140005a40  je         0x140005a4a
0000000140005a42  mov        word ptr [r8], si
0000000140005a46  add        r8, 2
0000000140005a4a  inc        qword ptr [r10]
0000000140005a4d  jmp        0x140005972
0000000140005a52  test       rdx, rdx
0000000140005a55  je         0x140005a5a
0000000140005a57  mov        qword ptr [rdx], rsi
0000000140005a5a  inc        qword ptr [rbx]
0000000140005a5d  mov        rbx, qword ptr [rsp + 0x10]
0000000140005a62  mov        rsi, qword ptr [rsp + 0x18]
0000000140005a67  mov        rdi, qword ptr [rsp + 0x20]
0000000140005a6c  mov        r12, qword ptr [rsp + 0x28]
0000000140005a71  pop        r15
0000000140005a73  ret        
0000000140005a74  push       rbx
0000000140005a76  sub        rsp, 0x20
0000000140005a7a  movabs     rax, 0x1fffffffffffffff
0000000140005a84  mov        r9, rdx
0000000140005a87  cmp        rcx, rax
0000000140005a8a  jae        0x140005ac9
0000000140005a8c  xor        edx, edx
0000000140005a8e  or         rax, 0xffffffffffffffff
0000000140005a92  div        r8
0000000140005a95  cmp        r9, rax
0000000140005a98  jae        0x140005ac9
0000000140005a9a  shl        rcx, 3
0000000140005a9e  imul       r9, r8
0000000140005aa2  mov        rax, rcx
0000000140005aa5  not        rax
0000000140005aa8  cmp        rax, r9
0000000140005aab  jbe        0x140005ac9
0000000140005aad  add        rcx, r9
0000000140005ab0  mov        edx, 1
0000000140005ab5  call       0x1400076f8
0000000140005aba  xor        ecx, ecx
0000000140005abc  mov        rbx, rax
0000000140005abf  call       0x140007770
0000000140005ac4  mov        rax, rbx
0000000140005ac7  jmp        0x140005acb
0000000140005ac9  xor        eax, eax
0000000140005acb  add        rsp, 0x20
0000000140005acf  pop        rbx
0000000140005ad0  ret        
0000000140005ad1  int3       
0000000140005ad2  int3       
0000000140005ad3  int3       
0000000140005ad4  mov        qword ptr [rsp + 8], rbx
0000000140005ad9  push       rbp
0000000140005ada  push       rsi
0000000140005adb  push       rdi
0000000140005adc  push       r14
0000000140005ade  push       r15
0000000140005ae0  mov        rbp, rsp
0000000140005ae3  sub        rsp, 0x30
0000000140005ae7  xor        edi, edi
0000000140005ae9  mov        r14d, ecx
0000000140005aec  test       ecx, ecx
0000000140005aee  je         0x140005c43
0000000140005af4  lea        eax, [rcx - 1]
0000000140005af7  cmp        eax, 1
0000000140005afa  jbe        0x140005b12
0000000140005afc  call       0x140006ec0
0000000140005b01  lea        ebx, [rdi + 0x16]
0000000140005b04  mov        dword ptr [rax], ebx
0000000140005b06  call       0x140006ce4
0000000140005b0b  mov        edi, ebx
0000000140005b0d  jmp        0x140005c43
0000000140005b12  lea        rbx, [rip + 0x14807]
0000000140005b19  mov        r8d, 0x104
0000000140005b1f  mov        rdx, rbx
0000000140005b22  xor        ecx, ecx
0000000140005b24  call       qword ptr [rip + 0x8566] ; KERNEL32.dll!GetModuleFileNameW
0000000140005b2a  mov        rsi, qword ptr [rip + 0x14ac7]
0000000140005b31  mov        qword ptr [rip + 0x14a98], rbx
0000000140005b38  test       rsi, rsi
0000000140005b3b  je         0x140005b42
0000000140005b3d  cmp        word ptr [rsi], di
0000000140005b40  jne        0x140005b45
0000000140005b42  mov        rsi, rbx
0000000140005b45  lea        rax, [rbp + 0x48]
0000000140005b49  mov        qword ptr [rbp + 0x40], rdi
0000000140005b4d  lea        r9, [rbp + 0x40]
0000000140005b51  mov        qword ptr [rsp + 0x20], rax
0000000140005b56  xor        r8d, r8d
0000000140005b59  mov        qword ptr [rbp + 0x48], rdi
0000000140005b5d  xor        edx, edx
0000000140005b5f  mov        rcx, rsi
0000000140005b62  call       0x1400058d4
0000000140005b67  mov        r15, qword ptr [rbp + 0x40]
0000000140005b6b  mov        r8d, 2
0000000140005b71  mov        rdx, qword ptr [rbp + 0x48]
0000000140005b75  mov        rcx, r15
0000000140005b78  call       0x140005a74
0000000140005b7d  mov        rbx, rax
0000000140005b80  test       rax, rax
0000000140005b83  jne        0x140005b9d
0000000140005b85  call       0x140006ec0
0000000140005b8a  mov        ebx, 0xc
0000000140005b8f  xor        ecx, ecx
0000000140005b91  mov        dword ptr [rax], ebx
0000000140005b93  call       0x140007770
0000000140005b98  jmp        0x140005b0b
0000000140005b9d  lea        r8, [rax + r15*8]
0000000140005ba1  mov        rdx, rbx
0000000140005ba4  lea        rax, [rbp + 0x48]
0000000140005ba8  mov        rcx, rsi
0000000140005bab  lea        r9, [rbp + 0x40]
0000000140005baf  mov        qword ptr [rsp + 0x20], rax
0000000140005bb4  call       0x1400058d4
0000000140005bb9  cmp        r14d, 1
0000000140005bbd  jne        0x140005bd5
0000000140005bbf  mov        eax, dword ptr [rbp + 0x40]
0000000140005bc2  dec        eax
0000000140005bc4  mov        qword ptr [rip + 0x14a1d], rbx
0000000140005bcb  mov        dword ptr [rip + 0x14a07], eax
0000000140005bd1  xor        ecx, ecx
0000000140005bd3  jmp        0x140005c3e
0000000140005bd5  lea        rdx, [rbp + 0x38]
0000000140005bd9  mov        qword ptr [rbp + 0x38], rdi
0000000140005bdd  mov        rcx, rbx
0000000140005be0  call       0x140007d1c
0000000140005be5  mov        esi, eax
0000000140005be7  test       eax, eax
0000000140005be9  je         0x140005c04
0000000140005beb  mov        rcx, qword ptr [rbp + 0x38]
0000000140005bef  call       0x140007770
0000000140005bf4  mov        rcx, rbx
0000000140005bf7  mov        qword ptr [rbp + 0x38], rdi
0000000140005bfb  call       0x140007770
0000000140005c00  mov        edi, esi
0000000140005c02  jmp        0x140005c43
0000000140005c04  mov        rdx, qword ptr [rbp + 0x38]
0000000140005c08  mov        rcx, rdi
0000000140005c0b  mov        rax, rdx
0000000140005c0e  cmp        qword ptr [rdx], rdi
0000000140005c11  je         0x140005c1f
0000000140005c13  lea        rax, [rax + 8]
0000000140005c17  inc        rcx
0000000140005c1a  cmp        qword ptr [rax], rdi
0000000140005c1d  jne        0x140005c13
0000000140005c1f  mov        dword ptr [rip + 0x149b3], ecx
0000000140005c25  xor        ecx, ecx
0000000140005c27  mov        qword ptr [rbp + 0x38], rdi
0000000140005c2b  mov        qword ptr [rip + 0x149b6], rdx
0000000140005c32  call       0x140007770
0000000140005c37  mov        rcx, rbx
0000000140005c3a  mov        qword ptr [rbp + 0x38], rdi
0000000140005c3e  call       0x140007770
0000000140005c43  mov        rbx, qword ptr [rsp + 0x60]
0000000140005c48  mov        eax, edi
0000000140005c4a  add        rsp, 0x30
0000000140005c4e  pop        r15
0000000140005c50  pop        r14
0000000140005c52  pop        rdi
0000000140005c53  pop        rsi
0000000140005c54  pop        rbp
0000000140005c55  ret        
0000000140005c56  int3       
0000000140005c57  int3       
0000000140005c58  mov        qword ptr [rsp + 8], rbx
0000000140005c5d  push       rdi
0000000140005c5e  sub        rsp, 0x20
0000000140005c62  xor        edi, edi
0000000140005c64  cmp        qword ptr [rip + 0x148cd], rdi
0000000140005c6b  je         0x140005c71
0000000140005c6d  xor        eax, eax
0000000140005c6f  jmp        0x140005cb4
0000000140005c71  call       0x1400088c4
0000000140005c76  mov        rbx, rax
0000000140005c79  test       rax, rax
0000000140005c7c  jne        0x140005c83
0000000140005c7e  or         edi, 0xffffffff
0000000140005c81  jmp        0x140005caa
0000000140005c83  mov        rcx, rbx
0000000140005c86  call       0x140005cc0
0000000140005c8b  test       rax, rax
0000000140005c8e  jne        0x140005c95
0000000140005c90  or         edi, 0xffffffff
0000000140005c93  jmp        0x140005ca3
0000000140005c95  mov        qword ptr [rip + 0x148a4], rax
0000000140005c9c  mov        qword ptr [rip + 0x14895], rax
0000000140005ca3  xor        ecx, ecx
0000000140005ca5  call       0x140007770
0000000140005caa  mov        rcx, rbx
0000000140005cad  call       0x140007770
0000000140005cb2  mov        eax, edi
0000000140005cb4  mov        rbx, qword ptr [rsp + 0x30]
0000000140005cb9  add        rsp, 0x20
0000000140005cbd  pop        rdi
0000000140005cbe  ret        
0000000140005cbf  int3       
0000000140005cc0  mov        qword ptr [rsp + 8], rbx
0000000140005cc5  mov        qword ptr [rsp + 0x10], rbp
0000000140005cca  mov        qword ptr [rsp + 0x18], rsi
0000000140005ccf  push       rdi
0000000140005cd0  push       r14
0000000140005cd2  push       r15
0000000140005cd4  sub        rsp, 0x30
0000000140005cd8  mov        r14, rcx
0000000140005cdb  xor        esi, esi
0000000140005cdd  mov        ecx, esi
0000000140005cdf  mov        r8, r14
0000000140005ce2  movzx      edx, word ptr [r14]
0000000140005ce6  jmp        0x140005d11
0000000140005ce8  cmp        dx, 0x3d
0000000140005cec  lea        rax, [rcx + 1]
0000000140005cf0  cmove      rax, rcx
0000000140005cf4  mov        rcx, rax
0000000140005cf7  or         rax, 0xffffffffffffffff
0000000140005cfb  inc        rax
0000000140005cfe  cmp        word ptr [r8 + rax*2], si
0000000140005d03  jne        0x140005cfb
0000000140005d05  lea        r8, [r8 + rax*2]
0000000140005d09  add        r8, 2
0000000140005d0d  movzx      edx, word ptr [r8]
0000000140005d11  test       dx, dx
0000000140005d14  jne        0x140005ce8
0000000140005d16  inc        rcx
0000000140005d19  mov        edx, 8
0000000140005d1e  call       0x1400076f8
0000000140005d23  mov        rbx, rax
0000000140005d26  test       rax, rax
0000000140005d29  je         0x140005d9d
0000000140005d2b  mov        r15, rax
0000000140005d2e  movzx      eax, word ptr [r14]
0000000140005d32  test       ax, ax
0000000140005d35  je         0x140005d9a
0000000140005d37  or         rbp, 0xffffffffffffffff
0000000140005d3b  inc        rbp
0000000140005d3e  cmp        word ptr [r14 + rbp*2], si
0000000140005d43  jne        0x140005d3b
0000000140005d45  inc        rbp
0000000140005d48  cmp        ax, 0x3d
0000000140005d4c  je         0x140005d83
0000000140005d4e  mov        edx, 2
0000000140005d53  mov        rcx, rbp
0000000140005d56  call       0x1400076f8
0000000140005d5b  mov        rdi, rax
0000000140005d5e  test       rax, rax
0000000140005d61  je         0x140005d89
0000000140005d63  mov        r8, r14
0000000140005d66  mov        rdx, rbp
0000000140005d69  mov        rcx, rax
0000000140005d6c  call       0x1400075ac
0000000140005d71  xor        ecx, ecx
0000000140005d73  test       eax, eax
0000000140005d75  jne        0x140005dc0
0000000140005d77  mov        qword ptr [r15], rdi
0000000140005d7a  add        r15, 8
0000000140005d7e  call       0x140007770
0000000140005d83  lea        r14, [r14 + rbp*2]
0000000140005d87  jmp        0x140005d2e
0000000140005d89  mov        rcx, rbx
0000000140005d8c  call       0x140005dd4
0000000140005d91  xor        ecx, ecx
0000000140005d93  call       0x140007770
0000000140005d98  jmp        0x140005d9d
0000000140005d9a  mov        rsi, rbx
0000000140005d9d  xor        ecx, ecx
0000000140005d9f  call       0x140007770
0000000140005da4  mov        rbx, qword ptr [rsp + 0x50]
0000000140005da9  mov        rax, rsi
0000000140005dac  mov        rsi, qword ptr [rsp + 0x60]
0000000140005db1  mov        rbp, qword ptr [rsp + 0x58]
0000000140005db6  add        rsp, 0x30
0000000140005dba  pop        r15
0000000140005dbc  pop        r14
0000000140005dbe  pop        rdi
0000000140005dbf  ret        
0000000140005dc0  xor        r9d, r9d
0000000140005dc3  mov        qword ptr [rsp + 0x20], rsi
0000000140005dc8  xor        r8d, r8d
0000000140005dcb  xor        edx, edx
0000000140005dcd  call       0x140006d04
0000000140005dd2  int3       
0000000140005dd3  int3       
0000000140005dd4  test       rcx, rcx
0000000140005dd7  je         0x140005e14
0000000140005dd9  mov        qword ptr [rsp + 8], rbx
0000000140005dde  push       rdi
0000000140005ddf  sub        rsp, 0x20
0000000140005de3  mov        rax, qword ptr [rcx]
0000000140005de6  mov        rbx, rcx
0000000140005de9  mov        rdi, rcx
0000000140005dec  jmp        0x140005dfd
0000000140005dee  mov        rcx, rax
0000000140005df1  call       0x140007770
0000000140005df6  lea        rdi, [rdi + 8]
0000000140005dfa  mov        rax, qword ptr [rdi]
0000000140005dfd  test       rax, rax
0000000140005e00  jne        0x140005dee
0000000140005e02  mov        rcx, rbx
0000000140005e05  call       0x140007770
0000000140005e0a  mov        rbx, qword ptr [rsp + 0x30]
0000000140005e0f  add        rsp, 0x20
0000000140005e13  pop        rdi
0000000140005e14  ret        
0000000140005e15  int3       
0000000140005e16  int3       
0000000140005e17  int3       
0000000140005e18  sub        rsp, 0x28
0000000140005e1c  mov        rcx, qword ptr [rcx]
0000000140005e1f  cmp        rcx, qword ptr [rip + 0x14722]
0000000140005e26  je         0x140005e2d
0000000140005e28  call       0x140005dd4
0000000140005e2d  add        rsp, 0x28
0000000140005e31  ret        
0000000140005e32  int3       
0000000140005e33  int3       
0000000140005e34  sub        rsp, 0x28
0000000140005e38  mov        rcx, qword ptr [rcx]
0000000140005e3b  cmp        rcx, qword ptr [rip + 0x146fe]
0000000140005e42  je         0x140005e49
0000000140005e44  call       0x140005dd4
0000000140005e49  add        rsp, 0x28
0000000140005e4d  ret        
0000000140005e4e  int3       
0000000140005e4f  int3       
0000000140005e50  sub        rsp, 0x28
0000000140005e54  lea        rcx, [rip + 0x146d5]
0000000140005e5b  call       0x140005e18
0000000140005e60  lea        rcx, [rip + 0x146d1]
0000000140005e67  call       0x140005e34
0000000140005e6c  mov        rcx, qword ptr [rip + 0x146d5]
0000000140005e73  call       0x140005dd4
0000000140005e78  mov        rcx, qword ptr [rip + 0x146c1]
0000000140005e7f  add        rsp, 0x28
0000000140005e83  jmp        0x140005dd4
0000000140005e88  jmp        0x140005c58
0000000140005e8d  int3       
0000000140005e8e  int3       
0000000140005e8f  int3       
0000000140005e90  mov        rax, qword ptr [rip + 0x14761]
0000000140005e97  lea        rcx, [rip + 0x146b2]
0000000140005e9e  xor        r8d, r8d
0000000140005ea1  test       rax, rax
0000000140005ea4  mov        dl, r8b
0000000140005ea7  cmovne     rcx, rax
0000000140005eab  movzx      eax, word ptr [rcx]
0000000140005eae  cmp        ax, 0x20
0000000140005eb2  ja         0x140005ebd
0000000140005eb4  test       ax, ax
0000000140005eb7  je         0x140005ee0
0000000140005eb9  test       dl, dl
0000000140005ebb  je         0x140005ece
0000000140005ebd  cmp        ax, 0x22
0000000140005ec1  jne        0x140005ec8
0000000140005ec3  test       dl, dl
0000000140005ec5  sete       dl
0000000140005ec8  add        rcx, 2
0000000140005ecc  jmp        0x140005eab
0000000140005ece  cmp        ax, 0x20
0000000140005ed2  ja         0x140005ee0
0000000140005ed4  add        rcx, 2
0000000140005ed8  movzx      eax, word ptr [rcx]
0000000140005edb  test       ax, ax
0000000140005ede  jne        0x140005ece
0000000140005ee0  mov        rax, rcx
0000000140005ee3  ret        
0000000140005ee4  mov        qword ptr [rsp + 8], rbx
0000000140005ee9  mov        qword ptr [rsp + 0x10], rbp
0000000140005eee  mov        qword ptr [rsp + 0x18], rsi
0000000140005ef3  push       rdi
0000000140005ef4  sub        rsp, 0x20
0000000140005ef8  xor        ebp, ebp
0000000140005efa  mov        rdi, rdx
0000000140005efd  sub        rdi, rcx
0000000140005f00  mov        rbx, rcx
0000000140005f03  add        rdi, 7
0000000140005f07  mov        esi, ebp
0000000140005f09  shr        rdi, 3
0000000140005f0d  cmp        rcx, rdx
0000000140005f10  cmova      rdi, rbp
0000000140005f14  test       rdi, rdi
0000000140005f17  je         0x140005f33
0000000140005f19  mov        rax, qword ptr [rbx]
0000000140005f1c  test       rax, rax
0000000140005f1f  je         0x140005f27
0000000140005f21  call       qword ptr [rip + 0x8369]
0000000140005f27  add        rbx, 8
0000000140005f2b  inc        rsi
0000000140005f2e  cmp        rsi, rdi
0000000140005f31  jne        0x140005f19
0000000140005f33  mov        rbx, qword ptr [rsp + 0x30]
0000000140005f38  mov        rbp, qword ptr [rsp + 0x38]
0000000140005f3d  mov        rsi, qword ptr [rsp + 0x40]
0000000140005f42  add        rsp, 0x20
0000000140005f46  pop        rdi
0000000140005f47  ret        
0000000140005f48  mov        qword ptr [rsp + 8], rbx
0000000140005f4d  push       rdi
0000000140005f4e  sub        rsp, 0x20
0000000140005f52  mov        rdi, rdx
0000000140005f55  mov        rbx, rcx
0000000140005f58  cmp        rcx, rdx
0000000140005f5b  je         0x140005f78
0000000140005f5d  mov        rax, qword ptr [rbx]
0000000140005f60  test       rax, rax
0000000140005f63  je         0x140005f6f
0000000140005f65  call       qword ptr [rip + 0x8325]
0000000140005f6b  test       eax, eax
0000000140005f6d  jne        0x140005f7a
0000000140005f6f  add        rbx, 8
0000000140005f73  cmp        rbx, rdi
0000000140005f76  jmp        0x140005f5b
0000000140005f78  xor        eax, eax
0000000140005f7a  mov        rbx, qword ptr [rsp + 0x30]
0000000140005f7f  add        rsp, 0x20
0000000140005f83  pop        rdi
0000000140005f84  ret        
0000000140005f85  int3       
0000000140005f86  int3       
0000000140005f87  int3       
0000000140005f88  mov        qword ptr [rsp + 8], rbx
0000000140005f8d  mov        qword ptr [rsp + 0x20], r9
0000000140005f92  push       rdi
0000000140005f93  sub        rsp, 0x20
0000000140005f97  mov        rbx, r9
0000000140005f9a  mov        rdi, r8
0000000140005f9d  mov        ecx, dword ptr [rdx]
0000000140005f9f  call       0x1400089b8
0000000140005fa4  nop        
0000000140005fa5  mov        rcx, rdi
0000000140005fa8  call       0x140005fc0
0000000140005fad  nop        
0000000140005fae  mov        ecx, dword ptr [rbx]
0000000140005fb0  call       0x140008a18
0000000140005fb5  mov        rbx, qword ptr [rsp + 0x30]
0000000140005fba  add        rsp, 0x20
0000000140005fbe  pop        rdi
0000000140005fbf  ret        
0000000140005fc0  push       rbx
0000000140005fc2  sub        rsp, 0x20
0000000140005fc6  mov        rbx, rcx
0000000140005fc9  cmp        byte ptr [rip + 0x14590], 0
0000000140005fd0  jne        0x140006075
0000000140005fd6  mov        eax, 1
0000000140005fdb  xchg       dword ptr [rip + 0x14573], eax
0000000140005fe1  mov        rax, qword ptr [rcx]
0000000140005fe4  mov        ecx, dword ptr [rax]
0000000140005fe6  test       ecx, ecx
0000000140005fe8  jne        0x14000601e
0000000140005fea  mov        rax, qword ptr [rip + 0x130d7]
0000000140005ff1  mov        ecx, eax
0000000140005ff3  and        ecx, 0x3f
0000000140005ff6  mov        rdx, qword ptr [rip + 0x1455b]
0000000140005ffd  cmp        rdx, rax
0000000140006000  je         0x140006015
0000000140006002  xor        rax, rdx
0000000140006005  ror        rax, cl
0000000140006008  xor        r8d, r8d
000000014000600b  xor        edx, edx
000000014000600d  xor        ecx, ecx
000000014000600f  call       qword ptr [rip + 0x827b]
0000000140006015  lea        rcx, [rip + 0x14554]
000000014000601c  jmp        0x14000602a
000000014000601e  cmp        ecx, 1
0000000140006021  jne        0x140006030
0000000140006023  lea        rcx, [rip + 0x1455e]
000000014000602a  call       0x140006758
000000014000602f  nop        
0000000140006030  mov        rax, qword ptr [rbx]
0000000140006033  cmp        dword ptr [rax], 0
0000000140006036  jne        0x14000604b
0000000140006038  lea        rdx, [rip + 0x82e1]
000000014000603f  lea        rcx, [rip + 0x82ba]
0000000140006046  call       0x140005ee4
000000014000604b  lea        rdx, [rip + 0x82de]
0000000140006052  lea        rcx, [rip + 0x82cf]
0000000140006059  call       0x140005ee4
000000014000605e  mov        rax, qword ptr [rbx + 8]
0000000140006062  cmp        dword ptr [rax], 0
0000000140006065  jne        0x140006075
0000000140006067  mov        byte ptr [rip + 0x144f2], 1
000000014000606e  mov        rax, qword ptr [rbx + 0x10]
0000000140006072  mov        byte ptr [rax], 1
0000000140006075  add        rsp, 0x20
0000000140006079  pop        rbx
000000014000607a  ret        
000000014000607b  call       0x1400069a8
0000000140006080  nop        
0000000140006081  int3       
0000000140006082  int3       
0000000140006083  int3       
0000000140006084  xor        eax, eax
0000000140006086  cmp        ecx, 0xe06d7363
000000014000608c  sete       al
000000014000608f  ret        
0000000140006090  mov        qword ptr [rsp + 8], rbx
0000000140006095  mov        dword ptr [rsp + 0x18], r8d
000000014000609a  mov        dword ptr [rsp + 0x10], edx
000000014000609e  push       rbp
000000014000609f  mov        rbp, rsp
00000001400060a2  sub        rsp, 0x50
00000001400060a6  mov        ebx, ecx
00000001400060a8  test       r8d, r8d
00000001400060ab  jne        0x1400060f7
00000001400060ad  xor        ecx, ecx
00000001400060af  call       qword ptr [rip + 0x808b] ; KERNEL32.dll!GetModuleHandleW
00000001400060b5  test       rax, rax
00000001400060b8  je         0x1400060f7
00000001400060ba  mov        ecx, 0x5a4d
00000001400060bf  cmp        word ptr [rax], cx
00000001400060c2  jne        0x1400060f7
00000001400060c4  movsxd     rcx, dword ptr [rax + 0x3c]
00000001400060c8  add        rcx, rax
00000001400060cb  cmp        dword ptr [rcx], 0x4550
00000001400060d1  jne        0x1400060f7
00000001400060d3  mov        eax, 0x20b
00000001400060d8  cmp        word ptr [rcx + 0x18], ax
00000001400060dc  jne        0x1400060f7
00000001400060de  cmp        dword ptr [rcx + 0x84], 0xe
00000001400060e5  jbe        0x1400060f7
00000001400060e7  cmp        dword ptr [rcx + 0xf8], 0
00000001400060ee  je         0x1400060f7
00000001400060f0  mov        ecx, ebx
00000001400060f2  call       0x140006198
00000001400060f7  lea        rax, [rbp + 0x18]
00000001400060fb  mov        byte ptr [rbp + 0x28], 0
00000001400060ff  mov        qword ptr [rbp - 0x20], rax
0000000140006103  lea        r9, [rbp - 0x2c]
0000000140006107  lea        rax, [rbp + 0x20]
000000014000610b  mov        qword ptr [rbp - 0x18], rax
000000014000610f  lea        r8, [rbp - 0x20]
0000000140006113  lea        rax, [rbp + 0x28]
0000000140006117  mov        qword ptr [rbp - 0x10], rax
000000014000611b  lea        rdx, [rbp - 0x28]
000000014000611f  mov        eax, 2
0000000140006124  lea        rcx, [rbp - 0x30]
0000000140006128  mov        dword ptr [rbp - 0x2c], eax
000000014000612b  mov        dword ptr [rbp - 0x28], eax
000000014000612e  call       0x140005f88
0000000140006133  cmp        dword ptr [rbp + 0x20], 0
0000000140006137  je         0x140006144
0000000140006139  mov        rbx, qword ptr [rsp + 0x60]
000000014000613e  add        rsp, 0x50
0000000140006142  pop        rbp
0000000140006143  ret        
0000000140006144  mov        ecx, ebx
0000000140006146  call       0x14000614c
000000014000614b  int3       
000000014000614c  push       rbx
000000014000614e  sub        rsp, 0x20
0000000140006152  mov        ebx, ecx
0000000140006154  call       0x140008a34
0000000140006159  cmp        eax, 1
000000014000615c  je         0x140006186
000000014000615e  mov        rax, qword ptr gs:[0x60]
0000000140006167  mov        edx, dword ptr [rax + 0xbc]
000000014000616d  shr        edx, 8
0000000140006170  test       dl, 1
0000000140006173  jne        0x140006186
0000000140006175  call       qword ptr [rip + 0x7f75] ; KERNEL32.dll!GetCurrentProcess
000000014000617b  mov        rcx, rax
000000014000617e  mov        edx, ebx
0000000140006180  call       qword ptr [rip + 0x7f72] ; KERNEL32.dll!TerminateProcess
0000000140006186  mov        ecx, ebx
0000000140006188  call       0x140006198
000000014000618d  mov        ecx, ebx
000000014000618f  call       qword ptr [rip + 0x8013] ; KERNEL32.dll!ExitProcess
0000000140006195  int3       
0000000140006196  int3       
0000000140006197  int3       
0000000140006198  push       rbx
000000014000619a  sub        rsp, 0x20
000000014000619e  and        qword ptr [rsp + 0x38], 0
00000001400061a4  lea        r8, [rsp + 0x38]
00000001400061a9  mov        ebx, ecx
00000001400061ab  lea        rdx, [rip + 0xa236] ; mscoree.dll
00000001400061b2  xor        ecx, ecx
00000001400061b4  call       qword ptr [rip + 0x7ff6] ; KERNEL32.dll!GetModuleHandleExW
00000001400061ba  test       eax, eax
00000001400061bc  je         0x1400061dd
00000001400061be  mov        rcx, qword ptr [rsp + 0x38]
00000001400061c3  lea        rdx, [rip + 0xa236] ; CorExitProcess
00000001400061ca  call       qword ptr [rip + 0x7ec8] ; KERNEL32.dll!GetProcAddress
00000001400061d0  test       rax, rax
00000001400061d3  je         0x1400061dd
00000001400061d5  mov        ecx, ebx
00000001400061d7  call       qword ptr [rip + 0x80b3]
00000001400061dd  mov        rcx, qword ptr [rsp + 0x38]
00000001400061e2  test       rcx, rcx
00000001400061e5  je         0x1400061ed
00000001400061e7  call       qword ptr [rip + 0x7e9b] ; KERNEL32.dll!FreeLibrary
00000001400061ed  add        rsp, 0x20
00000001400061f1  pop        rbx
00000001400061f2  ret        
00000001400061f3  int3       
00000001400061f4  mov        qword ptr [rip + 0x1435d], rcx
00000001400061fb  ret        
00000001400061fc  mov        edx, 2
0000000140006201  xor        ecx, ecx
0000000140006203  lea        r8d, [rdx - 1]
0000000140006207  jmp        0x140006090
000000014000620c  xor        edx, edx
000000014000620e  xor        ecx, ecx
0000000140006210  lea        r8d, [rdx + 1]
0000000140006214  jmp        0x140006090
0000000140006219  int3       
000000014000621a  int3       
000000014000621b  int3       
000000014000621c  xor        r8d, r8d
000000014000621f  lea        edx, [r8 + 2]
0000000140006223  jmp        0x140006090
0000000140006228  sub        rsp, 0x28
000000014000622c  mov        r8, qword ptr [rip + 0x12e95]
0000000140006233  mov        rdx, rcx
0000000140006236  mov        eax, r8d
0000000140006239  mov        ecx, 0x40
000000014000623e  and        eax, 0x3f
0000000140006241  sub        ecx, eax
0000000140006243  cmp        qword ptr [rip + 0x1430e], r8
000000014000624a  jne        0x14000625e
000000014000624c  ror        rdx, cl
000000014000624f  xor        rdx, r8
0000000140006252  mov        qword ptr [rip + 0x142ff], rdx
0000000140006259  add        rsp, 0x28
000000014000625d  ret        
000000014000625e  call       0x1400069a8
0000000140006263  int3       
0000000140006264  xor        r8d, r8d
0000000140006267  xor        edx, edx
0000000140006269  jmp        0x140006090
000000014000626e  int3       
000000014000626f  int3       
0000000140006270  sub        rsp, 0x28
0000000140006274  lea        eax, [rcx - 0x4000]
000000014000627a  test       eax, 0xffff3fff
000000014000627f  jne        0x140006293
0000000140006281  cmp        ecx, 0xc000
0000000140006287  je         0x140006293
0000000140006289  xchg       dword ptr [rip + 0x145a5], ecx
000000014000628f  xor        eax, eax
0000000140006291  jmp        0x1400062a8
0000000140006293  call       0x140006ec0
0000000140006298  mov        dword ptr [rax], 0x16
000000014000629e  call       0x140006ce4
00000001400062a3  mov        eax, 0x16
00000001400062a8  add        rsp, 0x28
00000001400062ac  ret        
00000001400062ad  int3       
00000001400062ae  int3       
00000001400062af  int3       
00000001400062b0  mov        qword ptr [rsp + 8], rbx
00000001400062b5  mov        qword ptr [rsp + 0x10], rsi
00000001400062ba  mov        qword ptr [rsp + 0x20], r9
00000001400062bf  push       rdi
00000001400062c0  sub        rsp, 0x30
00000001400062c4  mov        rdi, r9
00000001400062c7  mov        ecx, dword ptr [rdx]
00000001400062c9  call       0x1400089b8
00000001400062ce  nop        
00000001400062cf  lea        rbx, [rip + 0x142d2]
00000001400062d6  lea        rsi, [rip + 0x12e53]
00000001400062dd  mov        qword ptr [rsp + 0x20], rbx
00000001400062e2  lea        rax, [rip + 0x142c7]
00000001400062e9  cmp        rbx, rax
00000001400062ec  je         0x140006307
00000001400062ee  cmp        qword ptr [rbx], rsi
00000001400062f1  je         0x140006301
00000001400062f3  mov        rdx, rsi
00000001400062f6  mov        rcx, rbx
00000001400062f9  call       0x140009ab8
00000001400062fe  mov        qword ptr [rbx], rax
0000000140006301  add        rbx, 8
0000000140006305  jmp        0x1400062dd
0000000140006307  mov        ecx, dword ptr [rdi]
0000000140006309  call       0x140008a18
000000014000630e  mov        rbx, qword ptr [rsp + 0x40]
0000000140006313  mov        rsi, qword ptr [rsp + 0x48]
0000000140006318  add        rsp, 0x30
000000014000631c  pop        rdi
000000014000631d  ret        
000000014000631e  int3       
000000014000631f  int3       
0000000140006320  mov        eax, 1
0000000140006325  xchg       dword ptr [rip + 0x14239], eax
000000014000632b  ret        
000000014000632c  int3       
000000014000632d  int3       
000000014000632e  int3       
000000014000632f  int3       
0000000140006330  mov        r11, rsp
0000000140006333  sub        rsp, 0x28
0000000140006337  mov        eax, 4
000000014000633c  lea        r9, [r11 + 0x10]
0000000140006340  lea        r8, [r11 + 8]
0000000140006344  mov        dword ptr [rsp + 0x38], eax
0000000140006348  lea        rdx, [r11 + 0x18]
000000014000634c  mov        dword ptr [rsp + 0x40], eax
0000000140006350  lea        rcx, [r11 + 8]
0000000140006354  call       0x1400062b0
0000000140006359  add        rsp, 0x28
000000014000635d  ret        
000000014000635e  int3       
000000014000635f  int3       
0000000140006360  push       rbx
0000000140006362  sub        rsp, 0x20
0000000140006366  mov        ebx, ecx
0000000140006368  call       0x140007260
000000014000636d  mov        r8d, dword ptr [rax + 0x3a8]
0000000140006374  mov        edx, r8d
0000000140006377  and        dl, 2
000000014000637a  neg        dl
000000014000637c  sbb        ecx, ecx
000000014000637e  cmp        ebx, -1
0000000140006381  je         0x1400063b9
0000000140006383  test       ebx, ebx
0000000140006385  je         0x1400063c0
0000000140006387  cmp        ebx, 1
000000014000638a  je         0x1400063ac
000000014000638c  cmp        ebx, 2
000000014000638f  je         0x1400063a6
0000000140006391  call       0x140006ec0
0000000140006396  mov        dword ptr [rax], 0x16
000000014000639c  call       0x140006ce4
00000001400063a1  or         eax, 0xffffffff
00000001400063a4  jmp        0x1400063c3
00000001400063a6  and        r8d, 0xfffffffd
00000001400063aa  jmp        0x1400063b0
00000001400063ac  or         r8d, 2
00000001400063b0  mov        dword ptr [rax + 0x3a8], r8d
00000001400063b7  jmp        0x1400063c0
00000001400063b9  or         dword ptr [rip + 0x134c0], 0xffffffff
00000001400063c0  lea        eax, [rcx + 2]
00000001400063c3  add        rsp, 0x20
00000001400063c7  pop        rbx
00000001400063c8  ret        
00000001400063c9  int3       
00000001400063ca  int3       
00000001400063cb  int3       
00000001400063cc  mov        eax, dword ptr [rip + 0x14196]
00000001400063d2  ret        
00000001400063d3  int3       
00000001400063d4  sub        rsp, 0x28
00000001400063d8  cmp        ecx, 1
00000001400063db  jbe        0x1400063f2
00000001400063dd  call       0x140006ec0
00000001400063e2  mov        dword ptr [rax], 0x16
00000001400063e8  call       0x140006ce4
00000001400063ed  or         eax, 0xffffffff
00000001400063f0  jmp        0x1400063fa
00000001400063f2  xchg       dword ptr [rip + 0x14170], ecx
00000001400063f8  mov        eax, ecx
00000001400063fa  add        rsp, 0x28
00000001400063fe  ret        
00000001400063ff  int3       
0000000140006400  lea        rax, [rip + 0x14165]
0000000140006407  ret        
0000000140006408  mov        qword ptr [rsp + 8], rbx
000000014000640d  mov        qword ptr [rsp + 0x20], r9
0000000140006412  push       rdi
0000000140006413  sub        rsp, 0x20
0000000140006417  mov        rbx, r9
000000014000641a  mov        rdi, r8
000000014000641d  mov        ecx, dword ptr [rdx]
000000014000641f  call       0x1400089b8
0000000140006424  nop        
0000000140006425  mov        rcx, rdi
0000000140006428  call       0x140006480
000000014000642d  mov        edi, eax
000000014000642f  mov        ecx, dword ptr [rbx]
0000000140006431  call       0x140008a18
0000000140006436  mov        eax, edi
0000000140006438  mov        rbx, qword ptr [rsp + 0x30]
000000014000643d  add        rsp, 0x20
0000000140006441  pop        rdi
0000000140006442  ret        
0000000140006443  int3       
0000000140006444  mov        qword ptr [rsp + 8], rbx
0000000140006449  mov        qword ptr [rsp + 0x20], r9
000000014000644e  push       rdi
000000014000644f  sub        rsp, 0x20
0000000140006453  mov        rbx, r9
0000000140006456  mov        rdi, r8
0000000140006459  mov        ecx, dword ptr [rdx]
000000014000645b  call       0x1400089b8
0000000140006460  nop        
0000000140006461  mov        rcx, rdi
0000000140006464  call       0x140006630
0000000140006469  mov        edi, eax
000000014000646b  mov        ecx, dword ptr [rbx]
000000014000646d  call       0x140008a18
0000000140006472  mov        eax, edi
0000000140006474  mov        rbx, qword ptr [rsp + 0x30]
0000000140006479  add        rsp, 0x20
000000014000647d  pop        rdi
000000014000647e  ret        
000000014000647f  int3       
0000000140006480  mov        qword ptr [rsp + 0x10], rbx
0000000140006485  mov        qword ptr [rsp + 0x18], rbp
000000014000648a  mov        qword ptr [rsp + 0x20], rsi
000000014000648f  push       rdi
0000000140006490  push       r14
0000000140006492  push       r15
0000000140006494  sub        rsp, 0x20
0000000140006498  mov        rax, qword ptr [rcx]
000000014000649b  xor        ebp, ebp
000000014000649d  mov        r15, rcx
00000001400064a0  mov        rbx, qword ptr [rax]
00000001400064a3  test       rbx, rbx
00000001400064a6  je         0x140006614
00000001400064ac  mov        r10, qword ptr [rip + 0x12c15]
00000001400064b3  mov        r9, qword ptr [rbx + 8]
00000001400064b7  mov        rsi, r10
00000001400064ba  xor        rsi, qword ptr [rbx]
00000001400064bd  xor        r9, r10
00000001400064c0  mov        rbx, qword ptr [rbx + 0x10]
00000001400064c4  mov        ecx, r10d
00000001400064c7  and        ecx, 0x3f
00000001400064ca  xor        rbx, r10
00000001400064cd  ror        rbx, cl
00000001400064d0  ror        rsi, cl
00000001400064d3  ror        r9, cl
00000001400064d6  cmp        r9, rbx
00000001400064d9  jne        0x140006586
00000001400064df  sub        rbx, rsi
00000001400064e2  mov        eax, 0x200
00000001400064e7  sar        rbx, 3
00000001400064eb  cmp        rbx, rax
00000001400064ee  mov        rdi, rbx
00000001400064f1  cmova      rdi, rax
00000001400064f5  lea        eax, [rbp + 0x20]
00000001400064f8  add        rdi, rbx
00000001400064fb  cmove      rdi, rax
00000001400064ff  cmp        rdi, rbx
0000000140006502  jb         0x140006522
0000000140006504  lea        r8d, [rbp + 8]
0000000140006508  mov        rdx, rdi
000000014000650b  mov        rcx, rsi
000000014000650e  call       0x14000a094
0000000140006513  xor        ecx, ecx
0000000140006515  mov        r14, rax
0000000140006518  call       0x140007770
000000014000651d  test       r14, r14
0000000140006520  jne        0x14000654a
0000000140006522  lea        rdi, [rbx + 4]
0000000140006526  mov        r8d, 8
000000014000652c  mov        rdx, rdi
000000014000652f  mov        rcx, rsi
0000000140006532  call       0x14000a094
0000000140006537  xor        ecx, ecx
0000000140006539  mov        r14, rax
000000014000653c  call       0x140007770
0000000140006541  test       r14, r14
0000000140006544  je         0x140006614
000000014000654a  mov        r10, qword ptr [rip + 0x12b77]
0000000140006551  lea        r9, [r14 + rbx*8]
0000000140006555  lea        rbx, [r14 + rdi*8]
0000000140006559  mov        rsi, r14
000000014000655c  mov        rcx, rbx
000000014000655f  sub        rcx, r9
0000000140006562  add        rcx, 7
0000000140006566  shr        rcx, 3
000000014000656a  cmp        r9, rbx
000000014000656d  cmova      rcx, rbp
0000000140006571  test       rcx, rcx
0000000140006574  je         0x140006586
0000000140006576  mov        rax, r10
0000000140006579  mov        rdi, r9
000000014000657c  rep stosq  qword ptr [rdi], rax
000000014000657f  mov        r10, qword ptr [rip + 0x12b42]
0000000140006586  mov        r8d, 0x40
000000014000658c  lea        rdi, [r9 + 8]
0000000140006590  mov        ecx, r8d
0000000140006593  mov        eax, r10d
0000000140006596  and        eax, 0x3f
0000000140006599  sub        ecx, eax
000000014000659b  mov        rax, qword ptr [r15 + 8]
000000014000659f  mov        rdx, qword ptr [rax]
00000001400065a2  mov        eax, r8d
00000001400065a5  ror        rdx, cl
00000001400065a8  xor        rdx, r10
00000001400065ab  mov        qword ptr [r9], rdx
00000001400065ae  mov        rdx, qword ptr [rip + 0x12b13]
00000001400065b5  mov        ecx, edx
00000001400065b7  and        ecx, 0x3f
00000001400065ba  sub        eax, ecx
00000001400065bc  mov        cl, al
00000001400065be  mov        rax, qword ptr [r15]
00000001400065c1  ror        rsi, cl
00000001400065c4  xor        rsi, rdx
00000001400065c7  mov        rcx, qword ptr [rax]
00000001400065ca  mov        qword ptr [rcx], rsi
00000001400065cd  mov        ecx, r8d
00000001400065d0  mov        rdx, qword ptr [rip + 0x12af1]
00000001400065d7  mov        eax, edx
00000001400065d9  and        eax, 0x3f
00000001400065dc  sub        ecx, eax
00000001400065de  mov        rax, qword ptr [r15]
00000001400065e1  ror        rdi, cl
00000001400065e4  xor        rdi, rdx
00000001400065e7  mov        rdx, qword ptr [rax]
00000001400065ea  mov        qword ptr [rdx + 8], rdi
00000001400065ee  mov        rdx, qword ptr [rip + 0x12ad3]
00000001400065f5  mov        eax, edx
00000001400065f7  and        eax, 0x3f
00000001400065fa  sub        r8d, eax
00000001400065fd  mov        rax, qword ptr [r15]
0000000140006600  mov        cl, r8b
0000000140006603  ror        rbx, cl
0000000140006606  xor        rbx, rdx
0000000140006609  mov        rcx, qword ptr [rax]
000000014000660c  xor        eax, eax
000000014000660e  mov        qword ptr [rcx + 0x10], rbx
0000000140006612  jmp        0x140006617
0000000140006614  or         eax, 0xffffffff
0000000140006617  mov        rbx, qword ptr [rsp + 0x48]
000000014000661c  mov        rbp, qword ptr [rsp + 0x50]
0000000140006621  mov        rsi, qword ptr [rsp + 0x58]
0000000140006626  add        rsp, 0x20
000000014000662a  pop        r15
000000014000662c  pop        r14
000000014000662e  pop        rdi
000000014000662f  ret        
0000000140006630  mov        qword ptr [rsp + 8], rbx
0000000140006635  mov        qword ptr [rsp + 0x10], rbp
000000014000663a  mov        qword ptr [rsp + 0x18], rsi
000000014000663f  push       rdi
0000000140006640  push       r14
0000000140006642  push       r15
0000000140006644  sub        rsp, 0x20
0000000140006648  mov        rax, qword ptr [rcx]
000000014000664b  mov        rsi, rcx
000000014000664e  mov        rbx, qword ptr [rax]
0000000140006651  test       rbx, rbx
0000000140006654  jne        0x14000665e
0000000140006656  or         eax, 0xffffffff
0000000140006659  jmp        0x14000672d
000000014000665e  mov        r8, qword ptr [rip + 0x12a63]
0000000140006665  mov        ecx, r8d
0000000140006668  mov        rdi, r8
000000014000666b  xor        rdi, qword ptr [rbx]
000000014000666e  and        ecx, 0x3f
0000000140006671  mov        rbx, qword ptr [rbx + 8]
0000000140006675  ror        rdi, cl
0000000140006678  xor        rbx, r8
000000014000667b  ror        rbx, cl
000000014000667e  lea        rax, [rdi - 1]
0000000140006682  cmp        rax, -3
0000000140006686  ja         0x14000672b
000000014000668c  mov        ecx, r8d
000000014000668f  mov        r14, r8
0000000140006692  and        ecx, 0x3f
0000000140006695  mov        r15, rdi
0000000140006698  mov        rbp, rbx
000000014000669b  sub        rbx, 8
000000014000669f  cmp        rbx, rdi
00000001400066a2  jb         0x1400066f9
00000001400066a4  mov        rax, qword ptr [rbx]
00000001400066a7  cmp        rax, r14
00000001400066aa  je         0x14000669b
00000001400066ac  xor        rax, r8
00000001400066af  mov        qword ptr [rbx], r14
00000001400066b2  ror        rax, cl
00000001400066b5  call       qword ptr [rip + 0x7bd5]
00000001400066bb  mov        r8, qword ptr [rip + 0x12a06]
00000001400066c2  mov        rax, qword ptr [rsi]
00000001400066c5  mov        ecx, r8d
00000001400066c8  and        ecx, 0x3f
00000001400066cb  mov        rdx, qword ptr [rax]
00000001400066ce  mov        r9, qword ptr [rdx]
00000001400066d1  mov        rax, qword ptr [rdx + 8]
00000001400066d5  xor        r9, r8
00000001400066d8  xor        rax, r8
00000001400066db  ror        r9, cl
00000001400066de  ror        rax, cl
00000001400066e1  cmp        r9, r15
00000001400066e4  jne        0x1400066eb
00000001400066e6  cmp        rax, rbp
00000001400066e9  je         0x14000669b
00000001400066eb  mov        r15, r9
00000001400066ee  mov        rdi, r9
00000001400066f1  mov        rbp, rax
00000001400066f4  mov        rbx, rax
00000001400066f7  jmp        0x14000669b
00000001400066f9  cmp        rdi, -1
00000001400066fd  je         0x14000670e
00000001400066ff  mov        rcx, rdi
0000000140006702  call       0x140007770
0000000140006707  mov        r8, qword ptr [rip + 0x129ba]
000000014000670e  mov        rax, qword ptr [rsi]
0000000140006711  mov        rcx, qword ptr [rax]
0000000140006714  mov        qword ptr [rcx], r8
0000000140006717  mov        rax, qword ptr [rsi]
000000014000671a  mov        rcx, qword ptr [rax]
000000014000671d  mov        qword ptr [rcx + 8], r8
0000000140006721  mov        rax, qword ptr [rsi]
0000000140006724  mov        rcx, qword ptr [rax]
0000000140006727  mov        qword ptr [rcx + 0x10], r8
000000014000672b  xor        eax, eax
000000014000672d  mov        rbx, qword ptr [rsp + 0x40]
0000000140006732  mov        rbp, qword ptr [rsp + 0x48]
0000000140006737  mov        rsi, qword ptr [rsp + 0x50]
000000014000673c  add        rsp, 0x20
0000000140006740  pop        r15
0000000140006742  pop        r14
0000000140006744  pop        rdi
0000000140006745  ret        
0000000140006746  int3       
0000000140006747  int3       
0000000140006748  mov        rdx, rcx
000000014000674b  lea        rcx, [rip + 0x13e1e]
0000000140006752  jmp        0x1400067bc
0000000140006757  int3       
0000000140006758  mov        r11, rsp
000000014000675b  mov        qword ptr [r11 + 8], rcx
000000014000675f  sub        rsp, 0x38
0000000140006763  lea        rax, [r11 + 8]
0000000140006767  mov        qword ptr [r11 - 0x18], rax
000000014000676b  lea        r9, [r11 + 0x18]
000000014000676f  mov        eax, 2
0000000140006774  lea        r8, [r11 - 0x18]
0000000140006778  lea        rdx, [r11 + 0x20]
000000014000677c  mov        dword ptr [rsp + 0x50], eax
0000000140006780  lea        rcx, [r11 + 0x10]
0000000140006784  mov        dword ptr [rsp + 0x58], eax
0000000140006788  call       0x140006444
000000014000678d  add        rsp, 0x38
0000000140006791  ret        
0000000140006792  int3       
0000000140006793  int3       
0000000140006794  test       rcx, rcx
0000000140006797  jne        0x14000679d
0000000140006799  or         eax, 0xffffffff
000000014000679c  ret        
000000014000679d  mov        rax, qword ptr [rcx + 0x10]
00000001400067a1  cmp        qword ptr [rcx], rax
00000001400067a4  jne        0x1400067b8
00000001400067a6  mov        rax, qword ptr [rip + 0x1291b]
00000001400067ad  mov        qword ptr [rcx], rax
00000001400067b0  mov        qword ptr [rcx + 8], rax
00000001400067b4  mov        qword ptr [rcx + 0x10], rax
00000001400067b8  xor        eax, eax
00000001400067ba  ret        
00000001400067bb  int3       
00000001400067bc  mov        qword ptr [rsp + 0x10], rdx
00000001400067c1  mov        qword ptr [rsp + 8], rcx
00000001400067c6  push       rbp
00000001400067c7  mov        rbp, rsp
00000001400067ca  sub        rsp, 0x40
00000001400067ce  lea        rax, [rbp + 0x10]
00000001400067d2  mov        qword ptr [rbp - 0x18], rax
00000001400067d6  lea        r9, [rbp + 0x28]
00000001400067da  lea        rax, [rbp + 0x18]
00000001400067de  mov        qword ptr [rbp - 0x10], rax
00000001400067e2  lea        r8, [rbp - 0x18]
00000001400067e6  mov        eax, 2
00000001400067eb  lea        rdx, [rbp - 0x20]
00000001400067ef  lea        rcx, [rbp + 0x20]
00000001400067f3  mov        dword ptr [rbp + 0x28], eax
00000001400067f6  mov        dword ptr [rbp - 0x20], eax
00000001400067f9  call       0x140006408
00000001400067fe  add        rsp, 0x40
0000000140006802  pop        rbp
0000000140006803  ret        
0000000140006804  int3       
0000000140006805  int3       
0000000140006806  int3       
0000000140006807  int3       
0000000140006808  int3       
0000000140006809  int3       
000000014000680a  int3       
000000014000680b  int3       
000000014000680c  int3       
000000014000680d  int3       
000000014000680e  int3       
000000014000680f  int3       
0000000140006810  lea        rax, [rip + 0x12919]
0000000140006817  mov        qword ptr [rip + 0x13d8a], rax
000000014000681e  mov        al, 1
0000000140006820  ret        
0000000140006821  int3       
0000000140006822  int3       
0000000140006823  int3       
0000000140006824  int3       
0000000140006825  int3       
0000000140006826  int3       
0000000140006827  int3       
0000000140006828  int3       
0000000140006829  int3       
000000014000682a  int3       
000000014000682b  int3       
000000014000682c  int3       
000000014000682d  int3       
000000014000682e  int3       
000000014000682f  int3       
0000000140006830  sub        rsp, 0x28
0000000140006834  lea        rcx, [rip + 0x13d35]
000000014000683b  call       0x140006794
0000000140006840  lea        rcx, [rip + 0x13d41]
0000000140006847  call       0x140006794
000000014000684c  mov        al, 1
000000014000684e  add        rsp, 0x28
0000000140006852  ret        
0000000140006853  int3       
0000000140006854  int3       
0000000140006855  int3       
0000000140006856  int3       
0000000140006857  int3       
0000000140006858  int3       
0000000140006859  int3       
000000014000685a  int3       
000000014000685b  int3       
000000014000685c  int3       
000000014000685d  int3       
000000014000685e  int3       
000000014000685f  int3       
0000000140006860  sub        rsp, 0x28
0000000140006864  call       0x140005e50
0000000140006869  mov        al, 1
000000014000686b  add        rsp, 0x28
000000014000686f  ret        
0000000140006870  push       rbx
0000000140006872  sub        rsp, 0x20
0000000140006876  mov        rbx, qword ptr [rip + 0x1284b]
000000014000687d  mov        rcx, rbx
0000000140006880  call       0x140006c2c
0000000140006885  mov        rcx, rbx
0000000140006888  call       0x14000a218
000000014000688d  mov        rcx, rbx
0000000140006890  call       0x14000a2fc
0000000140006895  mov        rcx, rbx
0000000140006898  call       0x140005874
000000014000689d  mov        rcx, rbx
00000001400068a0  call       0x1400061f4
00000001400068a5  mov        al, 1
00000001400068a7  add        rsp, 0x20
00000001400068ab  pop        rbx
00000001400068ac  ret        
00000001400068ad  int3       
00000001400068ae  int3       
00000001400068af  int3       
00000001400068b0  xor        ecx, ecx
00000001400068b2  jmp        0x140004b7c
00000001400068b7  int3       
00000001400068b8  int3       
00000001400068b9  int3       
00000001400068ba  int3       
00000001400068bb  int3       
00000001400068bc  int3       
00000001400068bd  int3       
00000001400068be  int3       
00000001400068bf  int3       
00000001400068c0  push       rbx
00000001400068c2  sub        rsp, 0x20
00000001400068c6  mov        rcx, qword ptr [rip + 0x13cf3]
00000001400068cd  or         eax, 0xffffffff
00000001400068d0  lock xadd  dword ptr [rcx], eax
00000001400068d4  cmp        eax, 1
00000001400068d7  jne        0x1400068f8
00000001400068d9  mov        rcx, qword ptr [rip + 0x13ce0]
00000001400068e0  lea        rbx, [rip + 0x129b9]
00000001400068e7  cmp        rcx, rbx
00000001400068ea  je         0x1400068f8
00000001400068ec  call       0x140007770
00000001400068f1  mov        qword ptr [rip + 0x13cc8], rbx
00000001400068f8  mov        al, 1
00000001400068fa  add        rsp, 0x20
00000001400068fe  pop        rbx
00000001400068ff  ret        
0000000140006900  sub        rsp, 0x28
0000000140006904  mov        rcx, qword ptr [rip + 0x1453d]
000000014000690b  call       0x140007770
0000000140006910  mov        rcx, qword ptr [rip + 0x14539]
0000000140006917  and        qword ptr [rip + 0x14529], 0
000000014000691f  call       0x140007770
0000000140006924  mov        rcx, qword ptr [rip + 0x13cb5]
000000014000692b  and        qword ptr [rip + 0x1451d], 0
0000000140006933  call       0x140007770
0000000140006938  mov        rcx, qword ptr [rip + 0x13ca9]
000000014000693f  and        qword ptr [rip + 0x13c99], 0
0000000140006947  call       0x140007770
000000014000694c  and        qword ptr [rip + 0x13c94], 0
0000000140006954  mov        al, 1
0000000140006956  add        rsp, 0x28
000000014000695a  ret        
000000014000695b  int3       
000000014000695c  lea        rdx, [rip + 0x9bad]
0000000140006963  lea        rcx, [rip + 0x9aa6]
000000014000696a  jmp        0x14000a15c
000000014000696f  int3       
0000000140006970  sub        rsp, 0x28
0000000140006974  test       cl, cl
0000000140006976  je         0x14000698e
0000000140006978  cmp        qword ptr [rip + 0x144c0], 0
0000000140006980  je         0x140006987
0000000140006982  call       0x14000a82c
0000000140006987  mov        al, 1
0000000140006989  add        rsp, 0x28
000000014000698d  ret        
000000014000698e  lea        rdx, [rip + 0x9b7b]
0000000140006995  lea        rcx, [rip + 0x9a74]
000000014000699c  add        rsp, 0x28
00000001400069a0  jmp        0x14000a1dc
00000001400069a5  int3       
00000001400069a6  int3       
00000001400069a7  int3       
00000001400069a8  sub        rsp, 0x28
00000001400069ac  call       0x140007260
00000001400069b1  mov        rax, qword ptr [rax + 0x18]
00000001400069b5  test       rax, rax
00000001400069b8  je         0x1400069c2
00000001400069ba  call       qword ptr [rip + 0x78d0]
00000001400069c0  jmp        0x1400069c2
00000001400069c2  call       0x1400069dc
00000001400069c7  nop        
00000001400069c8  mov        dword ptr [rsp + 0x10], 0
00000001400069d0  mov        eax, dword ptr [rsp + 0x10]
00000001400069d4  jmp        0x140007770
00000001400069d9  int3       
00000001400069da  int3       
00000001400069db  int3       
00000001400069dc  sub        rsp, 0x28
00000001400069e0  call       0x14000a2cc
00000001400069e5  test       rax, rax
00000001400069e8  je         0x1400069f4
00000001400069ea  mov        ecx, 0x16
00000001400069ef  call       0x14000a31c
00000001400069f4  test       byte ptr [rip + 0x12715], 2
00000001400069fb  je         0x140006a27
00000001400069fd  mov        ecx, 0x17
0000000140006a02  call       qword ptr [rip + 0x76f8] ; KERNEL32.dll!IsProcessorFeaturePresent
0000000140006a08  test       eax, eax
0000000140006a0a  je         0x140006a13
0000000140006a0c  mov        ecx, 7
0000000140006a11  int        0x29
0000000140006a13  mov        r8d, 1
0000000140006a19  mov        edx, 0x40000015
0000000140006a1e  lea        ecx, [r8 + 2]
0000000140006a22  call       0x140006ad0
0000000140006a27  mov        ecx, 3
0000000140006a2c  call       0x14000621c
0000000140006a31  int3       
0000000140006a32  int3       
0000000140006a33  int3       
0000000140006a34  jmp        0x1400076f8
0000000140006a39  int3       
0000000140006a3a  int3       
0000000140006a3b  int3       
0000000140006a3c  int3       
0000000140006a3d  int3       
0000000140006a3e  int3       
0000000140006a3f  int3       
0000000140006a40  int3       
0000000140006a41  int3       
0000000140006a42  int3       
0000000140006a43  int3       
0000000140006a44  int3       
0000000140006a45  int3       
0000000140006a46  nop        word ptr [rax + rax]
0000000140006a50  sub        rdx, rcx
0000000140006a53  test       r8, r8
0000000140006a56  je         0x140006ac2
0000000140006a58  test       ecx, 7
0000000140006a5e  je         0x140006a7d
0000000140006a60  movzx      eax, byte ptr [rcx]
0000000140006a63  cmp        al, byte ptr [rdx + rcx]
0000000140006a66  jne        0x140006ac5
0000000140006a68  inc        rcx
0000000140006a6b  dec        r8
0000000140006a6e  je         0x140006ac2
0000000140006a70  test       al, al
0000000140006a72  je         0x140006ac2
0000000140006a74  test       rcx, 7
0000000140006a7b  jne        0x140006a60
0000000140006a7d  movabs     r11, 0x8080808080808080
0000000140006a87  movabs     r10, 0xfefefefefefefeff
0000000140006a91  lea        eax, [rdx + rcx]
0000000140006a94  and        eax, 0xfff
0000000140006a99  cmp        eax, 0xff8
0000000140006a9e  ja         0x140006a60
0000000140006aa0  mov        rax, qword ptr [rcx]
0000000140006aa3  cmp        rax, qword ptr [rdx + rcx]
0000000140006aa7  jne        0x140006a60
0000000140006aa9  add        rcx, 8
0000000140006aad  sub        r8, 8
0000000140006ab1  jbe        0x140006ac2
0000000140006ab3  lea        r9, [r10 + rax]
0000000140006ab7  not        rax
0000000140006aba  and        rax, r9
0000000140006abd  test       r11, rax
0000000140006ac0  je         0x140006a91
0000000140006ac2  xor        eax, eax
0000000140006ac4  ret        
0000000140006ac5  sbb        rax, rax
0000000140006ac8  or         rax, 1
0000000140006acc  ret        
0000000140006acd  int3       
0000000140006ace  int3       
0000000140006acf  int3       
0000000140006ad0  mov        qword ptr [rsp + 0x10], rbx
0000000140006ad5  mov        qword ptr [rsp + 0x18], rsi
0000000140006ada  push       rbp
0000000140006adb  push       rdi
0000000140006adc  push       r14
0000000140006ade  lea        rbp, [rsp - 0x4f0]
0000000140006ae6  sub        rsp, 0x5f0
0000000140006aed  mov        rax, qword ptr [rip + 0x125d4]
0000000140006af4  xor        rax, rsp
0000000140006af7  mov        qword ptr [rbp + 0x4e0], rax
0000000140006afe  mov        edi, r8d
0000000140006b01  mov        esi, edx
0000000140006b03  mov        ebx, ecx
0000000140006b05  cmp        ecx, -1
0000000140006b08  je         0x140006b0f
0000000140006b0a  call       0x140003e0c
0000000140006b0f  xor        edx, edx
0000000140006b11  lea        rcx, [rsp + 0x70]
0000000140006b16  mov        r8d, 0x98
0000000140006b1c  call       0x140004c70
0000000140006b21  xor        edx, edx
0000000140006b23  lea        rcx, [rbp + 0x10]
0000000140006b27  mov        r8d, 0x4d0
0000000140006b2d  call       0x140004c70
0000000140006b32  lea        rax, [rsp + 0x70]
0000000140006b37  mov        qword ptr [rsp + 0x48], rax
0000000140006b3c  lea        rcx, [rbp + 0x10]
0000000140006b40  lea        rax, [rbp + 0x10]
0000000140006b44  mov        qword ptr [rsp + 0x50], rax
0000000140006b49  call       qword ptr [rip + 0x7579] ; KERNEL32.dll!RtlCaptureContext
0000000140006b4f  mov        r14, qword ptr [rbp + 0x108]
0000000140006b56  lea        rdx, [rsp + 0x40]
0000000140006b5b  mov        rcx, r14
0000000140006b5e  xor        r8d, r8d
0000000140006b61  call       qword ptr [rip + 0x7569] ; KERNEL32.dll!RtlLookupFunctionEntry
0000000140006b67  test       rax, rax
0000000140006b6a  je         0x140006ba2
0000000140006b6c  and        qword ptr [rsp + 0x38], 0
0000000140006b72  lea        rcx, [rsp + 0x58]
0000000140006b77  mov        rdx, qword ptr [rsp + 0x40]
0000000140006b7c  mov        r9, rax
0000000140006b7f  mov        qword ptr [rsp + 0x30], rcx
0000000140006b84  mov        r8, r14
0000000140006b87  lea        rcx, [rsp + 0x60]
0000000140006b8c  mov        qword ptr [rsp + 0x28], rcx
0000000140006b91  lea        rcx, [rbp + 0x10]
0000000140006b95  mov        qword ptr [rsp + 0x20], rcx
0000000140006b9a  xor        ecx, ecx
0000000140006b9c  call       qword ptr [rip + 0x7536] ; KERNEL32.dll!RtlVirtualUnwind
0000000140006ba2  mov        rax, qword ptr [rbp + 0x508]
0000000140006ba9  mov        qword ptr [rbp + 0x108], rax
0000000140006bb0  lea        rax, [rbp + 0x508]
0000000140006bb7  add        rax, 8
0000000140006bbb  mov        dword ptr [rsp + 0x70], esi
0000000140006bbf  mov        qword ptr [rbp + 0xa8], rax
0000000140006bc6  mov        rax, qword ptr [rbp + 0x508]
0000000140006bcd  mov        qword ptr [rbp - 0x80], rax
0000000140006bd1  mov        dword ptr [rsp + 0x74], edi
0000000140006bd5  call       qword ptr [rip + 0x7555] ; KERNEL32.dll!IsDebuggerPresent
0000000140006bdb  xor        ecx, ecx
0000000140006bdd  mov        edi, eax
0000000140006bdf  call       qword ptr [rip + 0x7503] ; KERNEL32.dll!SetUnhandledExceptionFilter
0000000140006be5  lea        rcx, [rsp + 0x48]
0000000140006bea  call       qword ptr [rip + 0x74f0] ; KERNEL32.dll!UnhandledExceptionFilter
0000000140006bf0  test       eax, eax
0000000140006bf2  jne        0x140006c04
0000000140006bf4  test       edi, edi
0000000140006bf6  jne        0x140006c04
0000000140006bf8  cmp        ebx, -1
0000000140006bfb  je         0x140006c04
0000000140006bfd  mov        ecx, ebx
0000000140006bff  call       0x140003e0c
0000000140006c04  mov        rcx, qword ptr [rbp + 0x4e0]
0000000140006c0b  xor        rcx, rsp
0000000140006c0e  call       0x1400037e0
0000000140006c13  lea        r11, [rsp + 0x5f0]
0000000140006c1b  mov        rbx, qword ptr [r11 + 0x28]
0000000140006c1f  mov        rsi, qword ptr [r11 + 0x30]
0000000140006c23  mov        rsp, r11
0000000140006c26  pop        r14
0000000140006c28  pop        rdi
0000000140006c29  pop        rbp
0000000140006c2a  ret        
0000000140006c2b  int3       
0000000140006c2c  mov        qword ptr [rip + 0x1396d], rcx
0000000140006c33  ret        
0000000140006c34  mov        qword ptr [rsp + 8], rbx
0000000140006c39  mov        qword ptr [rsp + 0x10], rbp
0000000140006c3e  mov        qword ptr [rsp + 0x18], rsi
0000000140006c43  push       rdi
0000000140006c44  sub        rsp, 0x30
0000000140006c48  mov        ebx, r9d
0000000140006c4b  mov        rdi, r8
0000000140006c4e  mov        rsi, rdx
0000000140006c51  mov        rbp, rcx
0000000140006c54  call       0x1400073dc
0000000140006c59  test       rax, rax
0000000140006c5c  je         0x140006c9b
0000000140006c5e  mov        rax, qword ptr [rax + 0x3b8]
0000000140006c65  test       rax, rax
0000000140006c68  je         0x140006c9b
0000000140006c6a  mov        rdx, qword ptr [rsp + 0x60]
0000000140006c6f  mov        r9d, ebx
0000000140006c72  mov        qword ptr [rsp + 0x20], rdx
0000000140006c77  mov        r8, rdi
0000000140006c7a  mov        rdx, rsi
0000000140006c7d  mov        rcx, rbp
0000000140006c80  call       qword ptr [rip + 0x760a]
0000000140006c86  mov        rbx, qword ptr [rsp + 0x40]
0000000140006c8b  mov        rbp, qword ptr [rsp + 0x48]
0000000140006c90  mov        rsi, qword ptr [rsp + 0x50]
0000000140006c95  add        rsp, 0x30
0000000140006c99  pop        rdi
0000000140006c9a  ret        
0000000140006c9b  mov        r10, qword ptr [rip + 0x12426]
0000000140006ca2  mov        r9d, ebx
0000000140006ca5  mov        ecx, r10d
0000000140006ca8  mov        r8, rdi
0000000140006cab  xor        r10, qword ptr [rip + 0x138ee]
0000000140006cb2  and        ecx, 0x3f
0000000140006cb5  ror        r10, cl
0000000140006cb8  mov        rdx, rsi
0000000140006cbb  test       r10, r10
0000000140006cbe  je         0x140006ccf
0000000140006cc0  mov        rcx, qword ptr [rsp + 0x60]
0000000140006cc5  mov        rax, r10
0000000140006cc8  mov        qword ptr [rsp + 0x20], rcx
0000000140006ccd  jmp        0x140006c7d
0000000140006ccf  mov        rax, qword ptr [rsp + 0x60]
0000000140006cd4  mov        rcx, rbp
0000000140006cd7  mov        qword ptr [rsp + 0x20], rax
0000000140006cdc  call       0x140006d04
0000000140006ce1  int3       
0000000140006ce2  int3       
0000000140006ce3  int3       
0000000140006ce4  sub        rsp, 0x38
0000000140006ce8  and        qword ptr [rsp + 0x20], 0
0000000140006cee  xor        r9d, r9d
0000000140006cf1  xor        r8d, r8d
0000000140006cf4  xor        edx, edx
0000000140006cf6  xor        ecx, ecx
0000000140006cf8  call       0x140006c34
0000000140006cfd  add        rsp, 0x38
0000000140006d01  ret        
0000000140006d02  int3       
0000000140006d03  int3       
0000000140006d04  sub        rsp, 0x28
0000000140006d08  mov        ecx, 0x17
0000000140006d0d  call       qword ptr [rip + 0x73ed] ; KERNEL32.dll!IsProcessorFeaturePresent
0000000140006d13  test       eax, eax
0000000140006d15  je         0x140006d1e
0000000140006d17  mov        ecx, 5
0000000140006d1c  int        0x29
0000000140006d1e  mov        r8d, 1
0000000140006d24  mov        edx, 0xc0000417
0000000140006d29  lea        ecx, [r8 + 1]
0000000140006d2d  call       0x140006ad0
0000000140006d32  call       qword ptr [rip + 0x73b8] ; KERNEL32.dll!GetCurrentProcess
0000000140006d38  mov        rcx, rax
0000000140006d3b  mov        edx, 0xc0000417
0000000140006d40  add        rsp, 0x28
0000000140006d44  jmp        qword ptr [rip + 0x73ad] ; KERNEL32.dll!TerminateProcess
0000000140006d4b  int3       
0000000140006d4c  mov        word ptr [rsp + 8], cx
0000000140006d51  sub        rsp, 0x58
0000000140006d55  mov        eax, 0xffff
0000000140006d5a  cmp        cx, ax
0000000140006d5d  je         0x140006e02
0000000140006d63  lea        rcx, [rsp + 0x30]
0000000140006d68  call       0x140005474
0000000140006d6d  movzx      edx, word ptr [rsp + 0x60]
0000000140006d72  mov        r10d, 0x100
0000000140006d78  cmp        dx, r10w
0000000140006d7c  jae        0x140006da8
0000000140006d7e  movzx      eax, dl
0000000140006d81  lea        rcx, [rip + 0xa57a] ;          (((((                  H
0000000140006d88  test       byte ptr [rcx + rax*2], 1
0000000140006d8c  je         0x140006da3
0000000140006d8e  mov        rax, qword ptr [rsp + 0x38]
0000000140006d93  movzx      edx, dl
0000000140006d96  mov        rcx, qword ptr [rax + 0x110]
0000000140006d9d  movzx      edx, byte ptr [rcx + rdx]
0000000140006da1  jmp        0x140006dec
0000000140006da3  movzx      edx, dl
0000000140006da6  jmp        0x140006dec
0000000140006da8  mov        rax, qword ptr [rsp + 0x38]
0000000140006dad  mov        rcx, qword ptr [rax + 0x138]
0000000140006db4  test       rcx, rcx
0000000140006db7  je         0x140006dec
0000000140006db9  lea        rax, [rsp + 0x70]
0000000140006dbe  mov        dword ptr [rsp + 0x28], 1
0000000140006dc6  mov        r9d, 1
0000000140006dcc  mov        qword ptr [rsp + 0x20], rax
0000000140006dd1  lea        r8, [rsp + 0x60]
0000000140006dd6  mov        edx, r10d
0000000140006dd9  call       0x14000ab84
0000000140006dde  movzx      edx, word ptr [rsp + 0x60]
0000000140006de3  test       eax, eax
0000000140006de5  je         0x140006dec
0000000140006de7  movzx      edx, word ptr [rsp + 0x70]
0000000140006dec  cmp        byte ptr [rsp + 0x48], 0
0000000140006df1  je         0x140006dff
0000000140006df3  mov        rcx, qword ptr [rsp + 0x30]
0000000140006df8  and        dword ptr [rcx + 0x3a8], 0xfffffffd
0000000140006dff  movzx      eax, dx
0000000140006e02  add        rsp, 0x58
0000000140006e06  ret        
0000000140006e07  int3       
0000000140006e08  xor        eax, eax
0000000140006e0a  lea        r9, [rip + 0x96ff]
0000000140006e11  mov        rdx, r9
0000000140006e14  lea        r8d, [rax + 8]
0000000140006e18  cmp        ecx, dword ptr [rdx]
0000000140006e1a  je         0x140006e47
0000000140006e1c  inc        eax
0000000140006e1e  add        rdx, r8
0000000140006e21  cmp        eax, 0x2d
0000000140006e24  jb         0x140006e18
0000000140006e26  lea        eax, [rcx - 0x13]
0000000140006e29  cmp        eax, 0x11
0000000140006e2c  ja         0x140006e34
0000000140006e2e  mov        eax, 0xd
0000000140006e33  ret        
0000000140006e34  add        ecx, 0xffffff44
0000000140006e3a  mov        eax, 0x16
0000000140006e3f  cmp        ecx, 0xe
0000000140006e42  cmovbe     eax, r8d
0000000140006e46  ret        
0000000140006e47  mov        eax, dword ptr [r9 + rax*8 + 4]
0000000140006e4c  ret        
0000000140006e4d  int3       
0000000140006e4e  int3       
0000000140006e4f  int3       
0000000140006e50  mov        qword ptr [rsp + 8], rbx
0000000140006e55  push       rdi
0000000140006e56  sub        rsp, 0x20
0000000140006e5a  mov        edi, ecx
0000000140006e5c  call       0x1400073dc
0000000140006e61  test       rax, rax
0000000140006e64  jne        0x140006e6f
0000000140006e66  lea        rax, [rip + 0x122b7]
0000000140006e6d  jmp        0x140006e73
0000000140006e6f  add        rax, 0x24
0000000140006e73  mov        dword ptr [rax], edi
0000000140006e75  call       0x1400073dc
0000000140006e7a  lea        rbx, [rip + 0x1229f]
0000000140006e81  test       rax, rax
0000000140006e84  je         0x140006e8a
0000000140006e86  lea        rbx, [rax + 0x20]
0000000140006e8a  mov        ecx, edi
0000000140006e8c  call       0x140006e08
0000000140006e91  mov        dword ptr [rbx], eax
0000000140006e93  mov        rbx, qword ptr [rsp + 0x30]
0000000140006e98  add        rsp, 0x20
0000000140006e9c  pop        rdi
0000000140006e9d  ret        
0000000140006e9e  int3       
0000000140006e9f  int3       
0000000140006ea0  sub        rsp, 0x28
0000000140006ea4  call       0x1400073dc
0000000140006ea9  test       rax, rax
0000000140006eac  jne        0x140006eb7
0000000140006eae  lea        rax, [rip + 0x1226f]
0000000140006eb5  jmp        0x140006ebb
0000000140006eb7  add        rax, 0x24
0000000140006ebb  add        rsp, 0x28
0000000140006ebf  ret        
0000000140006ec0  sub        rsp, 0x28
0000000140006ec4  call       0x1400073dc
0000000140006ec9  test       rax, rax
0000000140006ecc  jne        0x140006ed7
0000000140006ece  lea        rax, [rip + 0x1224b]
0000000140006ed5  jmp        0x140006edb
0000000140006ed7  add        rax, 0x20
0000000140006edb  add        rsp, 0x28
0000000140006edf  ret        
0000000140006ee0  mov        qword ptr [rsp + 8], rbx
0000000140006ee5  mov        qword ptr [rsp + 0x20], r9
0000000140006eea  push       rdi
0000000140006eeb  sub        rsp, 0x20
0000000140006eef  mov        rbx, r9
0000000140006ef2  mov        rdi, r8
0000000140006ef5  mov        ecx, dword ptr [rdx]
0000000140006ef7  call       0x1400089b8
0000000140006efc  nop        
0000000140006efd  mov        rax, qword ptr [rdi]
0000000140006f00  mov        rcx, qword ptr [rax]
0000000140006f03  mov        rax, qword ptr [rcx + 0x88]
0000000140006f0a  lock inc   dword ptr [rax]
0000000140006f0d  mov        ecx, dword ptr [rbx]
0000000140006f0f  call       0x140008a18
0000000140006f14  mov        rbx, qword ptr [rsp + 0x30]
0000000140006f19  add        rsp, 0x20
0000000140006f1d  pop        rdi
0000000140006f1e  ret        
0000000140006f1f  int3       
0000000140006f20  mov        qword ptr [rsp + 8], rbx
0000000140006f25  mov        qword ptr [rsp + 0x20], r9
0000000140006f2a  push       rdi
0000000140006f2b  sub        rsp, 0x20
0000000140006f2f  mov        rbx, r9
0000000140006f32  mov        rdi, r8
0000000140006f35  mov        ecx, dword ptr [rdx]
0000000140006f37  call       0x1400089b8
0000000140006f3c  nop        
0000000140006f3d  mov        rcx, qword ptr [rdi]
0000000140006f40  xor        edx, edx
0000000140006f42  mov        rcx, qword ptr [rcx]
0000000140006f45  call       0x1400071f8
0000000140006f4a  nop        
0000000140006f4b  mov        ecx, dword ptr [rbx]
0000000140006f4d  call       0x140008a18
0000000140006f52  mov        rbx, qword ptr [rsp + 0x30]
0000000140006f57  add        rsp, 0x20
0000000140006f5b  pop        rdi
0000000140006f5c  ret        
0000000140006f5d  int3       
0000000140006f5e  int3       
0000000140006f5f  int3       
0000000140006f60  mov        qword ptr [rsp + 8], rbx
0000000140006f65  mov        qword ptr [rsp + 0x20], r9
0000000140006f6a  push       rdi
0000000140006f6b  sub        rsp, 0x20
0000000140006f6f  mov        rbx, r9
0000000140006f72  mov        rdi, r8
0000000140006f75  mov        ecx, dword ptr [rdx]
0000000140006f77  call       0x1400089b8
0000000140006f7c  nop        
0000000140006f7d  mov        rax, qword ptr [rdi + 8]
0000000140006f81  mov        rdx, qword ptr [rax]
0000000140006f84  mov        rcx, qword ptr [rdi]
0000000140006f87  mov        rdx, qword ptr [rdx]
0000000140006f8a  mov        rcx, qword ptr [rcx]
0000000140006f8d  call       0x1400071f8
0000000140006f92  nop        
0000000140006f93  mov        ecx, dword ptr [rbx]
0000000140006f95  call       0x140008a18
0000000140006f9a  mov        rbx, qword ptr [rsp + 0x30]
0000000140006f9f  add        rsp, 0x20
0000000140006fa3  pop        rdi
0000000140006fa4  ret        
0000000140006fa5  int3       
0000000140006fa6  int3       
0000000140006fa7  int3       
0000000140006fa8  mov        qword ptr [rsp + 8], rbx
0000000140006fad  mov        qword ptr [rsp + 0x20], r9
0000000140006fb2  push       rdi
0000000140006fb3  sub        rsp, 0x20
0000000140006fb7  mov        rbx, r9
0000000140006fba  mov        rdi, r8
0000000140006fbd  mov        ecx, dword ptr [rdx]
0000000140006fbf  call       0x1400089b8
0000000140006fc4  nop        
0000000140006fc5  mov        rax, qword ptr [rdi]
0000000140006fc8  mov        rcx, qword ptr [rax]
0000000140006fcb  mov        rcx, qword ptr [rcx + 0x88]
0000000140006fd2  test       rcx, rcx
0000000140006fd5  je         0x140006ff5
0000000140006fd7  or         eax, 0xffffffff
0000000140006fda  lock xadd  dword ptr [rcx], eax
0000000140006fde  cmp        eax, 1
0000000140006fe1  jne        0x140006ff5
0000000140006fe3  lea        rax, [rip + 0x122b6]
0000000140006fea  cmp        rcx, rax
0000000140006fed  je         0x140006ff5
0000000140006fef  call       0x140007770
0000000140006ff4  nop        
0000000140006ff5  mov        ecx, dword ptr [rbx]
0000000140006ff7  call       0x140008a18
0000000140006ffc  mov        rbx, qword ptr [rsp + 0x30]
0000000140007001  add        rsp, 0x20
0000000140007005  pop        rdi
0000000140007006  ret        
0000000140007007  int3       
0000000140007008  push       rbp
000000014000700a  mov        rbp, rsp
000000014000700d  sub        rsp, 0x50
0000000140007011  mov        qword ptr [rbp - 0x28], rcx
0000000140007015  lea        rax, [rbp - 0x28]
0000000140007019  mov        qword ptr [rbp - 0x18], rax
000000014000701d  lea        r9, [rbp + 0x20]
0000000140007021  mov        edx, 1
0000000140007026  lea        r8, [rbp - 0x18]
000000014000702a  mov        eax, 5
000000014000702f  mov        dword ptr [rbp + 0x20], eax
0000000140007032  mov        dword ptr [rbp + 0x28], eax
0000000140007035  lea        rax, [rbp - 0x28]
0000000140007039  mov        qword ptr [rbp - 0x10], rax
000000014000703d  lea        rax, [rbp - 0x20]
0000000140007041  mov        qword ptr [rbp - 8], rax
0000000140007045  mov        eax, 4
000000014000704a  mov        dword ptr [rbp - 0x30], eax
000000014000704d  mov        dword ptr [rbp - 0x2c], eax
0000000140007050  lea        rax, [rip + 0x13551]
0000000140007057  mov        qword ptr [rbp - 0x20], rax
000000014000705b  mov        dword ptr [rcx + 0x28], edx
000000014000705e  lea        rcx, [rip + 0x92ab]
0000000140007065  mov        rax, qword ptr [rbp - 0x28]
0000000140007069  mov        qword ptr [rax], rcx
000000014000706c  lea        rcx, [rip + 0x1222d]
0000000140007073  mov        rax, qword ptr [rbp - 0x28]
0000000140007077  mov        dword ptr [rax + 0x3a8], edx
000000014000707d  mov        rax, qword ptr [rbp - 0x28]
0000000140007081  mov        qword ptr [rax + 0x88], rcx
0000000140007088  lea        ecx, [rdx + 0x42]
000000014000708b  mov        rax, qword ptr [rbp - 0x28]
000000014000708f  lea        rdx, [rbp + 0x28]
0000000140007093  mov        word ptr [rax + 0xbc], cx
000000014000709a  mov        rax, qword ptr [rbp - 0x28]
000000014000709e  mov        word ptr [rax + 0x1c2], cx
00000001400070a5  lea        rcx, [rbp + 0x18]
00000001400070a9  mov        rax, qword ptr [rbp - 0x28]
00000001400070ad  and        qword ptr [rax + 0x3a0], 0
00000001400070b5  call       0x140006ee0
00000001400070ba  lea        r9, [rbp - 0x30]
00000001400070be  lea        r8, [rbp - 0x10]
00000001400070c2  lea        rdx, [rbp - 0x2c]
00000001400070c6  lea        rcx, [rbp + 0x18]
00000001400070ca  call       0x140006f60
00000001400070cf  add        rsp, 0x50
00000001400070d3  pop        rbp
00000001400070d4  ret        
00000001400070d5  int3       
00000001400070d6  int3       
00000001400070d7  int3       
00000001400070d8  int3       
00000001400070d9  int3       
00000001400070da  int3       
00000001400070db  int3       
00000001400070dc  int3       
00000001400070dd  int3       
00000001400070de  int3       
00000001400070df  int3       
00000001400070e0  test       rcx, rcx
00000001400070e3  je         0x1400070ff
00000001400070e5  push       rbx
00000001400070e6  sub        rsp, 0x20
00000001400070ea  mov        rbx, rcx
00000001400070ed  call       0x140007100
00000001400070f2  mov        rcx, rbx
00000001400070f5  call       0x140007770
00000001400070fa  add        rsp, 0x20
00000001400070fe  pop        rbx
00000001400070ff  ret        
0000000140007100  push       rbp
0000000140007102  mov        rbp, rsp
0000000140007105  sub        rsp, 0x40
0000000140007109  lea        rax, [rbp - 0x18]
000000014000710d  mov        qword ptr [rbp - 0x18], rcx
0000000140007111  mov        qword ptr [rbp - 0x10], rax
0000000140007115  lea        rdx, [rip + 0x91f4]
000000014000711c  mov        eax, 5
0000000140007121  mov        dword ptr [rbp + 0x20], eax
0000000140007124  mov        dword ptr [rbp + 0x28], eax
0000000140007127  lea        rax, [rbp - 0x18]
000000014000712b  mov        qword ptr [rbp - 8], rax
000000014000712f  mov        eax, 4
0000000140007134  mov        dword ptr [rbp - 0x20], eax
0000000140007137  mov        dword ptr [rbp - 0x1c], eax
000000014000713a  mov        rax, qword ptr [rcx]
000000014000713d  cmp        rax, rdx
0000000140007140  je         0x14000714e
0000000140007142  mov        rcx, rax
0000000140007145  call       0x140007770
000000014000714a  mov        rcx, qword ptr [rbp - 0x18]
000000014000714e  mov        rcx, qword ptr [rcx + 0x70]
0000000140007152  call       0x140007770
0000000140007157  mov        rcx, qword ptr [rbp - 0x18]
000000014000715b  mov        rcx, qword ptr [rcx + 0x58]
000000014000715f  call       0x140007770
0000000140007164  mov        rcx, qword ptr [rbp - 0x18]
0000000140007168  mov        rcx, qword ptr [rcx + 0x60]
000000014000716c  call       0x140007770
0000000140007171  mov        rcx, qword ptr [rbp - 0x18]
0000000140007175  mov        rcx, qword ptr [rcx + 0x68]
0000000140007179  call       0x140007770
000000014000717e  mov        rcx, qword ptr [rbp - 0x18]
0000000140007182  mov        rcx, qword ptr [rcx + 0x48]
0000000140007186  call       0x140007770
000000014000718b  mov        rcx, qword ptr [rbp - 0x18]
000000014000718f  mov        rcx, qword ptr [rcx + 0x50]
0000000140007193  call       0x140007770
0000000140007198  mov        rcx, qword ptr [rbp - 0x18]
000000014000719c  mov        rcx, qword ptr [rcx + 0x78]
00000001400071a0  call       0x140007770
00000001400071a5  mov        rcx, qword ptr [rbp - 0x18]
00000001400071a9  mov        rcx, qword ptr [rcx + 0x80]
00000001400071b0  call       0x140007770
00000001400071b5  mov        rcx, qword ptr [rbp - 0x18]
00000001400071b9  mov        rcx, qword ptr [rcx + 0x3c0]
00000001400071c0  call       0x140007770
00000001400071c5  lea        r9, [rbp + 0x20]
00000001400071c9  lea        r8, [rbp - 0x10]
00000001400071cd  lea        rdx, [rbp + 0x28]
00000001400071d1  lea        rcx, [rbp + 0x18]
00000001400071d5  call       0x140006fa8
00000001400071da  lea        r9, [rbp - 0x20]
00000001400071de  lea        r8, [rbp - 8]
00000001400071e2  lea        rdx, [rbp - 0x1c]
00000001400071e6  lea        rcx, [rbp + 0x18]
00000001400071ea  call       0x140006f20
00000001400071ef  add        rsp, 0x40
00000001400071f3  pop        rbp
00000001400071f4  ret        
00000001400071f5  int3       
00000001400071f6  int3       
00000001400071f7  int3       
00000001400071f8  mov        qword ptr [rsp + 8], rbx
00000001400071fd  push       rdi
00000001400071fe  sub        rsp, 0x20
0000000140007202  mov        rdi, rcx
0000000140007205  mov        rbx, rdx
0000000140007208  mov        rcx, qword ptr [rcx + 0x90]
000000014000720f  test       rcx, rcx
0000000140007212  je         0x140007240
0000000140007214  call       0x1400099a0
0000000140007219  mov        rcx, qword ptr [rdi + 0x90]
0000000140007220  cmp        rcx, qword ptr [rip + 0x13381]
0000000140007227  je         0x140007240
0000000140007229  lea        rax, [rip + 0x11f00]
0000000140007230  cmp        rcx, rax
0000000140007233  je         0x140007240
0000000140007235  cmp        dword ptr [rcx + 0x10], 0
0000000140007239  jne        0x140007240
000000014000723b  call       0x1400097a0
0000000140007240  mov        qword ptr [rdi + 0x90], rbx
0000000140007247  test       rbx, rbx
000000014000724a  je         0x140007254
000000014000724c  mov        rcx, rbx
000000014000724f  call       0x140009714
0000000140007254  mov        rbx, qword ptr [rsp + 0x30]
0000000140007259  add        rsp, 0x20
000000014000725d  pop        rdi
000000014000725e  ret        
000000014000725f  int3       
0000000140007260  mov        qword ptr [rsp + 8], rbx
0000000140007265  mov        qword ptr [rsp + 0x10], rsi
000000014000726a  push       rdi
000000014000726b  sub        rsp, 0x20
000000014000726f  call       qword ptr [rip + 0x6edb] ; KERNEL32.dll!GetLastError
0000000140007275  mov        ecx, dword ptr [rip + 0x11ead]
000000014000727b  mov        ebx, eax
000000014000727d  cmp        ecx, -1
0000000140007280  je         0x1400072a1
0000000140007282  call       0x140009dd8
0000000140007287  mov        rdi, rax
000000014000728a  test       rax, rax
000000014000728d  je         0x14000729b
000000014000728f  cmp        rax, -1
0000000140007293  jne        0x140007308
0000000140007295  xor        edi, edi
0000000140007297  xor        esi, esi
0000000140007299  jmp        0x14000730b
000000014000729b  mov        ecx, dword ptr [rip + 0x11e87]
00000001400072a1  or         rdx, 0xffffffffffffffff
00000001400072a5  call       0x140009e20
00000001400072aa  test       eax, eax
00000001400072ac  je         0x140007295
00000001400072ae  mov        edx, 0x3c8
00000001400072b3  mov        ecx, 1
00000001400072b8  call       0x1400076f8
00000001400072bd  mov        ecx, dword ptr [rip + 0x11e65]
00000001400072c3  mov        rdi, rax
00000001400072c6  test       rax, rax
00000001400072c9  jne        0x1400072db
00000001400072cb  xor        edx, edx
00000001400072cd  call       0x140009e20
00000001400072d2  xor        ecx, ecx
00000001400072d4  call       0x140007770
00000001400072d9  jmp        0x140007295
00000001400072db  mov        rdx, rdi
00000001400072de  call       0x140009e20
00000001400072e3  test       eax, eax
00000001400072e5  jne        0x1400072f9
00000001400072e7  mov        ecx, dword ptr [rip + 0x11e3b]
00000001400072ed  xor        edx, edx
00000001400072ef  call       0x140009e20
00000001400072f4  mov        rcx, rdi
00000001400072f7  jmp        0x1400072d4
00000001400072f9  mov        rcx, rdi
00000001400072fc  call       0x140007008
0000000140007301  xor        ecx, ecx
0000000140007303  call       0x140007770
0000000140007308  mov        rsi, rdi
000000014000730b  mov        ecx, ebx
000000014000730d  call       qword ptr [rip + 0x6e45] ; KERNEL32.dll!SetLastError
0000000140007313  neg        rdi
0000000140007316  sbb        rax, rax
0000000140007319  and        rax, rsi
000000014000731c  je         0x14000732e
000000014000731e  mov        rbx, qword ptr [rsp + 0x30]
0000000140007323  mov        rsi, qword ptr [rsp + 0x38]
0000000140007328  add        rsp, 0x20
000000014000732c  pop        rdi
000000014000732d  ret        
000000014000732e  call       0x1400069dc
0000000140007333  int3       
0000000140007334  push       rbx
0000000140007336  sub        rsp, 0x20
000000014000733a  mov        ecx, dword ptr [rip + 0x11de8]
0000000140007340  cmp        ecx, -1
0000000140007343  je         0x140007360
0000000140007345  call       0x140009dd8
000000014000734a  mov        rbx, rax
000000014000734d  test       rax, rax
0000000140007350  je         0x14000735a
0000000140007352  cmp        rax, -1
0000000140007356  je         0x1400073d5
0000000140007358  jmp        0x1400073c7
000000014000735a  mov        ecx, dword ptr [rip + 0x11dc8]
0000000140007360  or         rdx, 0xffffffffffffffff
0000000140007364  call       0x140009e20
0000000140007369  test       eax, eax
000000014000736b  je         0x1400073d5
000000014000736d  mov        edx, 0x3c8
0000000140007372  mov        ecx, 1
0000000140007377  call       0x1400076f8
000000014000737c  mov        ecx, dword ptr [rip + 0x11da6]
0000000140007382  mov        rbx, rax
0000000140007385  test       rax, rax
0000000140007388  jne        0x14000739a
000000014000738a  xor        edx, edx
000000014000738c  call       0x140009e20
0000000140007391  xor        ecx, ecx
0000000140007393  call       0x140007770
0000000140007398  jmp        0x1400073d5
000000014000739a  mov        rdx, rbx
000000014000739d  call       0x140009e20
00000001400073a2  test       eax, eax
00000001400073a4  jne        0x1400073b8
00000001400073a6  mov        ecx, dword ptr [rip + 0x11d7c]
00000001400073ac  xor        edx, edx
00000001400073ae  call       0x140009e20
00000001400073b3  mov        rcx, rbx
00000001400073b6  jmp        0x140007393
00000001400073b8  mov        rcx, rbx
00000001400073bb  call       0x140007008
00000001400073c0  xor        ecx, ecx
00000001400073c2  call       0x140007770
00000001400073c7  test       rbx, rbx
00000001400073ca  je         0x1400073d5
00000001400073cc  mov        rax, rbx
00000001400073cf  add        rsp, 0x20
00000001400073d3  pop        rbx
00000001400073d4  ret        
00000001400073d5  call       0x1400069dc
00000001400073da  int3       
00000001400073db  int3       
00000001400073dc  mov        qword ptr [rsp + 8], rbx
00000001400073e1  mov        qword ptr [rsp + 0x10], rsi
00000001400073e6  push       rdi
00000001400073e7  sub        rsp, 0x20
00000001400073eb  call       qword ptr [rip + 0x6d5f] ; KERNEL32.dll!GetLastError
00000001400073f1  mov        ecx, dword ptr [rip + 0x11d31]
00000001400073f7  mov        ebx, eax
00000001400073f9  cmp        ecx, -1
00000001400073fc  je         0x14000741d
00000001400073fe  call       0x140009dd8
0000000140007403  mov        rdi, rax
0000000140007406  test       rax, rax
0000000140007409  je         0x140007417
000000014000740b  cmp        rax, -1
000000014000740f  jne        0x140007484
0000000140007411  xor        edi, edi
0000000140007413  xor        esi, esi
0000000140007415  jmp        0x140007487
0000000140007417  mov        ecx, dword ptr [rip + 0x11d0b]
000000014000741d  or         rdx, 0xffffffffffffffff
0000000140007421  call       0x140009e20
0000000140007426  test       eax, eax
0000000140007428  je         0x140007411
000000014000742a  mov        edx, 0x3c8
000000014000742f  mov        ecx, 1
0000000140007434  call       0x1400076f8
0000000140007439  mov        ecx, dword ptr [rip + 0x11ce9]
000000014000743f  mov        rdi, rax
0000000140007442  test       rax, rax
0000000140007445  jne        0x140007457
0000000140007447  xor        edx, edx
0000000140007449  call       0x140009e20
000000014000744e  xor        ecx, ecx
0000000140007450  call       0x140007770
0000000140007455  jmp        0x140007411
0000000140007457  mov        rdx, rdi
000000014000745a  call       0x140009e20
000000014000745f  test       eax, eax
0000000140007461  jne        0x140007475
0000000140007463  mov        ecx, dword ptr [rip + 0x11cbf]
0000000140007469  xor        edx, edx
000000014000746b  call       0x140009e20
0000000140007470  mov        rcx, rdi
0000000140007473  jmp        0x140007450
0000000140007475  mov        rcx, rdi
0000000140007478  call       0x140007008
000000014000747d  xor        ecx, ecx
000000014000747f  call       0x140007770
0000000140007484  mov        rsi, rdi
0000000140007487  mov        ecx, ebx
0000000140007489  call       qword ptr [rip + 0x6cc9] ; KERNEL32.dll!SetLastError
000000014000748f  mov        rbx, qword ptr [rsp + 0x30]
0000000140007494  neg        rdi
0000000140007497  sbb        rax, rax
000000014000749a  and        rax, rsi
000000014000749d  mov        rsi, qword ptr [rsp + 0x38]
00000001400074a2  add        rsp, 0x20
00000001400074a6  pop        rdi
00000001400074a7  ret        
00000001400074a8  int3       
00000001400074a9  int3       
00000001400074aa  int3       
00000001400074ab  int3       
00000001400074ac  int3       
00000001400074ad  int3       
00000001400074ae  int3       
00000001400074af  int3       
00000001400074b0  sub        rsp, 0x28
00000001400074b4  lea        rcx, [rip - 0x3db]
00000001400074bb  call       0x140009d48
00000001400074c0  mov        dword ptr [rip + 0x11c62], eax
00000001400074c6  cmp        eax, -1
00000001400074c9  jne        0x1400074cf
00000001400074cb  xor        al, al
00000001400074cd  jmp        0x1400074e4
00000001400074cf  call       0x1400073dc
00000001400074d4  test       rax, rax
00000001400074d7  jne        0x1400074e2
00000001400074d9  xor        ecx, ecx
00000001400074db  call       0x1400074f0
00000001400074e0  jmp        0x1400074cb
00000001400074e2  mov        al, 1
00000001400074e4  add        rsp, 0x28
00000001400074e8  ret        
00000001400074e9  int3       
00000001400074ea  int3       
00000001400074eb  int3       
00000001400074ec  int3       
00000001400074ed  int3       
00000001400074ee  int3       
00000001400074ef  int3       
00000001400074f0  sub        rsp, 0x28
00000001400074f4  mov        ecx, dword ptr [rip + 0x11c2e]
00000001400074fa  cmp        ecx, -1
00000001400074fd  je         0x14000750b
00000001400074ff  call       0x140009d90
0000000140007504  or         dword ptr [rip + 0x11c1d], 0xffffffff
000000014000750b  mov        al, 1
000000014000750d  add        rsp, 0x28
0000000140007511  ret        
0000000140007512  int3       
0000000140007513  int3       
0000000140007514  push       rbx
0000000140007516  sub        rsp, 0x20
000000014000751a  mov        rax, qword ptr [rip + 0x13087]
0000000140007521  mov        rbx, rdx
0000000140007524  cmp        qword ptr [rdx], rax
0000000140007527  je         0x14000753f
0000000140007529  mov        eax, dword ptr [rcx + 0x3a8]
000000014000752f  test       dword ptr [rip + 0x1234b], eax
0000000140007535  jne        0x14000753f
0000000140007537  call       0x140009a48
000000014000753c  mov        qword ptr [rbx], rax
000000014000753f  add        rsp, 0x20
0000000140007543  pop        rbx
0000000140007544  ret        
0000000140007545  int3       
0000000140007546  int3       
0000000140007547  int3       
0000000140007548  push       rbx
000000014000754a  sub        rsp, 0x20
000000014000754e  mov        rax, qword ptr [rip + 0x1306b]
0000000140007555  mov        rbx, rdx
0000000140007558  cmp        qword ptr [rdx], rax
000000014000755b  je         0x140007573
000000014000755d  mov        eax, dword ptr [rcx + 0x3a8]
0000000140007563  test       dword ptr [rip + 0x12317], eax
0000000140007569  jne        0x140007573
000000014000756b  call       0x1400084b0
0000000140007570  mov        qword ptr [rbx], rax
0000000140007573  add        rsp, 0x20
0000000140007577  pop        rbx
0000000140007578  ret        
0000000140007579  int3       
000000014000757a  int3       
000000014000757b  int3       
000000014000757c  sub        rsp, 0x28
0000000140007580  call       0x140007260
0000000140007585  lea        rdx, [rsp + 0x30]
000000014000758a  mov        rcx, qword ptr [rax + 0x90]
0000000140007591  mov        qword ptr [rsp + 0x30], rcx
0000000140007596  mov        rcx, rax
0000000140007599  call       0x140007514
000000014000759e  mov        rax, qword ptr [rsp + 0x30]
00000001400075a3  mov        rax, qword ptr [rax]
00000001400075a6  add        rsp, 0x28
00000001400075aa  ret        
00000001400075ab  int3       
00000001400075ac  push       rbx
00000001400075ae  sub        rsp, 0x20
00000001400075b2  xor        ebx, ebx
00000001400075b4  test       rcx, rcx
00000001400075b7  je         0x1400075c6
00000001400075b9  test       rdx, rdx
00000001400075bc  je         0x1400075c6
00000001400075be  test       r8, r8
00000001400075c1  jne        0x1400075df
00000001400075c3  mov        word ptr [rcx], bx
00000001400075c6  call       0x140006ec0
00000001400075cb  mov        ebx, 0x16
00000001400075d0  mov        dword ptr [rax], ebx
00000001400075d2  call       0x140006ce4
00000001400075d7  mov        eax, ebx
00000001400075d9  add        rsp, 0x20
00000001400075dd  pop        rbx
00000001400075de  ret        
00000001400075df  mov        r9, rcx
00000001400075e2  sub        r8, rcx
00000001400075e5  movzx      eax, word ptr [r8 + r9]
00000001400075ea  mov        word ptr [r9], ax
00000001400075ee  lea        r9, [r9 + 2]
00000001400075f2  test       ax, ax
00000001400075f5  je         0x1400075fd
00000001400075f7  sub        rdx, 1
00000001400075fb  jne        0x1400075e5
00000001400075fd  test       rdx, rdx
0000000140007600  jne        0x1400075d7
0000000140007602  mov        word ptr [rcx], bx
0000000140007605  call       0x140006ec0
000000014000760a  mov        ebx, 0x22
000000014000760f  jmp        0x1400075d0
0000000140007611  int3       
0000000140007612  int3       
0000000140007613  int3       
0000000140007614  mov        qword ptr [rsp + 8], rbx
0000000140007619  push       rdi
000000014000761a  sub        rsp, 0x20
000000014000761e  xor        r10d, r10d
0000000140007621  mov        rbx, r8
0000000140007624  mov        r11, rdx
0000000140007627  test       r9, r9
000000014000762a  jne        0x140007658
000000014000762c  test       rcx, rcx
000000014000762f  jne        0x14000765d
0000000140007631  test       rdx, rdx
0000000140007634  je         0x14000764a
0000000140007636  call       0x140006ec0
000000014000763b  mov        ebx, 0x16
0000000140007640  mov        dword ptr [rax], ebx
0000000140007642  call       0x140006ce4
0000000140007647  mov        r10d, ebx
000000014000764a  mov        rbx, qword ptr [rsp + 0x30]
000000014000764f  mov        eax, r10d
0000000140007652  add        rsp, 0x20
0000000140007656  pop        rdi
0000000140007657  ret        
0000000140007658  test       rcx, rcx
000000014000765b  je         0x140007636
000000014000765d  test       r11, r11
0000000140007660  je         0x140007636
0000000140007662  test       r9, r9
0000000140007665  jne        0x14000766d
0000000140007667  mov        word ptr [rcx], r10w
000000014000766b  jmp        0x14000764a
000000014000766d  test       rbx, rbx
0000000140007670  jne        0x140007678
0000000140007672  mov        word ptr [rcx], r10w
0000000140007676  jmp        0x140007636
0000000140007678  sub        rbx, rcx
000000014000767b  mov        rdx, rcx
000000014000767e  mov        r8, r11
0000000140007681  mov        rdi, r9
0000000140007684  cmp        r9, -1
0000000140007688  jne        0x1400076a2
000000014000768a  movzx      eax, word ptr [rbx + rdx]
000000014000768e  mov        word ptr [rdx], ax
0000000140007691  lea        rdx, [rdx + 2]
0000000140007695  test       ax, ax
0000000140007698  je         0x1400076c7
000000014000769a  sub        r8, 1
000000014000769e  jne        0x14000768a
00000001400076a0  jmp        0x1400076c7
00000001400076a2  movzx      eax, word ptr [rbx + rdx]
00000001400076a6  mov        word ptr [rdx], ax
00000001400076a9  lea        rdx, [rdx + 2]
00000001400076ad  test       ax, ax
00000001400076b0  je         0x1400076be
00000001400076b2  sub        r8, 1
00000001400076b6  je         0x1400076be
00000001400076b8  sub        rdi, 1
00000001400076bc  jne        0x1400076a2
00000001400076be  test       rdi, rdi
00000001400076c1  jne        0x1400076c7
00000001400076c3  mov        word ptr [rdx], r10w
00000001400076c7  test       r8, r8
00000001400076ca  jne        0x14000764a
00000001400076d0  cmp        r9, -1
00000001400076d4  jne        0x1400076e5
00000001400076d6  mov        word ptr [rcx + r11*2 - 2], r10w
00000001400076dc  lea        r10d, [r8 + 0x50]
00000001400076e0  jmp        0x14000764a
00000001400076e5  mov        word ptr [rcx], r10w
00000001400076e9  call       0x140006ec0
00000001400076ee  mov        ebx, 0x22
00000001400076f3  jmp        0x140007640
00000001400076f8  push       rbx
00000001400076fa  sub        rsp, 0x20
00000001400076fe  mov        r8, rdx
0000000140007701  mov        rbx, rcx
0000000140007704  test       rcx, rcx
0000000140007707  je         0x140007717
0000000140007709  xor        edx, edx
000000014000770b  lea        rax, [rdx - 0x20]
000000014000770f  div        rbx
0000000140007712  cmp        rax, r8
0000000140007715  jb         0x14000775a
0000000140007717  imul       rbx, r8
000000014000771b  mov        eax, 1
0000000140007720  test       rbx, rbx
0000000140007723  cmove      rbx, rax
0000000140007727  jmp        0x14000773e
0000000140007729  call       0x1400063cc
000000014000772e  test       eax, eax
0000000140007730  je         0x14000775a
0000000140007732  mov        rcx, rbx
0000000140007735  call       0x14000a220
000000014000773a  test       eax, eax
000000014000773c  je         0x14000775a
000000014000773e  mov        rcx, qword ptr [rip + 0x136c3]
0000000140007745  mov        r8, rbx
0000000140007748  mov        edx, 8
000000014000774d  call       qword ptr [rip + 0x68fd] ; KERNEL32.dll!HeapAlloc
0000000140007753  test       rax, rax
0000000140007756  je         0x140007729
0000000140007758  jmp        0x140007767
000000014000775a  call       0x140006ec0
000000014000775f  mov        dword ptr [rax], 0xc
0000000140007765  xor        eax, eax
0000000140007767  add        rsp, 0x20
000000014000776b  pop        rbx
000000014000776c  ret        
000000014000776d  int3       
000000014000776e  int3       
000000014000776f  int3       
0000000140007770  test       rcx, rcx
0000000140007773  je         0x1400077ac
0000000140007775  push       rbx
0000000140007776  sub        rsp, 0x20
000000014000777a  mov        r8, rcx
000000014000777d  xor        edx, edx
000000014000777f  mov        rcx, qword ptr [rip + 0x13682]
0000000140007786  call       qword ptr [rip + 0x68cc] ; KERNEL32.dll!HeapFree
000000014000778c  test       eax, eax
000000014000778e  jne        0x1400077a7
0000000140007790  call       0x140006ec0
0000000140007795  mov        rbx, rax
0000000140007798  call       qword ptr [rip + 0x69b2] ; KERNEL32.dll!GetLastError
000000014000779e  mov        ecx, eax
00000001400077a0  call       0x140006e08
00000001400077a5  mov        dword ptr [rbx], eax
00000001400077a7  add        rsp, 0x20
00000001400077ab  pop        rbx
00000001400077ac  ret        
00000001400077ad  int3       
00000001400077ae  int3       
00000001400077af  int3       
00000001400077b0  cmp        rcx, rdx
00000001400077b3  jae        0x1400077b9
00000001400077b5  or         eax, 0xffffffff
00000001400077b8  ret        
00000001400077b9  xor        eax, eax
00000001400077bb  cmp        rcx, rdx
00000001400077be  seta       al
00000001400077c1  ret        
00000001400077c2  int3       
00000001400077c3  int3       
00000001400077c4  mov        qword ptr [rsp + 0x18], rbx
00000001400077c9  push       rbp
00000001400077ca  push       rsi
00000001400077cb  push       rdi
00000001400077cc  push       r12
00000001400077ce  push       r13
00000001400077d0  push       r14
00000001400077d2  push       r15
00000001400077d4  lea        rbp, [rsp - 0x1c0]
00000001400077dc  sub        rsp, 0x2c0
00000001400077e3  mov        rax, qword ptr [rip + 0x118de]
00000001400077ea  xor        rax, rsp
00000001400077ed  mov        qword ptr [rbp + 0x1b8], rax
00000001400077f4  xor        edi, edi
00000001400077f6  mov        qword ptr [rsp + 0x58], rdx
00000001400077fb  mov        r12, rcx
00000001400077fe  test       rdx, rdx
0000000140007801  jne        0x140007819
0000000140007803  call       0x140006ec0
0000000140007808  lea        ebx, [rdi + 0x16]
000000014000780b  mov        dword ptr [rax], ebx
000000014000780d  call       0x140006ce4
0000000140007812  mov        eax, ebx
0000000140007814  jmp        0x140007b4f
0000000140007819  xorps      xmm0, xmm0
000000014000781c  mov        qword ptr [rdx], rdi
000000014000781f  mov        rax, qword ptr [rcx]
0000000140007822  movdqu     xmmword ptr [rsp + 0x30], xmm0
0000000140007828  mov        rsi, qword ptr [rsp + 0x38]
000000014000782d  mov        r14, qword ptr [rsp + 0x30]
0000000140007832  mov        qword ptr [rsp + 0x40], rdi
0000000140007837  test       rax, rax
000000014000783a  je         0x140007a10
0000000140007840  lea        rdx, [rbp + 0x1b0]
0000000140007847  mov        dword ptr [rbp + 0x1b0], 0x3f002a
0000000140007851  mov        rcx, rax
0000000140007854  mov        word ptr [rbp + 0x1b4], di
000000014000785b  movabs     rbx, 0x200000000801
0000000140007865  call       0x140009550
000000014000786a  mov        r13, qword ptr [r12]
000000014000786e  mov        rcx, rax
0000000140007871  test       rax, rax
0000000140007874  jne        0x14000789c
0000000140007876  lea        r9, [rsp + 0x30]
000000014000787b  xor        r8d, r8d
000000014000787e  xor        edx, edx
0000000140007880  mov        rcx, r13
0000000140007883  call       0x140007b90
0000000140007888  mov        rsi, qword ptr [rsp + 0x38]
000000014000788d  mov        r15d, eax
0000000140007890  mov        r14, qword ptr [rsp + 0x30]
0000000140007895  test       eax, eax
0000000140007897  jmp        0x1400079fd
000000014000789c  cmp        rax, r13
000000014000789f  je         0x1400078c0
00000001400078a1  movzx      eax, word ptr [rcx]
00000001400078a4  sub        ax, 0x2f
00000001400078a8  cmp        ax, 0x2d
00000001400078ac  ja         0x1400078b7
00000001400078ae  movzx      eax, ax
00000001400078b1  bt         rbx, rax
00000001400078b5  jb         0x1400078c0
00000001400078b7  sub        rcx, 2
00000001400078bb  cmp        rcx, r13
00000001400078be  jne        0x1400078a1
00000001400078c0  movzx      edx, word ptr [rcx]
00000001400078c3  cmp        dx, 0x3a
00000001400078c7  jne        0x1400078ec
00000001400078c9  lea        rax, [r13 + 2]
00000001400078cd  cmp        rcx, rax
00000001400078d0  je         0x1400078ec
00000001400078d2  lea        r9, [rsp + 0x30]
00000001400078d7  xor        r8d, r8d
00000001400078da  xor        edx, edx
00000001400078dc  mov        rcx, r13
00000001400078df  call       0x140007b90
00000001400078e4  mov        r15d, eax
00000001400078e7  jmp        0x1400079f0
00000001400078ec  sub        dx, 0x2f
00000001400078f0  cmp        dx, 0x2d
00000001400078f4  ja         0x140007901
00000001400078f6  movzx      eax, dx
00000001400078f9  bt         rbx, rax
00000001400078fd  mov        al, 1
00000001400078ff  jb         0x140007904
0000000140007901  mov        al, dil
0000000140007904  sub        rcx, r13
0000000140007907  mov        dword ptr [rsp + 0x28], edi
000000014000790b  sar        rcx, 1
000000014000790e  lea        r8, [rsp + 0x60]
0000000140007913  inc        rcx
0000000140007916  mov        qword ptr [rsp + 0x20], rdi
000000014000791b  neg        al
000000014000791d  sbb        r15, r15
0000000140007920  xor        r9d, r9d
0000000140007923  and        r15, rcx
0000000140007926  xor        edx, edx
0000000140007928  mov        rcx, r13
000000014000792b  mov        qword ptr [rsp + 0x48], r15
0000000140007930  call       qword ptr [rip + 0x688a] ; KERNEL32.dll!FindFirstFileExW
0000000140007936  mov        rbx, rax
0000000140007939  cmp        rax, -1
000000014000793d  je         0x1400078d2
000000014000793f  sub        rsi, r14
0000000140007942  sar        rsi, 3
0000000140007946  mov        qword ptr [rsp + 0x50], rsi
000000014000794b  cmp        word ptr [rbp - 0x74], 0x2e
0000000140007950  jne        0x140007965
0000000140007952  cmp        word ptr [rbp - 0x72], di
0000000140007956  je         0x140007985
0000000140007958  cmp        word ptr [rbp - 0x72], 0x2e
000000014000795d  jne        0x140007965
000000014000795f  cmp        word ptr [rbp - 0x70], di
0000000140007963  je         0x140007985
0000000140007965  lea        r9, [rsp + 0x30]
000000014000796a  mov        r8, r15
000000014000796d  mov        rdx, r13
0000000140007970  lea        rcx, [rbp - 0x74]
0000000140007974  call       0x140007b90
0000000140007979  mov        r15d, eax
000000014000797c  test       eax, eax
000000014000797e  jne        0x1400079e7
0000000140007980  mov        r15, qword ptr [rsp + 0x48]
0000000140007985  lea        rdx, [rsp + 0x60]
000000014000798a  mov        rcx, rbx
000000014000798d  call       qword ptr [rip + 0x6835] ; KERNEL32.dll!FindNextFileW
0000000140007993  test       eax, eax
0000000140007995  jne        0x14000794b
0000000140007997  mov        rsi, qword ptr [rsp + 0x38]
000000014000799c  mov        r14, qword ptr [rsp + 0x30]
00000001400079a1  mov        rdx, rsi
00000001400079a4  mov        rax, qword ptr [rsp + 0x50]
00000001400079a9  sub        rdx, r14
00000001400079ac  sar        rdx, 3
00000001400079b0  cmp        rax, rdx
00000001400079b3  jne        0x1400079c0
00000001400079b5  mov        rcx, rbx
00000001400079b8  call       qword ptr [rip + 0x67fa] ; KERNEL32.dll!FindClose
00000001400079be  jmp        0x140007a03
00000001400079c0  sub        rdx, rax
00000001400079c3  lea        rcx, [r14 + rax*8]
00000001400079c7  lea        r9, [rip - 0x21e]
00000001400079ce  mov        r8d, 8
00000001400079d4  call       0x14000ac10 ; ATAUAVH
00000001400079d9  mov        rcx, rbx
00000001400079dc  call       qword ptr [rip + 0x67d6] ; KERNEL32.dll!FindClose
00000001400079e2  mov        r15d, edi
00000001400079e5  jmp        0x1400079fa
00000001400079e7  mov        rcx, rbx
00000001400079ea  call       qword ptr [rip + 0x67c8] ; KERNEL32.dll!FindClose
00000001400079f0  mov        rsi, qword ptr [rsp + 0x38]
00000001400079f5  mov        r14, qword ptr [rsp + 0x30]
00000001400079fa  test       r15d, r15d
00000001400079fd  jne        0x140007b11
0000000140007a03  add        r12, 8
0000000140007a07  mov        rax, qword ptr [r12]
0000000140007a0b  jmp        0x140007837
0000000140007a10  mov        rax, rsi
0000000140007a13  mov        qword ptr [rbp + 0x1b0], rdi
0000000140007a1a  sub        rax, r14
0000000140007a1d  mov        r10, rdi
0000000140007a20  mov        r15, rax
0000000140007a23  mov        rdx, r14
0000000140007a26  sar        r15, 3
0000000140007a2a  mov        r9, rdi
0000000140007a2d  inc        r15
0000000140007a30  lea        rcx, [rax + 7]
0000000140007a34  shr        rcx, 3
0000000140007a38  cmp        r14, rsi
0000000140007a3b  cmova      rcx, rdi
0000000140007a3f  test       rcx, rcx
0000000140007a42  je         0x140007a6e
0000000140007a44  mov        r11, qword ptr [rdx]
0000000140007a47  or         rax, 0xffffffffffffffff
0000000140007a4b  inc        rax
0000000140007a4e  cmp        word ptr [r11 + rax*2], di
0000000140007a53  jne        0x140007a4b
0000000140007a55  inc        r10
0000000140007a58  add        rdx, 8
0000000140007a5c  add        r10, rax
0000000140007a5f  inc        r9
0000000140007a62  cmp        r9, rcx
0000000140007a65  jne        0x140007a44
0000000140007a67  mov        qword ptr [rbp + 0x1b0], r10
0000000140007a6e  mov        r8d, 2
0000000140007a74  mov        rdx, r10
0000000140007a77  mov        rcx, r15
0000000140007a7a  call       0x140005a74
0000000140007a7f  mov        rbx, rax
0000000140007a82  test       rax, rax
0000000140007a85  jne        0x140007a8d
0000000140007a87  or         r15d, 0xffffffff
0000000140007a8b  jmp        0x140007b0a
0000000140007a8d  lea        rcx, [rax + r15*8]
0000000140007a91  mov        r15, r14
0000000140007a94  mov        qword ptr [rsp + 0x48], rcx
0000000140007a99  mov        r13, rcx
0000000140007a9c  cmp        r14, rsi
0000000140007a9f  je         0x140007aff
0000000140007aa1  sub        rax, r14
0000000140007aa4  mov        qword ptr [rsp + 0x50], rax
0000000140007aa9  mov        r8, qword ptr [r15]
0000000140007aac  or         r12, 0xffffffffffffffff
0000000140007ab0  inc        r12
0000000140007ab3  cmp        word ptr [r8 + r12*2], di
0000000140007ab8  jne        0x140007ab0
0000000140007aba  mov        rdx, qword ptr [rbp + 0x1b0]
0000000140007ac1  mov        rax, r13
0000000140007ac4  sub        rax, rcx
0000000140007ac7  inc        r12
0000000140007aca  sar        rax, 1
0000000140007acd  mov        r9, r12
0000000140007ad0  sub        rdx, rax
0000000140007ad3  mov        rcx, r13
0000000140007ad6  call       0x140007614
0000000140007adb  test       eax, eax
0000000140007add  jne        0x140007b79
0000000140007ae3  mov        rax, qword ptr [rsp + 0x50]
0000000140007ae8  mov        rcx, qword ptr [rsp + 0x48]
0000000140007aed  mov        qword ptr [rax + r15], r13
0000000140007af1  add        r15, 8
0000000140007af5  lea        r13, [r13 + r12*2]
0000000140007afa  cmp        r15, rsi
0000000140007afd  jne        0x140007aa9
0000000140007aff  mov        rax, qword ptr [rsp + 0x58]
0000000140007b04  mov        r15d, edi
0000000140007b07  mov        qword ptr [rax], rbx
0000000140007b0a  xor        ecx, ecx
0000000140007b0c  call       0x140007770
0000000140007b11  mov        rbx, rsi
0000000140007b14  mov        r12, r14
0000000140007b17  sub        rbx, r14
0000000140007b1a  add        rbx, 7
0000000140007b1e  shr        rbx, 3
0000000140007b22  cmp        r14, rsi
0000000140007b25  cmova      rbx, rdi
0000000140007b29  test       rbx, rbx
0000000140007b2c  je         0x140007b44
0000000140007b2e  mov        rcx, qword ptr [r12]
0000000140007b32  call       0x140007770
0000000140007b37  inc        rdi
0000000140007b3a  lea        r12, [r12 + 8]
0000000140007b3f  cmp        rdi, rbx
0000000140007b42  jne        0x140007b2e
0000000140007b44  mov        rcx, r14
0000000140007b47  call       0x140007770
0000000140007b4c  mov        eax, r15d
0000000140007b4f  mov        rcx, qword ptr [rbp + 0x1b8]
0000000140007b56  xor        rcx, rsp
0000000140007b59  call       0x1400037e0
0000000140007b5e  mov        rbx, qword ptr [rsp + 0x310]
0000000140007b66  add        rsp, 0x2c0
0000000140007b6d  pop        r15
0000000140007b6f  pop        r14
0000000140007b71  pop        r13
0000000140007b73  pop        r12
0000000140007b75  pop        rdi
0000000140007b76  pop        rsi
0000000140007b77  pop        rbp
0000000140007b78  ret        
0000000140007b79  xor        r9d, r9d
0000000140007b7c  mov        qword ptr [rsp + 0x20], rdi
0000000140007b81  xor        r8d, r8d
0000000140007b84  xor        edx, edx
0000000140007b86  xor        ecx, ecx
0000000140007b88  call       0x140006d04
0000000140007b8d  int3       
0000000140007b8e  int3       
0000000140007b8f  int3       
0000000140007b90  mov        qword ptr [rsp + 8], rbx
0000000140007b95  mov        qword ptr [rsp + 0x10], rbp
0000000140007b9a  mov        qword ptr [rsp + 0x18], rsi
0000000140007b9f  push       rdi
0000000140007ba0  push       r12
0000000140007ba2  push       r13
0000000140007ba4  push       r14
0000000140007ba6  push       r15
0000000140007ba8  sub        rsp, 0x30
0000000140007bac  or         rbp, 0xffffffffffffffff
0000000140007bb0  mov        rdi, r9
0000000140007bb3  xor        esi, esi
0000000140007bb5  mov        r14, r8
0000000140007bb8  mov        r13, rdx
0000000140007bbb  mov        r12, rcx
0000000140007bbe  inc        rbp
0000000140007bc1  cmp        word ptr [rcx + rbp*2], si
0000000140007bc5  jne        0x140007bbe
0000000140007bc7  mov        rax, r14
0000000140007bca  inc        rbp
0000000140007bcd  not        rax
0000000140007bd0  cmp        rbp, rax
0000000140007bd3  jbe        0x140007bf7
0000000140007bd5  mov        eax, 0xc
0000000140007bda  mov        rbx, qword ptr [rsp + 0x60]
0000000140007bdf  mov        rbp, qword ptr [rsp + 0x68]
0000000140007be4  mov        rsi, qword ptr [rsp + 0x70]
0000000140007be9  add        rsp, 0x30
0000000140007bed  pop        r15
0000000140007bef  pop        r14
0000000140007bf1  pop        r13
0000000140007bf3  pop        r12
0000000140007bf5  pop        rdi
0000000140007bf6  ret        
0000000140007bf7  lea        r15, [r8 + 1]
0000000140007bfb  mov        edx, 2
0000000140007c00  add        r15, rbp
0000000140007c03  mov        rcx, r15
0000000140007c06  call       0x1400076f8
0000000140007c0b  mov        rbx, rax
0000000140007c0e  test       r14, r14
0000000140007c11  je         0x140007c2c
0000000140007c13  mov        r9, r14
0000000140007c16  mov        r8, r13
0000000140007c19  mov        rdx, r15
0000000140007c1c  mov        rcx, rax
0000000140007c1f  call       0x140007614
0000000140007c24  test       eax, eax
0000000140007c26  jne        0x140007d04
0000000140007c2c  sub        r15, r14
0000000140007c2f  lea        rcx, [rbx + r14*2]
0000000140007c33  mov        rdx, r15
0000000140007c36  mov        r9, rbp
0000000140007c39  mov        r8, r12
0000000140007c3c  call       0x140007614
0000000140007c41  test       eax, eax
0000000140007c43  jne        0x140007d04
0000000140007c49  mov        rcx, qword ptr [rdi + 8]
0000000140007c4d  lea        r15d, [rax + 8]
0000000140007c51  mov        r14, qword ptr [rdi + 0x10]
0000000140007c55  cmp        rcx, r14
0000000140007c58  jne        0x140007cfb
0000000140007c5e  cmp        qword ptr [rdi], rsi
0000000140007c61  jne        0x140007c8e
0000000140007c63  mov        edx, r15d
0000000140007c66  lea        ecx, [rax + 4]
0000000140007c69  call       0x1400076f8
0000000140007c6e  xor        ecx, ecx
0000000140007c70  mov        qword ptr [rdi], rax
0000000140007c73  call       0x140007770
0000000140007c78  mov        rcx, qword ptr [rdi]
0000000140007c7b  test       rcx, rcx
0000000140007c7e  je         0x140007cc2
0000000140007c80  lea        rax, [rcx + 0x20]
0000000140007c84  mov        qword ptr [rdi + 8], rcx
0000000140007c88  mov        qword ptr [rdi + 0x10], rax
0000000140007c8c  jmp        0x140007cfb
0000000140007c8e  sub        r14, qword ptr [rdi]
0000000140007c91  movabs     rax, 0x7fffffffffffffff
0000000140007c9b  sar        r14, 3
0000000140007c9f  cmp        r14, rax
0000000140007ca2  ja         0x140007cc2
0000000140007ca4  mov        rcx, qword ptr [rdi]
0000000140007ca7  lea        rbp, [r14 + r14]
0000000140007cab  mov        rdx, rbp
0000000140007cae  mov        r8, r15
0000000140007cb1  call       0x14000a094
0000000140007cb6  test       rax, rax
0000000140007cb9  jne        0x140007cdd
0000000140007cbb  xor        ecx, ecx
0000000140007cbd  call       0x140007770
0000000140007cc2  mov        rcx, rbx
0000000140007cc5  call       0x140007770
0000000140007cca  mov        esi, 0xc
0000000140007ccf  xor        ecx, ecx
0000000140007cd1  call       0x140007770
0000000140007cd6  mov        eax, esi
0000000140007cd8  jmp        0x140007bda
0000000140007cdd  lea        rcx, [rax + r14*8]
0000000140007ce1  mov        qword ptr [rdi], rax
0000000140007ce4  mov        qword ptr [rdi + 8], rcx
0000000140007ce8  lea        rcx, [rax + rbp*8]
0000000140007cec  mov        qword ptr [rdi + 0x10], rcx
0000000140007cf0  xor        ecx, ecx
0000000140007cf2  call       0x140007770
0000000140007cf7  mov        rcx, qword ptr [rdi + 8]
0000000140007cfb  mov        qword ptr [rcx], rbx
0000000140007cfe  add        qword ptr [rdi + 8], r15
0000000140007d02  jmp        0x140007ccf
0000000140007d04  xor        r9d, r9d
0000000140007d07  mov        qword ptr [rsp + 0x20], rsi
0000000140007d0c  xor        r8d, r8d
0000000140007d0f  xor        edx, edx
0000000140007d11  xor        ecx, ecx
0000000140007d13  call       0x140006d04
0000000140007d18  int3       
0000000140007d19  int3       
0000000140007d1a  int3       
0000000140007d1b  int3       
0000000140007d1c  jmp        0x1400077c4
0000000140007d21  int3       
0000000140007d22  int3       
0000000140007d23  int3       
0000000140007d24  mov        qword ptr [rsp + 8], rbx
0000000140007d29  mov        qword ptr [rsp + 0x20], r9
0000000140007d2e  push       rdi
0000000140007d2f  sub        rsp, 0x20
0000000140007d33  mov        rdi, r9
0000000140007d36  mov        rbx, r8
0000000140007d39  mov        ecx, dword ptr [rdx]
0000000140007d3b  call       0x1400089b8
0000000140007d40  nop        
0000000140007d41  mov        rax, qword ptr [rbx]
0000000140007d44  mov        rcx, qword ptr [rax]
0000000140007d47  mov        rax, qword ptr [rcx + 0x88]
0000000140007d4e  add        rax, 0x18
0000000140007d52  mov        rcx, qword ptr [rip + 0x12857]
0000000140007d59  test       rcx, rcx
0000000140007d5c  je         0x140007dcd
0000000140007d5e  test       rax, rax
0000000140007d61  je         0x140007dc0
0000000140007d63  mov        r8d, 2
0000000140007d69  mov        r9d, r8d
0000000140007d6c  lea        edx, [r8 + 0x7e]
0000000140007d70  movups     xmm0, xmmword ptr [rax]
0000000140007d73  movups     xmmword ptr [rcx], xmm0
0000000140007d76  movups     xmm1, xmmword ptr [rax + 0x10]
0000000140007d7a  movups     xmmword ptr [rcx + 0x10], xmm1
0000000140007d7e  movups     xmm0, xmmword ptr [rax + 0x20]
0000000140007d82  movups     xmmword ptr [rcx + 0x20], xmm0
0000000140007d86  movups     xmm1, xmmword ptr [rax + 0x30]
0000000140007d8a  movups     xmmword ptr [rcx + 0x30], xmm1
0000000140007d8e  movups     xmm0, xmmword ptr [rax + 0x40]
0000000140007d92  movups     xmmword ptr [rcx + 0x40], xmm0
0000000140007d96  movups     xmm1, xmmword ptr [rax + 0x50]
0000000140007d9a  movups     xmmword ptr [rcx + 0x50], xmm1
0000000140007d9e  movups     xmm0, xmmword ptr [rax + 0x60]
0000000140007da2  movups     xmmword ptr [rcx + 0x60], xmm0
0000000140007da6  add        rcx, rdx
0000000140007da9  movups     xmm1, xmmword ptr [rax + 0x70]
0000000140007dad  movups     xmmword ptr [rcx - 0x10], xmm1
0000000140007db1  add        rax, rdx
0000000140007db4  sub        r9, 1
0000000140007db8  jne        0x140007d70
0000000140007dba  mov        al, byte ptr [rax]
0000000140007dbc  mov        byte ptr [rcx], al
0000000140007dbe  jmp        0x140007de7
0000000140007dc0  xor        edx, edx
0000000140007dc2  mov        r8d, 0x101
0000000140007dc8  call       0x140004c70
0000000140007dcd  call       0x140006ec0
0000000140007dd2  mov        dword ptr [rax], 0x16
0000000140007dd8  call       0x140006ce4
0000000140007ddd  mov        r8d, 2
0000000140007de3  lea        edx, [r8 + 0x7e]
0000000140007de7  mov        rax, qword ptr [rbx]
0000000140007dea  mov        rcx, qword ptr [rax]
0000000140007ded  mov        rax, qword ptr [rcx + 0x88]
0000000140007df4  add        rax, 0x119
0000000140007dfa  mov        rcx, qword ptr [rip + 0x127b7]
0000000140007e01  test       rcx, rcx
0000000140007e04  je         0x140007e64
0000000140007e06  test       rax, rax
0000000140007e09  je         0x140007e57
0000000140007e0b  movups     xmm0, xmmword ptr [rax]
0000000140007e0e  movups     xmmword ptr [rcx], xmm0
0000000140007e11  movups     xmm1, xmmword ptr [rax + 0x10]
0000000140007e15  movups     xmmword ptr [rcx + 0x10], xmm1
0000000140007e19  movups     xmm0, xmmword ptr [rax + 0x20]
0000000140007e1d  movups     xmmword ptr [rcx + 0x20], xmm0
0000000140007e21  movups     xmm1, xmmword ptr [rax + 0x30]
0000000140007e25  movups     xmmword ptr [rcx + 0x30], xmm1
0000000140007e29  movups     xmm0, xmmword ptr [rax + 0x40]
0000000140007e2d  movups     xmmword ptr [rcx + 0x40], xmm0
0000000140007e31  movups     xmm1, xmmword ptr [rax + 0x50]
0000000140007e35  movups     xmmword ptr [rcx + 0x50], xmm1
0000000140007e39  movups     xmm0, xmmword ptr [rax + 0x60]
0000000140007e3d  movups     xmmword ptr [rcx + 0x60], xmm0
0000000140007e41  add        rcx, rdx
0000000140007e44  movups     xmm1, xmmword ptr [rax + 0x70]
0000000140007e48  movups     xmmword ptr [rcx - 0x10], xmm1
0000000140007e4c  add        rax, rdx
0000000140007e4f  sub        r8, 1
0000000140007e53  jne        0x140007e0b
0000000140007e55  jmp        0x140007e74
0000000140007e57  xor        edx, edx
0000000140007e59  mov        r8d, 0x100
0000000140007e5f  call       0x140004c70
0000000140007e64  call       0x140006ec0
0000000140007e69  mov        dword ptr [rax], 0x16
0000000140007e6f  call       0x140006ce4
0000000140007e74  mov        rax, qword ptr [rbx + 8]
0000000140007e78  mov        rcx, qword ptr [rax]
0000000140007e7b  mov        rdx, qword ptr [rcx]
0000000140007e7e  or         eax, 0xffffffff
0000000140007e81  lock xadd  dword ptr [rdx], eax
0000000140007e85  cmp        eax, 1
0000000140007e88  jne        0x140007ea5
0000000140007e8a  mov        rax, qword ptr [rbx + 8]
0000000140007e8e  mov        rcx, qword ptr [rax]
0000000140007e91  lea        rax, [rip + 0x11408]
0000000140007e98  cmp        qword ptr [rcx], rax
0000000140007e9b  je         0x140007ea5
0000000140007e9d  mov        rcx, qword ptr [rcx]
0000000140007ea0  call       0x140007770
0000000140007ea5  mov        rax, qword ptr [rbx]
0000000140007ea8  mov        rdx, qword ptr [rax]
0000000140007eab  mov        rax, qword ptr [rbx + 8]
0000000140007eaf  mov        rcx, qword ptr [rax]
0000000140007eb2  mov        rax, qword ptr [rdx + 0x88]
0000000140007eb9  mov        qword ptr [rcx], rax
0000000140007ebc  mov        rax, qword ptr [rbx]
0000000140007ebf  mov        rcx, qword ptr [rax]
0000000140007ec2  mov        rax, qword ptr [rcx + 0x88]
0000000140007ec9  lock inc   dword ptr [rax]
0000000140007ecc  mov        ecx, dword ptr [rdi]
0000000140007ece  call       0x140008a18
0000000140007ed3  mov        rbx, qword ptr [rsp + 0x30]
0000000140007ed8  add        rsp, 0x20
0000000140007edc  pop        rdi
0000000140007edd  ret        
0000000140007ede  int3       
0000000140007edf  int3       
0000000140007ee0  push       rbx
0000000140007ee2  sub        rsp, 0x40
0000000140007ee6  mov        ebx, ecx
0000000140007ee8  xor        edx, edx
0000000140007eea  lea        rcx, [rsp + 0x20]
0000000140007eef  call       0x140005474
0000000140007ef4  and        dword ptr [rip + 0x126cd], 0
0000000140007efb  cmp        ebx, -2
0000000140007efe  jne        0x140007f12
0000000140007f00  mov        dword ptr [rip + 0x126be], 1
0000000140007f0a  call       qword ptr [rip + 0x62d0] ; KERNEL32.dll!GetOEMCP
0000000140007f10  jmp        0x140007f27
0000000140007f12  cmp        ebx, -3
0000000140007f15  jne        0x140007f2b
0000000140007f17  mov        dword ptr [rip + 0x126a7], 1
0000000140007f21  call       qword ptr [rip + 0x62b1] ; KERNEL32.dll!GetACP
0000000140007f27  mov        ebx, eax
0000000140007f29  jmp        0x140007f42
0000000140007f2b  cmp        ebx, -4
0000000140007f2e  jne        0x140007f42
0000000140007f30  mov        rax, qword ptr [rsp + 0x28]
0000000140007f35  mov        dword ptr [rip + 0x12689], 1
0000000140007f3f  mov        ebx, dword ptr [rax + 0xc]
0000000140007f42  cmp        byte ptr [rsp + 0x38], 0
0000000140007f47  je         0x140007f55
0000000140007f49  mov        rcx, qword ptr [rsp + 0x20]
0000000140007f4e  and        dword ptr [rcx + 0x3a8], 0xfffffffd
0000000140007f55  mov        eax, ebx
0000000140007f57  add        rsp, 0x40
0000000140007f5b  pop        rbx
0000000140007f5c  ret        
0000000140007f5d  int3       
0000000140007f5e  int3       
0000000140007f5f  int3       
0000000140007f60  mov        qword ptr [rsp + 8], rbx
0000000140007f65  mov        qword ptr [rsp + 0x10], rbp
0000000140007f6a  mov        qword ptr [rsp + 0x18], rsi
0000000140007f6f  push       rdi
0000000140007f70  sub        rsp, 0x20
0000000140007f74  lea        rbx, [rcx + 0x18]
0000000140007f78  mov        rsi, rcx
0000000140007f7b  mov        ebp, 0x101
0000000140007f80  mov        rcx, rbx
0000000140007f83  mov        r8d, ebp
0000000140007f86  xor        edx, edx
0000000140007f88  call       0x140004c70
0000000140007f8d  xor        eax, eax
0000000140007f8f  lea        rdi, [rsi + 0xc]
0000000140007f93  mov        qword ptr [rsi + 4], rax
0000000140007f97  mov        ecx, 6
0000000140007f9c  mov        qword ptr [rsi + 0x220], rax
0000000140007fa3  movzx      eax, ax
0000000140007fa6  rep stosw  word ptr [rdi], ax
0000000140007fa9  lea        rdi, [rip + 0x112f0]
0000000140007fb0  sub        rdi, rsi
0000000140007fb3  mov        al, byte ptr [rdi + rbx]
0000000140007fb6  mov        byte ptr [rbx], al
0000000140007fb8  inc        rbx
0000000140007fbb  sub        rbp, 1
0000000140007fbf  jne        0x140007fb3
0000000140007fc1  lea        rcx, [rsi + 0x119]
0000000140007fc8  mov        edx, 0x100
0000000140007fcd  mov        al, byte ptr [rcx + rdi]
0000000140007fd0  mov        byte ptr [rcx], al
0000000140007fd2  inc        rcx
0000000140007fd5  sub        rdx, 1
0000000140007fd9  jne        0x140007fcd
0000000140007fdb  mov        rbx, qword ptr [rsp + 0x30]
0000000140007fe0  mov        rbp, qword ptr [rsp + 0x38]
0000000140007fe5  mov        rsi, qword ptr [rsp + 0x40]
0000000140007fea  add        rsp, 0x20
0000000140007fee  pop        rdi
0000000140007fef  ret        
0000000140007ff0  mov        qword ptr [rsp + 0x10], rbx
0000000140007ff5  mov        qword ptr [rsp + 0x18], rsi
0000000140007ffa  push       rbp
0000000140007ffb  lea        rbp, [rsp - 0x680]
0000000140008003  sub        rsp, 0x780
000000014000800a  mov        rax, qword ptr [rip + 0x110b7]
0000000140008011  xor        rax, rsp
0000000140008014  mov        qword ptr [rbp + 0x670], rax
000000014000801b  mov        rbx, rcx
000000014000801e  mov        ecx, dword ptr [rcx + 4]
0000000140008021  cmp        ecx, 0xfde9
0000000140008027  je         0x14000816a
000000014000802d  lea        rdx, [rsp + 0x50]
0000000140008032  call       qword ptr [rip + 0x61b0] ; KERNEL32.dll!GetCPInfo
0000000140008038  test       eax, eax
000000014000803a  je         0x14000816a
0000000140008040  xor        eax, eax
0000000140008042  lea        rcx, [rsp + 0x70]
0000000140008047  mov        esi, 0x100
000000014000804c  mov        byte ptr [rcx], al
000000014000804e  inc        eax
0000000140008050  inc        rcx
0000000140008053  cmp        eax, esi
0000000140008055  jb         0x14000804c
0000000140008057  mov        al, byte ptr [rsp + 0x56]
000000014000805b  lea        rdx, [rsp + 0x56]
0000000140008060  mov        byte ptr [rsp + 0x70], 0x20
0000000140008065  jmp        0x140008087
0000000140008067  movzx      r8d, byte ptr [rdx + 1]
000000014000806c  movzx      ecx, al
000000014000806f  jmp        0x14000807c
0000000140008071  cmp        ecx, esi
0000000140008073  jae        0x140008081
0000000140008075  mov        byte ptr [rsp + rcx + 0x70], 0x20
000000014000807a  inc        ecx
000000014000807c  cmp        ecx, r8d
000000014000807f  jbe        0x140008071
0000000140008081  add        rdx, 2
0000000140008085  mov        al, byte ptr [rdx]
0000000140008087  test       al, al
0000000140008089  jne        0x140008067
000000014000808b  mov        eax, dword ptr [rbx + 4]
000000014000808e  lea        r8, [rsp + 0x70]
0000000140008093  and        dword ptr [rsp + 0x30], 0
0000000140008098  mov        r9d, esi
000000014000809b  mov        dword ptr [rsp + 0x28], eax
000000014000809f  mov        edx, 1
00000001400080a4  lea        rax, [rbp + 0x270]
00000001400080ab  xor        ecx, ecx
00000001400080ad  mov        qword ptr [rsp + 0x20], rax
00000001400080b2  call       0x140009584 ; @UATAUAVAWH
00000001400080b7  and        dword ptr [rsp + 0x40], 0
00000001400080bc  lea        r9, [rsp + 0x70]
00000001400080c1  mov        eax, dword ptr [rbx + 4]
00000001400080c4  mov        r8d, esi
00000001400080c7  mov        rdx, qword ptr [rbx + 0x220]
00000001400080ce  xor        ecx, ecx
00000001400080d0  mov        dword ptr [rsp + 0x38], eax
00000001400080d4  lea        rax, [rbp + 0x70]
00000001400080d8  mov        dword ptr [rsp + 0x30], esi
00000001400080dc  mov        qword ptr [rsp + 0x28], rax
00000001400080e1  mov        dword ptr [rsp + 0x20], esi
00000001400080e5  call       0x14000b2c8
00000001400080ea  and        dword ptr [rsp + 0x40], 0
00000001400080ef  lea        r9, [rsp + 0x70]
00000001400080f4  mov        eax, dword ptr [rbx + 4]
00000001400080f7  mov        r8d, 0x200
00000001400080fd  mov        rdx, qword ptr [rbx + 0x220]
0000000140008104  xor        ecx, ecx
0000000140008106  mov        dword ptr [rsp + 0x38], eax
000000014000810a  lea        rax, [rbp + 0x170]
0000000140008111  mov        dword ptr [rsp + 0x30], esi
0000000140008115  mov        qword ptr [rsp + 0x28], rax
000000014000811a  mov        dword ptr [rsp + 0x20], esi
000000014000811e  call       0x14000b2c8
0000000140008123  mov        eax, 1
0000000140008128  lea        rdx, [rbp + 0x270]
000000014000812f  test       byte ptr [rdx], 1
0000000140008132  je         0x14000813f
0000000140008134  or         byte ptr [rax + rbx + 0x18], 0x10
0000000140008139  mov        cl, byte ptr [rbp + rax + 0x6f]
000000014000813d  jmp        0x140008154
000000014000813f  test       byte ptr [rdx], 2
0000000140008142  je         0x140008152
0000000140008144  or         byte ptr [rax + rbx + 0x18], 0x20
0000000140008149  mov        cl, byte ptr [rbp + rax + 0x16f]
0000000140008150  jmp        0x140008154
0000000140008152  xor        cl, cl
0000000140008154  mov        byte ptr [rax + rbx + 0x118], cl
000000014000815b  add        rdx, 2
000000014000815f  inc        rax
0000000140008162  sub        rsi, 1
0000000140008166  jne        0x14000812f
0000000140008168  jmp        0x1400081ad
000000014000816a  xor        edx, edx
000000014000816c  mov        esi, 0x100
0000000140008171  lea        ecx, [rdx + 1]
0000000140008174  lea        r8d, [rdx - 0x61]
0000000140008178  lea        eax, [r8 + 0x20]
000000014000817c  cmp        eax, 0x19
000000014000817f  ja         0x14000818b
0000000140008181  or         byte ptr [rbx + rcx + 0x18], 0x10
0000000140008186  lea        eax, [rdx + 0x20]
0000000140008189  jmp        0x14000819d
000000014000818b  cmp        r8d, 0x19
000000014000818f  ja         0x14000819b
0000000140008191  or         byte ptr [rbx + rcx + 0x18], 0x20
0000000140008196  lea        eax, [rdx - 0x20]
0000000140008199  jmp        0x14000819d
000000014000819b  xor        al, al
000000014000819d  mov        byte ptr [rbx + rcx + 0x118], al
00000001400081a4  inc        edx
00000001400081a6  inc        rcx
00000001400081a9  cmp        edx, esi
00000001400081ab  jb         0x140008174
00000001400081ad  mov        rcx, qword ptr [rbp + 0x670]
00000001400081b4  xor        rcx, rsp
00000001400081b7  call       0x1400037e0
00000001400081bc  lea        r11, [rsp + 0x780]
00000001400081c4  mov        rbx, qword ptr [r11 + 0x18]
00000001400081c8  mov        rsi, qword ptr [r11 + 0x20]
00000001400081cc  mov        rsp, r11
00000001400081cf  pop        rbp
00000001400081d0  ret        
00000001400081d1  int3       
00000001400081d2  int3       
00000001400081d3  int3       
00000001400081d4  mov        qword ptr [rsp + 8], rbx
00000001400081d9  mov        qword ptr [rsp + 0x20], r9
00000001400081de  mov        qword ptr [rsp + 0x18], r8
00000001400081e3  push       rbp
00000001400081e4  push       rsi
00000001400081e5  push       rdi
00000001400081e6  mov        rbp, rsp
00000001400081e9  sub        rsp, 0x40
00000001400081ed  mov        sil, dl
00000001400081f0  mov        ebx, ecx
00000001400081f2  mov        rdx, r9
00000001400081f5  mov        rcx, r8
00000001400081f8  call       0x140008394
00000001400081fd  mov        ecx, ebx
00000001400081ff  call       0x140007ee0
0000000140008204  mov        rcx, qword ptr [rbp + 0x30]
0000000140008208  mov        edi, eax
000000014000820a  mov        r8, qword ptr [rcx + 0x88]
0000000140008211  cmp        eax, dword ptr [r8 + 4]
0000000140008215  jne        0x14000821e
0000000140008217  xor        eax, eax
0000000140008219  jmp        0x1400082d6
000000014000821e  mov        ecx, 0x228
0000000140008223  call       0x140009318
0000000140008228  mov        rbx, rax
000000014000822b  test       rax, rax
000000014000822e  je         0x1400082c9
0000000140008234  mov        rax, qword ptr [rbp + 0x30]
0000000140008238  mov        edx, 4
000000014000823d  mov        rcx, rbx
0000000140008240  mov        rax, qword ptr [rax + 0x88]
0000000140008247  lea        r8d, [rdx + 0x7c]
000000014000824b  movups     xmm0, xmmword ptr [rax]
000000014000824e  movups     xmmword ptr [rcx], xmm0
0000000140008251  movups     xmm1, xmmword ptr [rax + 0x10]
0000000140008255  movups     xmmword ptr [rcx + 0x10], xmm1
0000000140008259  movups     xmm0, xmmword ptr [rax + 0x20]
000000014000825d  movups     xmmword ptr [rcx + 0x20], xmm0
0000000140008261  movups     xmm1, xmmword ptr [rax + 0x30]
0000000140008265  movups     xmmword ptr [rcx + 0x30], xmm1
0000000140008269  movups     xmm0, xmmword ptr [rax + 0x40]
000000014000826d  movups     xmmword ptr [rcx + 0x40], xmm0
0000000140008271  movups     xmm1, xmmword ptr [rax + 0x50]
0000000140008275  movups     xmmword ptr [rcx + 0x50], xmm1
0000000140008279  movups     xmm0, xmmword ptr [rax + 0x60]
000000014000827d  movups     xmmword ptr [rcx + 0x60], xmm0
0000000140008281  add        rcx, r8
0000000140008284  movups     xmm1, xmmword ptr [rax + 0x70]
0000000140008288  add        rax, r8
000000014000828b  movups     xmmword ptr [rcx - 0x10], xmm1
000000014000828f  sub        rdx, 1
0000000140008293  jne        0x14000824b
0000000140008295  movups     xmm0, xmmword ptr [rax]
0000000140008298  movups     xmmword ptr [rcx], xmm0
000000014000829b  movups     xmm1, xmmword ptr [rax + 0x10]
000000014000829f  movups     xmmword ptr [rcx + 0x10], xmm1
00000001400082a3  mov        rax, qword ptr [rax + 0x20]
00000001400082a7  mov        qword ptr [rcx + 0x20], rax
00000001400082ab  mov        ecx, edi
00000001400082ad  and        dword ptr [rbx], edx
00000001400082af  mov        rdx, rbx
00000001400082b2  call       0x1400084cc
00000001400082b7  mov        edi, eax
00000001400082b9  cmp        eax, -1
00000001400082bc  jne        0x1400082e3
00000001400082be  call       0x140006ec0
00000001400082c3  mov        dword ptr [rax], 0x16
00000001400082c9  or         edi, 0xffffffff
00000001400082cc  mov        rcx, rbx
00000001400082cf  call       0x140007770
00000001400082d4  mov        eax, edi
00000001400082d6  mov        rbx, qword ptr [rsp + 0x60]
00000001400082db  add        rsp, 0x40
00000001400082df  pop        rdi
00000001400082e0  pop        rsi
00000001400082e1  pop        rbp
00000001400082e2  ret        
00000001400082e3  test       sil, sil
00000001400082e6  jne        0x1400082ed
00000001400082e8  call       0x140006320
00000001400082ed  mov        rax, qword ptr [rbp + 0x30]
00000001400082f1  mov        rcx, qword ptr [rax + 0x88]
00000001400082f8  or         eax, 0xffffffff
00000001400082fb  lock xadd  dword ptr [rcx], eax
00000001400082ff  cmp        eax, 1
0000000140008302  jne        0x140008320
0000000140008304  mov        rax, qword ptr [rbp + 0x30]
0000000140008308  mov        rcx, qword ptr [rax + 0x88]
000000014000830f  lea        rax, [rip + 0x10f8a]
0000000140008316  cmp        rcx, rax
0000000140008319  je         0x140008320
000000014000831b  call       0x140007770
0000000140008320  mov        dword ptr [rbx], 1
0000000140008326  mov        rcx, rbx
0000000140008329  mov        rax, qword ptr [rbp + 0x30]
000000014000832d  xor        ebx, ebx
000000014000832f  mov        qword ptr [rax + 0x88], rcx
0000000140008336  mov        rax, qword ptr [rbp + 0x30]
000000014000833a  mov        ecx, dword ptr [rax + 0x3a8]
0000000140008340  test       dword ptr [rip + 0x1153a], ecx
0000000140008346  jne        0x1400082cc
0000000140008348  lea        rax, [rbp + 0x30]
000000014000834c  mov        qword ptr [rbp - 0x10], rax
0000000140008350  lea        r9, [rbp - 0x1c]
0000000140008354  lea        rax, [rbp + 0x38]
0000000140008358  mov        qword ptr [rbp - 8], rax
000000014000835c  lea        r8, [rbp - 0x10]
0000000140008360  lea        eax, [rbx + 5]
0000000140008363  lea        rdx, [rbp - 0x18]
0000000140008367  mov        dword ptr [rbp - 0x1c], eax
000000014000836a  lea        rcx, [rbp - 0x20]
000000014000836e  mov        dword ptr [rbp - 0x18], eax
0000000140008371  call       0x140007d24
0000000140008376  test       sil, sil
0000000140008379  je         0x1400082cc
000000014000837f  mov        rax, qword ptr [rbp + 0x38]
0000000140008383  mov        rcx, qword ptr [rax]
0000000140008386  mov        qword ptr [rip + 0x10f03], rcx
000000014000838d  jmp        0x1400082cc
0000000140008392  int3       
0000000140008393  int3       
0000000140008394  mov        qword ptr [rsp + 0x10], rbx
0000000140008399  mov        qword ptr [rsp + 0x18], rsi
000000014000839e  push       rdi
000000014000839f  sub        rsp, 0x20
00000001400083a3  mov        rsi, rdx
00000001400083a6  mov        rdi, rcx
00000001400083a9  mov        eax, dword ptr [rip + 0x114d1]
00000001400083af  test       dword ptr [rcx + 0x3a8], eax
00000001400083b5  je         0x1400083ca
00000001400083b7  cmp        qword ptr [rcx + 0x90], 0
00000001400083bf  je         0x1400083ca
00000001400083c1  mov        rbx, qword ptr [rcx + 0x88]
00000001400083c8  jmp        0x14000842e
00000001400083ca  mov        ecx, 5
00000001400083cf  call       0x1400089b8
00000001400083d4  nop        
00000001400083d5  mov        rbx, qword ptr [rdi + 0x88]
00000001400083dc  mov        qword ptr [rsp + 0x30], rbx
00000001400083e1  cmp        rbx, qword ptr [rsi]
00000001400083e4  je         0x140008424
00000001400083e6  test       rbx, rbx
00000001400083e9  je         0x14000840d
00000001400083eb  or         eax, 0xffffffff
00000001400083ee  lock xadd  dword ptr [rbx], eax
00000001400083f2  cmp        eax, 1
00000001400083f5  jne        0x14000840d
00000001400083f7  lea        rax, [rip + 0x10ea2]
00000001400083fe  mov        rcx, qword ptr [rsp + 0x30]
0000000140008403  cmp        rcx, rax
0000000140008406  je         0x14000840d
0000000140008408  call       0x140007770
000000014000840d  mov        rax, qword ptr [rsi]
0000000140008410  mov        qword ptr [rdi + 0x88], rax
0000000140008417  mov        qword ptr [rsp + 0x30], rax
000000014000841c  lock inc   dword ptr [rax]
000000014000841f  mov        rbx, qword ptr [rsp + 0x30]
0000000140008424  mov        ecx, 5
0000000140008429  call       0x140008a18
000000014000842e  test       rbx, rbx
0000000140008431  je         0x140008446
0000000140008433  mov        rax, rbx
0000000140008436  mov        rbx, qword ptr [rsp + 0x38]
000000014000843b  mov        rsi, qword ptr [rsp + 0x40]
0000000140008440  add        rsp, 0x20
0000000140008444  pop        rdi
0000000140008445  ret        
0000000140008446  call       0x1400069dc
000000014000844b  nop        
000000014000844c  int3       
000000014000844d  int3       
000000014000844e  int3       
000000014000844f  int3       
0000000140008450  sub        rsp, 0x28
0000000140008454  cmp        byte ptr [rip + 0x12171], 0
000000014000845b  jne        0x1400084a9
000000014000845d  lea        rcx, [rip + 0x1117c]
0000000140008464  mov        qword ptr [rip + 0x1214d], rcx
000000014000846b  lea        rax, [rip + 0x10e2e]
0000000140008472  lea        rcx, [rip + 0x11057]
0000000140008479  mov        qword ptr [rip + 0x12140], rax
0000000140008480  mov        qword ptr [rip + 0x12129], rcx
0000000140008487  call       0x140007334
000000014000848c  lea        r9, [rip + 0x1212d]
0000000140008493  mov        r8, rax
0000000140008496  mov        dl, 1
0000000140008498  mov        ecx, 0xfffffffd
000000014000849d  call       0x1400081d4
00000001400084a2  mov        byte ptr [rip + 0x12123], 1
00000001400084a9  mov        al, 1
00000001400084ab  add        rsp, 0x28
00000001400084af  ret        
00000001400084b0  sub        rsp, 0x28
00000001400084b4  call       0x140007260
00000001400084b9  mov        rcx, rax
00000001400084bc  lea        rdx, [rip + 0x120fd]
00000001400084c3  add        rsp, 0x28
00000001400084c7  jmp        0x140008394
00000001400084cc  mov        qword ptr [rsp + 0x18], rbx
00000001400084d1  push       rbp
00000001400084d2  push       rsi
00000001400084d3  push       rdi
00000001400084d4  push       r12
00000001400084d6  push       r13
00000001400084d8  push       r14
00000001400084da  push       r15
00000001400084dc  sub        rsp, 0x40
00000001400084e0  mov        rax, qword ptr [rip + 0x10be1]
00000001400084e7  xor        rax, rsp
00000001400084ea  mov        qword ptr [rsp + 0x38], rax
00000001400084ef  mov        rsi, rdx
00000001400084f2  call       0x140007ee0
00000001400084f7  xor        ebx, ebx
00000001400084f9  mov        edi, eax
00000001400084fb  test       eax, eax
00000001400084fd  je         0x140008756
0000000140008503  lea        r13, [rip + 0x111e6]
000000014000850a  mov        r14d, ebx
000000014000850d  mov        rax, r13
0000000140008510  lea        ebp, [rbx + 1]
0000000140008513  cmp        dword ptr [rax], edi
0000000140008515  je         0x140008669
000000014000851b  add        r14d, ebp
000000014000851e  add        rax, 0x30
0000000140008522  cmp        r14d, 5
0000000140008526  jb         0x140008513
0000000140008528  cmp        edi, 0xfde8
000000014000852e  je         0x140008661
0000000140008534  movzx      ecx, di
0000000140008537  call       qword ptr [rip + 0x5c93] ; KERNEL32.dll!IsValidCodePage
000000014000853d  test       eax, eax
000000014000853f  je         0x140008661
0000000140008545  mov        eax, 0xfde9
000000014000854a  cmp        edi, eax
000000014000854c  jne        0x14000857c
000000014000854e  mov        qword ptr [rsi + 4], rax
0000000140008552  mov        qword ptr [rsi + 0x220], rbx
0000000140008559  mov        dword ptr [rsi + 0x18], ebx
000000014000855c  mov        word ptr [rsi + 0x1c], bx
0000000140008560  lea        rdi, [rsi + 0xc]
0000000140008564  movzx      eax, bx
0000000140008567  mov        ecx, 6
000000014000856c  rep stosw  word ptr [rdi], ax
000000014000856f  mov        rcx, rsi
0000000140008572  call       0x140007ff0
0000000140008577  jmp        0x14000875e
000000014000857c  lea        rdx, [rsp + 0x20]
0000000140008581  mov        ecx, edi
0000000140008583  call       qword ptr [rip + 0x5c5f] ; KERNEL32.dll!GetCPInfo
0000000140008589  test       eax, eax
000000014000858b  je         0x140008655
0000000140008591  xor        edx, edx
0000000140008593  lea        rcx, [rsi + 0x18]
0000000140008597  mov        r8d, 0x101
000000014000859d  call       0x140004c70
00000001400085a2  cmp        dword ptr [rsp + 0x20], 2
00000001400085a7  mov        dword ptr [rsi + 4], edi
00000001400085aa  mov        qword ptr [rsi + 0x220], rbx
00000001400085b1  jne        0x14000864b
00000001400085b7  lea        rcx, [rsp + 0x26]
00000001400085bc  cmp        byte ptr [rsp + 0x26], bl
00000001400085c0  je         0x1400085ee
00000001400085c2  cmp        byte ptr [rcx + 1], bl
00000001400085c5  je         0x1400085ee
00000001400085c7  movzx      eax, byte ptr [rcx + 1]
00000001400085cb  movzx      edx, byte ptr [rcx]
00000001400085ce  cmp        edx, eax
00000001400085d0  ja         0x1400085e6
00000001400085d2  sub        eax, edx
00000001400085d4  lea        edi, [rdx + 1]
00000001400085d7  lea        edx, [rax + rbp]
00000001400085da  or         byte ptr [rdi + rsi + 0x18], 4
00000001400085df  add        edi, ebp
00000001400085e1  sub        rdx, rbp
00000001400085e4  jne        0x1400085da
00000001400085e6  add        rcx, 2
00000001400085ea  cmp        byte ptr [rcx], bl
00000001400085ec  jne        0x1400085c2
00000001400085ee  lea        rax, [rsi + 0x1a]
00000001400085f2  mov        ecx, 0xfe
00000001400085f7  or         byte ptr [rax], 8
00000001400085fa  add        rax, rbp
00000001400085fd  sub        rcx, rbp
0000000140008600  jne        0x1400085f7
0000000140008602  mov        ecx, dword ptr [rsi + 4]
0000000140008605  sub        ecx, 0x3a4
000000014000860b  je         0x14000863b
000000014000860d  sub        ecx, 4
0000000140008610  je         0x140008632
0000000140008612  sub        ecx, 0xd
0000000140008615  je         0x140008629
0000000140008617  cmp        ecx, ebp
0000000140008619  je         0x140008620
000000014000861b  mov        rax, rbx
000000014000861e  jmp        0x140008642
0000000140008620  mov        rax, qword ptr [rip + 0x8ef9]
0000000140008627  jmp        0x140008642
0000000140008629  mov        rax, qword ptr [rip + 0x8ee8]
0000000140008630  jmp        0x140008642
0000000140008632  mov        rax, qword ptr [rip + 0x8ed7]
0000000140008639  jmp        0x140008642
000000014000863b  mov        rax, qword ptr [rip + 0x8ec6]
0000000140008642  mov        qword ptr [rsi + 0x220], rax
0000000140008649  jmp        0x14000864d
000000014000864b  mov        ebp, ebx
000000014000864d  mov        dword ptr [rsi + 8], ebp
0000000140008650  jmp        0x140008560
0000000140008655  cmp        dword ptr [rip + 0x11f6d], ebx
000000014000865b  jne        0x140008756
0000000140008661  or         eax, 0xffffffff
0000000140008664  jmp        0x140008760
0000000140008669  xor        edx, edx
000000014000866b  lea        rcx, [rsi + 0x18]
000000014000866f  mov        r8d, 0x101
0000000140008675  call       0x140004c70
000000014000867a  mov        eax, r14d
000000014000867d  lea        r9, [r13 + 0x10]
0000000140008681  lea        r15, [rip + 0x11058]
0000000140008688  mov        r14d, 4
000000014000868e  lea        r11, [rax + rax*2]
0000000140008692  shl        r11, 4
0000000140008696  add        r9, r11
0000000140008699  mov        rdx, r9
000000014000869c  cmp        byte ptr [r9], bl
000000014000869f  je         0x1400086df
00000001400086a1  cmp        byte ptr [rdx + 1], bl
00000001400086a4  je         0x1400086df
00000001400086a6  movzx      r8d, byte ptr [rdx]
00000001400086aa  movzx      eax, byte ptr [rdx + 1]
00000001400086ae  cmp        r8d, eax
00000001400086b1  ja         0x1400086d7
00000001400086b3  lea        r10d, [r8 + 1]
00000001400086b7  cmp        r10d, 0x101
00000001400086be  jae        0x1400086d7
00000001400086c0  mov        al, byte ptr [r15]
00000001400086c3  add        r8d, ebp
00000001400086c6  or         byte ptr [r10 + rsi + 0x18], al
00000001400086cb  add        r10d, ebp
00000001400086ce  movzx      eax, byte ptr [rdx + 1]
00000001400086d2  cmp        r8d, eax
00000001400086d5  jbe        0x1400086b7
00000001400086d7  add        rdx, 2
00000001400086db  cmp        byte ptr [rdx], bl
00000001400086dd  jne        0x1400086a1
00000001400086df  add        r9, 8
00000001400086e3  add        r15, rbp
00000001400086e6  sub        r14, rbp
00000001400086e9  jne        0x140008699
00000001400086eb  mov        dword ptr [rsi + 4], edi
00000001400086ee  mov        dword ptr [rsi + 8], ebp
00000001400086f1  sub        edi, 0x3a4
00000001400086f7  je         0x140008722
00000001400086f9  sub        edi, 4
00000001400086fc  je         0x140008719
00000001400086fe  sub        edi, 0xd
0000000140008701  je         0x140008710
0000000140008703  cmp        edi, ebp
0000000140008705  jne        0x140008729
0000000140008707  mov        rbx, qword ptr [rip + 0x8e12]
000000014000870e  jmp        0x140008729
0000000140008710  mov        rbx, qword ptr [rip + 0x8e01]
0000000140008717  jmp        0x140008729
0000000140008719  mov        rbx, qword ptr [rip + 0x8df0]
0000000140008720  jmp        0x140008729
0000000140008722  mov        rbx, qword ptr [rip + 0x8ddf]
0000000140008729  sub        r11, rsi
000000014000872c  mov        qword ptr [rsi + 0x220], rbx
0000000140008733  lea        rdx, [rsi + 0xc]
0000000140008737  mov        ecx, 6
000000014000873c  lea        rdi, [r11 + r13]
0000000140008740  movzx      eax, word ptr [rdi + rdx - 8]
0000000140008745  mov        word ptr [rdx], ax
0000000140008748  lea        rdx, [rdx + 2]
000000014000874c  sub        rcx, rbp
000000014000874f  jne        0x140008740
0000000140008751  jmp        0x14000856f
0000000140008756  mov        rcx, rsi
0000000140008759  call       0x140007f60
000000014000875e  xor        eax, eax
0000000140008760  mov        rcx, qword ptr [rsp + 0x38]
0000000140008765  xor        rcx, rsp
0000000140008768  call       0x1400037e0
000000014000876d  mov        rbx, qword ptr [rsp + 0x90]
0000000140008775  add        rsp, 0x40
0000000140008779  pop        r15
000000014000877b  pop        r14
000000014000877d  pop        r13
000000014000877f  pop        r12
0000000140008781  pop        rdi
0000000140008782  pop        rsi
0000000140008783  pop        rbp
0000000140008784  ret        
0000000140008785  int3       
0000000140008786  int3       
0000000140008787  int3       
0000000140008788  int3       
0000000140008789  int3       
000000014000878a  int3       
000000014000878b  int3       
000000014000878c  int3       
000000014000878d  int3       
000000014000878e  int3       
000000014000878f  int3       
0000000140008790  sub        rsp, 0x28
0000000140008794  call       qword ptr [rip + 0x5a56] ; KERNEL32.dll!GetCommandLineA
000000014000879a  mov        qword ptr [rip + 0x11e4f], rax
00000001400087a1  call       qword ptr [rip + 0x5a51] ; KERNEL32.dll!GetCommandLineW
00000001400087a7  mov        qword ptr [rip + 0x11e4a], rax
00000001400087ae  mov        al, 1
00000001400087b0  add        rsp, 0x28
00000001400087b4  ret        
00000001400087b5  int3       
00000001400087b6  int3       
00000001400087b7  int3       
00000001400087b8  cmp        ecx, 0xc435
00000001400087be  ja         0x1400087e0
00000001400087c0  lea        eax, [rcx - 0xc42c]
00000001400087c6  cmp        eax, 9
00000001400087c9  ja         0x1400087d7
00000001400087cb  mov        r10d, 0x2a7
00000001400087d1  bt         r10d, eax
00000001400087d5  jb         0x1400087dc
00000001400087d7  cmp        ecx, 0x2a
00000001400087da  jne        0x14000880b
00000001400087dc  xor        edx, edx
00000001400087de  jmp        0x14000880b
00000001400087e0  cmp        ecx, 0xd698
00000001400087e6  je         0x140008808
00000001400087e8  cmp        ecx, 0xdea9
00000001400087ee  jbe        0x14000880b
00000001400087f0  cmp        ecx, 0xdeb3
00000001400087f6  jbe        0x1400087dc
00000001400087f8  cmp        ecx, 0xfde8
00000001400087fe  je         0x1400087dc
0000000140008800  cmp        ecx, 0xfde9
0000000140008806  jne        0x14000880b
0000000140008808  and        edx, 8
000000014000880b  jmp        qword ptr [rip + 0x59ee] ; KERNEL32.dll!MultiByteToWideChar
0000000140008812  int3       
0000000140008813  int3       
0000000140008814  mov        qword ptr [rsp + 8], rbx
0000000140008819  push       rdi
000000014000881a  lea        eax, [rcx - 0xfde8]
0000000140008820  mov        r11d, r9d
0000000140008823  cmp        eax, 1
0000000140008826  mov        rbx, r8
0000000140008829  setbe      r10b
000000014000882d  xor        edi, edi
000000014000882f  cmp        ecx, 0xc435
0000000140008835  ja         0x140008853
0000000140008837  lea        eax, [rcx - 0xc42c]
000000014000883d  cmp        eax, 9
0000000140008840  ja         0x14000884e
0000000140008842  mov        r8d, 0x2a7
0000000140008848  bt         r8d, eax
000000014000884c  jb         0x140008881
000000014000884e  cmp        ecx, 0x2a
0000000140008851  jmp        0x140008879
0000000140008853  cmp        ecx, 0xd698
0000000140008859  je         0x140008881
000000014000885b  cmp        ecx, 0xdea9
0000000140008861  jbe        0x14000887b
0000000140008863  cmp        ecx, 0xdeb3
0000000140008869  jbe        0x140008881
000000014000886b  cmp        ecx, 0xfde8
0000000140008871  je         0x140008881
0000000140008873  cmp        ecx, 0xfde9
0000000140008879  je         0x140008881
000000014000887b  btr        edx, 7
000000014000887f  jmp        0x140008883
0000000140008881  mov        edx, edi
0000000140008883  mov        rax, qword ptr [rsp + 0x48]
0000000140008888  test       r10b, r10b
000000014000888b  mov        r9, qword ptr [rsp + 0x40]
0000000140008890  mov        r8, rax
0000000140008893  cmovne     r8, rdi
0000000140008897  cmovne     r9, rdi
000000014000889b  je         0x1400088a4
000000014000889d  test       rax, rax
00000001400088a0  je         0x1400088a4
00000001400088a2  mov        dword ptr [rax], edi
00000001400088a4  mov        qword ptr [rsp + 0x48], r8
00000001400088a9  mov        r8, rbx
00000001400088ac  mov        qword ptr [rsp + 0x40], r9
00000001400088b1  mov        r9d, r11d
00000001400088b4  mov        rbx, qword ptr [rsp + 0x10]
00000001400088b9  pop        rdi
00000001400088ba  jmp        qword ptr [rip + 0x57f7] ; KERNEL32.dll!WideCharToMultiByte
00000001400088c1  int3       
00000001400088c2  int3       
00000001400088c3  int3       
00000001400088c4  mov        qword ptr [rsp + 8], rbx
00000001400088c9  mov        qword ptr [rsp + 0x10], rbp
00000001400088ce  mov        qword ptr [rsp + 0x18], rsi
00000001400088d3  push       rdi
00000001400088d4  sub        rsp, 0x20
00000001400088d8  call       qword ptr [rip + 0x592a] ; KERNEL32.dll!GetEnvironmentStringsW
00000001400088de  xor        esi, esi
00000001400088e0  mov        rbx, rax
00000001400088e3  test       rax, rax
00000001400088e6  je         0x14000894b
00000001400088e8  mov        rbp, rax
00000001400088eb  cmp        word ptr [rax], si
00000001400088ee  je         0x14000890d
00000001400088f0  or         rax, 0xffffffffffffffff
00000001400088f4  inc        rax
00000001400088f7  cmp        word ptr [rbp + rax*2], si
00000001400088fc  jne        0x1400088f4
00000001400088fe  lea        rbp, [rbp + rax*2]
0000000140008903  add        rbp, 2
0000000140008907  cmp        word ptr [rbp], si
000000014000890b  jne        0x1400088f0
000000014000890d  sub        rbp, rbx
0000000140008910  add        rbp, 2
0000000140008914  sar        rbp, 1
0000000140008917  add        rbp, rbp
000000014000891a  mov        rcx, rbp
000000014000891d  call       0x140009318
0000000140008922  mov        rdi, rax
0000000140008925  test       rax, rax
0000000140008928  je         0x14000893b
000000014000892a  mov        r8, rbp
000000014000892d  mov        rdx, rbx
0000000140008930  mov        rcx, rax
0000000140008933  call       0x1400042d0
0000000140008938  mov        rsi, rdi
000000014000893b  xor        ecx, ecx
000000014000893d  call       0x140007770
0000000140008942  mov        rcx, rbx
0000000140008945  call       qword ptr [rip + 0x58c5] ; KERNEL32.dll!FreeEnvironmentStringsW
000000014000894b  mov        rbx, qword ptr [rsp + 0x30]
0000000140008950  mov        rax, rsi
0000000140008953  mov        rsi, qword ptr [rsp + 0x40]
0000000140008958  mov        rbp, qword ptr [rsp + 0x38]
000000014000895d  add        rsp, 0x20
0000000140008961  pop        rdi
0000000140008962  ret        
0000000140008963  int3       
0000000140008964  int3       
0000000140008965  int3       
0000000140008966  int3       
0000000140008967  int3       
0000000140008968  int3       
0000000140008969  int3       
000000014000896a  int3       
000000014000896b  int3       
000000014000896c  int3       
000000014000896d  int3       
000000014000896e  int3       
000000014000896f  int3       
0000000140008970  push       rbx
0000000140008972  sub        rsp, 0x20
0000000140008976  xor        ebx, ebx
0000000140008978  lea        rdx, [rip + 0x11c81]
000000014000897f  xor        r8d, r8d
0000000140008982  lea        rcx, [rbx + rbx*4]
0000000140008986  lea        rcx, [rdx + rcx*8]
000000014000898a  mov        edx, 0xfa0
000000014000898f  call       0x140009e74
0000000140008994  test       eax, eax
0000000140008996  je         0x1400089a9
0000000140008998  inc        dword ptr [rip + 0x11e92]
000000014000899e  inc        ebx
00000001400089a0  cmp        ebx, 0xe
00000001400089a3  jb         0x140008978
00000001400089a5  mov        al, 1
00000001400089a7  jmp        0x1400089b2
00000001400089a9  xor        ecx, ecx
00000001400089ab  call       0x1400089e0
00000001400089b0  xor        al, al
00000001400089b2  add        rsp, 0x20
00000001400089b6  pop        rbx
00000001400089b7  ret        
00000001400089b8  movsxd     rax, ecx
00000001400089bb  lea        rcx, [rax + rax*4]
00000001400089bf  lea        rax, [rip + 0x11c3a]
00000001400089c6  lea        rcx, [rax + rcx*8]
00000001400089ca  jmp        qword ptr [rip + 0x578f] ; KERNEL32.dll!EnterCriticalSection
00000001400089d1  int3       
00000001400089d2  int3       
00000001400089d3  int3       
00000001400089d4  int3       
00000001400089d5  int3       
00000001400089d6  int3       
00000001400089d7  int3       
00000001400089d8  int3       
00000001400089d9  int3       
00000001400089da  int3       
00000001400089db  int3       
00000001400089dc  int3       
00000001400089dd  int3       
00000001400089de  int3       
00000001400089df  int3       
00000001400089e0  push       rbx
00000001400089e2  sub        rsp, 0x20
00000001400089e6  mov        ebx, dword ptr [rip + 0x11e44]
00000001400089ec  jmp        0x140008a0b
00000001400089ee  lea        rax, [rip + 0x11c0b]
00000001400089f5  dec        ebx
00000001400089f7  lea        rcx, [rbx + rbx*4]
00000001400089fb  lea        rcx, [rax + rcx*8]
00000001400089ff  call       qword ptr [rip + 0x576b] ; KERNEL32.dll!DeleteCriticalSection
0000000140008a05  dec        dword ptr [rip + 0x11e25]
0000000140008a0b  test       ebx, ebx
0000000140008a0d  jne        0x1400089ee
0000000140008a0f  mov        al, 1
0000000140008a11  add        rsp, 0x20
0000000140008a15  pop        rbx
0000000140008a16  ret        
0000000140008a17  int3       
0000000140008a18  movsxd     rax, ecx
0000000140008a1b  lea        rcx, [rax + rax*4]
0000000140008a1f  lea        rax, [rip + 0x11bda]
0000000140008a26  lea        rcx, [rax + rcx*8]
0000000140008a2a  jmp        qword ptr [rip + 0x5737] ; KERNEL32.dll!LeaveCriticalSection
0000000140008a31  int3       
0000000140008a32  int3       
0000000140008a33  int3       
0000000140008a34  push       rbx
0000000140008a36  sub        rsp, 0x20
0000000140008a3a  xor        ebx, ebx
0000000140008a3c  mov        dword ptr [rsp + 0x30], ebx
0000000140008a40  mov        rax, qword ptr gs:[0x60]
0000000140008a49  mov        rcx, qword ptr [rax + 0x20]
0000000140008a4d  cmp        dword ptr [rcx + 8], ebx
0000000140008a50  jl         0x140008a63
0000000140008a52  lea        rcx, [rsp + 0x30]
0000000140008a57  call       0x140009cf8
0000000140008a5c  cmp        dword ptr [rsp + 0x30], 1
0000000140008a61  je         0x140008a68
0000000140008a63  mov        ebx, 1
0000000140008a68  mov        eax, ebx
0000000140008a6a  add        rsp, 0x20
0000000140008a6e  pop        rbx
0000000140008a6f  ret        
0000000140008a70  mov        qword ptr [rsp + 8], rbx
0000000140008a75  mov        qword ptr [rsp + 0x10], rbp
0000000140008a7a  mov        qword ptr [rsp + 0x18], rsi
0000000140008a7f  push       rdi
0000000140008a80  sub        rsp, 0x20
0000000140008a84  mov        edx, 0x48
0000000140008a89  lea        ecx, [rdx - 8]
0000000140008a8c  call       0x1400076f8
0000000140008a91  xor        esi, esi
0000000140008a93  mov        rbx, rax
0000000140008a96  test       rax, rax
0000000140008a99  je         0x140008af6
0000000140008a9b  lea        rbp, [rax + 0x1200]
0000000140008aa2  cmp        rax, rbp
0000000140008aa5  je         0x140008af3
0000000140008aa7  lea        rdi, [rax + 0x30]
0000000140008aab  lea        rcx, [rdi - 0x30]
0000000140008aaf  xor        r8d, r8d
0000000140008ab2  mov        edx, 0xfa0
0000000140008ab7  call       0x140009e74
0000000140008abc  or         qword ptr [rdi - 8], 0xffffffffffffffff
0000000140008ac1  lea        rcx, [rdi + 0xe]
0000000140008ac5  and        byte ptr [rdi + 0xd], 0xf8
0000000140008ac9  mov        eax, esi
0000000140008acb  mov        qword ptr [rdi], rsi
0000000140008ace  mov        dword ptr [rdi + 8], 0xa0a0000
0000000140008ad5  mov        byte ptr [rdi + 0xc], 0xa
0000000140008ad9  mov        byte ptr [rcx], sil
0000000140008adc  inc        eax
0000000140008ade  inc        rcx
0000000140008ae1  cmp        eax, 5
0000000140008ae4  jb         0x140008ad9
0000000140008ae6  add        rdi, 0x48
0000000140008aea  lea        rax, [rdi - 0x30]
0000000140008aee  cmp        rax, rbp
0000000140008af1  jne        0x140008aab
0000000140008af3  mov        rsi, rbx
0000000140008af6  xor        ecx, ecx
0000000140008af8  call       0x140007770
0000000140008afd  mov        rbx, qword ptr [rsp + 0x30]
0000000140008b02  mov        rax, rsi
0000000140008b05  mov        rsi, qword ptr [rsp + 0x40]
0000000140008b0a  mov        rbp, qword ptr [rsp + 0x38]
0000000140008b0f  add        rsp, 0x20
0000000140008b13  pop        rdi
0000000140008b14  ret        
0000000140008b15  int3       
0000000140008b16  int3       
0000000140008b17  int3       
0000000140008b18  test       rcx, rcx
0000000140008b1b  je         0x140008b67
0000000140008b1d  mov        qword ptr [rsp + 8], rbx
0000000140008b22  mov        qword ptr [rsp + 0x10], rsi
0000000140008b27  push       rdi
0000000140008b28  sub        rsp, 0x20
0000000140008b2c  lea        rsi, [rcx + 0x1200]
0000000140008b33  mov        rbx, rcx
0000000140008b36  mov        rdi, rcx
0000000140008b39  cmp        rcx, rsi
0000000140008b3c  je         0x140008b50
0000000140008b3e  mov        rcx, rdi
0000000140008b41  call       qword ptr [rip + 0x5629] ; KERNEL32.dll!DeleteCriticalSection
0000000140008b47  add        rdi, 0x48
0000000140008b4b  cmp        rdi, rsi
0000000140008b4e  jne        0x140008b3e
0000000140008b50  mov        rcx, rbx
0000000140008b53  call       0x140007770
0000000140008b58  mov        rbx, qword ptr [rsp + 0x30]
0000000140008b5d  mov        rsi, qword ptr [rsp + 0x38]
0000000140008b62  add        rsp, 0x20
0000000140008b66  pop        rdi
0000000140008b67  ret        
0000000140008b68  mov        qword ptr [rsp + 8], rbx
0000000140008b6d  mov        qword ptr [rsp + 0x10], rsi
0000000140008b72  mov        qword ptr [rsp + 0x18], rdi
0000000140008b77  push       r15
0000000140008b79  sub        rsp, 0x30
0000000140008b7d  mov        esi, ecx
0000000140008b7f  cmp        ecx, 0x2000
0000000140008b85  jb         0x140008bb0
0000000140008b87  call       0x140006ec0
0000000140008b8c  mov        ebx, 9
0000000140008b91  mov        dword ptr [rax], ebx
0000000140008b93  call       0x140006ce4
0000000140008b98  mov        eax, ebx
0000000140008b9a  mov        rbx, qword ptr [rsp + 0x40]
0000000140008b9f  mov        rsi, qword ptr [rsp + 0x48]
0000000140008ba4  mov        rdi, qword ptr [rsp + 0x50]
0000000140008ba9  add        rsp, 0x30
0000000140008bad  pop        r15
0000000140008baf  ret        
0000000140008bb0  xor        edi, edi
0000000140008bb2  lea        ecx, [rdi + 7]
0000000140008bb5  call       0x1400089b8
0000000140008bba  nop        
0000000140008bbb  mov        ebx, edi
0000000140008bbd  mov        eax, dword ptr [rip + 0x1207d]
0000000140008bc3  mov        qword ptr [rsp + 0x20], rbx
0000000140008bc8  cmp        esi, eax
0000000140008bca  jl         0x140008c02
0000000140008bcc  lea        r15, [rip + 0x11c6d]
0000000140008bd3  cmp        qword ptr [r15 + rbx*8], rdi
0000000140008bd7  je         0x140008bdb
0000000140008bd9  jmp        0x140008bfd
0000000140008bdb  call       0x140008a70
0000000140008be0  mov        qword ptr [r15 + rbx*8], rax
0000000140008be4  test       rax, rax
0000000140008be7  jne        0x140008bee
0000000140008be9  lea        edi, [rax + 0xc]
0000000140008bec  jmp        0x140008c02
0000000140008bee  mov        eax, dword ptr [rip + 0x1204c]
0000000140008bf4  add        eax, 0x40
0000000140008bf7  mov        dword ptr [rip + 0x12043], eax
0000000140008bfd  inc        rbx
0000000140008c00  jmp        0x140008bc3
0000000140008c02  mov        ecx, 7
0000000140008c07  call       0x140008a18
0000000140008c0c  mov        eax, edi
0000000140008c0e  jmp        0x140008b9a
0000000140008c10  movsxd     rdx, ecx
0000000140008c13  lea        r8, [rip + 0x11c26]
0000000140008c1a  mov        rax, rdx
0000000140008c1d  and        edx, 0x3f
0000000140008c20  sar        rax, 6
0000000140008c24  lea        rcx, [rdx + rdx*8]
0000000140008c28  mov        rax, qword ptr [r8 + rax*8]
0000000140008c2c  lea        rcx, [rax + rcx*8]
0000000140008c30  jmp        qword ptr [rip + 0x5529] ; KERNEL32.dll!EnterCriticalSection
0000000140008c37  int3       
0000000140008c38  movsxd     rdx, ecx
0000000140008c3b  lea        r8, [rip + 0x11bfe]
0000000140008c42  mov        rax, rdx
0000000140008c45  and        edx, 0x3f
0000000140008c48  sar        rax, 6
0000000140008c4c  lea        rcx, [rdx + rdx*8]
0000000140008c50  mov        rax, qword ptr [r8 + rax*8]
0000000140008c54  lea        rcx, [rax + rcx*8]
0000000140008c58  jmp        qword ptr [rip + 0x5509] ; KERNEL32.dll!LeaveCriticalSection
0000000140008c5f  int3       
0000000140008c60  mov        qword ptr [rsp + 8], rbx
0000000140008c65  mov        qword ptr [rsp + 0x10], rsi
0000000140008c6a  mov        qword ptr [rsp + 0x18], rdi
0000000140008c6f  push       r14
0000000140008c71  sub        rsp, 0x20
0000000140008c75  movsxd     rbx, ecx
0000000140008c78  test       ecx, ecx
0000000140008c7a  js         0x140008cee
0000000140008c7c  cmp        ebx, dword ptr [rip + 0x11fbe]
0000000140008c82  jae        0x140008cee
0000000140008c84  mov        rax, rbx
0000000140008c87  lea        r14, [rip + 0x11bb2]
0000000140008c8e  and        eax, 0x3f
0000000140008c91  mov        rsi, rbx
0000000140008c94  sar        rsi, 6
0000000140008c98  lea        rdi, [rax + rax*8]
0000000140008c9c  mov        rax, qword ptr [r14 + rsi*8]
0000000140008ca0  test       byte ptr [rax + rdi*8 + 0x38], 1
0000000140008ca5  je         0x140008cee
0000000140008ca7  cmp        qword ptr [rax + rdi*8 + 0x28], -1
0000000140008cad  je         0x140008cee
0000000140008caf  call       0x140005844
0000000140008cb4  cmp        eax, 1
0000000140008cb7  jne        0x140008ce0
0000000140008cb9  test       ebx, ebx
0000000140008cbb  je         0x140008cd3
0000000140008cbd  sub        ebx, eax
0000000140008cbf  je         0x140008ccc
0000000140008cc1  cmp        ebx, eax
0000000140008cc3  jne        0x140008ce0
0000000140008cc5  mov        ecx, 0xfffffff4
0000000140008cca  jmp        0x140008cd8
0000000140008ccc  mov        ecx, 0xfffffff5
0000000140008cd1  jmp        0x140008cd8
0000000140008cd3  mov        ecx, 0xfffffff6
0000000140008cd8  xor        edx, edx
0000000140008cda  call       qword ptr [rip + 0x5538] ; KERNEL32.dll!SetStdHandle
0000000140008ce0  mov        rax, qword ptr [r14 + rsi*8]
0000000140008ce4  or         qword ptr [rax + rdi*8 + 0x28], 0xffffffffffffffff
0000000140008cea  xor        eax, eax
0000000140008cec  jmp        0x140008d04
0000000140008cee  call       0x140006ec0
0000000140008cf3  mov        dword ptr [rax], 9
0000000140008cf9  call       0x140006ea0
0000000140008cfe  and        dword ptr [rax], 0
0000000140008d01  or         eax, 0xffffffff
0000000140008d04  mov        rbx, qword ptr [rsp + 0x30]
0000000140008d09  mov        rsi, qword ptr [rsp + 0x38]
0000000140008d0e  mov        rdi, qword ptr [rsp + 0x40]
0000000140008d13  add        rsp, 0x20
0000000140008d17  pop        r14
0000000140008d19  ret        
0000000140008d1a  int3       
0000000140008d1b  int3       
0000000140008d1c  sub        rsp, 0x28
0000000140008d20  cmp        ecx, -2
0000000140008d23  jne        0x140008d3a
0000000140008d25  call       0x140006ea0
0000000140008d2a  and        dword ptr [rax], 0
0000000140008d2d  call       0x140006ec0
0000000140008d32  mov        dword ptr [rax], 9
0000000140008d38  jmp        0x140008d88
0000000140008d3a  test       ecx, ecx
0000000140008d3c  js         0x140008d70
0000000140008d3e  cmp        ecx, dword ptr [rip + 0x11efc]
0000000140008d44  jae        0x140008d70
0000000140008d46  movsxd     rcx, ecx
0000000140008d49  lea        r8, [rip + 0x11af0]
0000000140008d50  mov        rax, rcx
0000000140008d53  and        ecx, 0x3f
0000000140008d56  sar        rax, 6
0000000140008d5a  lea        rdx, [rcx + rcx*8]
0000000140008d5e  mov        rax, qword ptr [r8 + rax*8]
0000000140008d62  test       byte ptr [rax + rdx*8 + 0x38], 1
0000000140008d67  je         0x140008d70
0000000140008d69  mov        rax, qword ptr [rax + rdx*8 + 0x28]
0000000140008d6e  jmp        0x140008d8c
0000000140008d70  call       0x140006ea0
0000000140008d75  and        dword ptr [rax], 0
0000000140008d78  call       0x140006ec0
0000000140008d7d  mov        dword ptr [rax], 9
0000000140008d83  call       0x140006ce4
0000000140008d88  or         rax, 0xffffffffffffffff
0000000140008d8c  add        rsp, 0x28
0000000140008d90  ret        
0000000140008d91  int3       
0000000140008d92  int3       
0000000140008d93  int3       
0000000140008d94  int3       
0000000140008d95  int3       
0000000140008d96  int3       
0000000140008d97  int3       
0000000140008d98  int3       
0000000140008d99  int3       
0000000140008d9a  int3       
0000000140008d9b  int3       
0000000140008d9c  int3       
0000000140008d9d  int3       
0000000140008d9e  int3       
0000000140008d9f  int3       
0000000140008da0  mov        eax, dword ptr [rip + 0x11a8e]
0000000140008da6  mov        ecx, 0x4000
0000000140008dab  test       eax, eax
0000000140008dad  cmove      eax, ecx
0000000140008db0  mov        dword ptr [rip + 0x11a7e], eax
0000000140008db6  xor        eax, eax
0000000140008db8  ret        
0000000140008db9  int3       
0000000140008dba  int3       
0000000140008dbb  int3       
0000000140008dbc  mov        rax, rsp
0000000140008dbf  mov        qword ptr [rax + 8], rbx
0000000140008dc3  mov        qword ptr [rax + 0x10], rbp
0000000140008dc7  mov        qword ptr [rax + 0x18], rsi
0000000140008dcb  mov        qword ptr [rax + 0x20], rdi
0000000140008dcf  push       r14
0000000140008dd1  sub        rsp, 0x90
0000000140008dd8  lea        rcx, [rax - 0x78]
0000000140008ddc  call       qword ptr [rip + 0x5356] ; KERNEL32.dll!GetStartupInfoW
0000000140008de2  xor        r14d, r14d
0000000140008de5  cmp        word ptr [rsp + 0x62], r14w
0000000140008deb  je         0x140008e8b
0000000140008df1  mov        rax, qword ptr [rsp + 0x68]
0000000140008df6  test       rax, rax
0000000140008df9  je         0x140008e8b
0000000140008dff  movsxd     rbx, dword ptr [rax]
0000000140008e02  lea        rsi, [rax + 4]
0000000140008e06  mov        edi, 0x2000
0000000140008e0b  add        rbx, rsi
0000000140008e0e  cmp        dword ptr [rax], edi
0000000140008e10  cmovl      edi, dword ptr [rax]
0000000140008e13  mov        ecx, edi
0000000140008e15  call       0x140008b68
0000000140008e1a  cmp        edi, dword ptr [rip + 0x11e20]
0000000140008e20  cmovg      edi, dword ptr [rip + 0x11e19]
0000000140008e27  test       edi, edi
0000000140008e29  je         0x140008e8b
0000000140008e2b  mov        ebp, r14d
0000000140008e2e  cmp        qword ptr [rbx], -1
0000000140008e32  je         0x140008e7b
0000000140008e34  cmp        qword ptr [rbx], -2
0000000140008e38  je         0x140008e7b
0000000140008e3a  test       byte ptr [rsi], 1
0000000140008e3d  je         0x140008e7b
0000000140008e3f  test       byte ptr [rsi], 8
0000000140008e42  jne        0x140008e51
0000000140008e44  mov        rcx, qword ptr [rbx]
0000000140008e47  call       qword ptr [rip + 0x53d3] ; KERNEL32.dll!GetFileType
0000000140008e4d  test       eax, eax
0000000140008e4f  je         0x140008e7b
0000000140008e51  mov        rax, rbp
0000000140008e54  lea        r8, [rip + 0x119e5]
0000000140008e5b  mov        rcx, rbp
0000000140008e5e  sar        rcx, 6
0000000140008e62  and        eax, 0x3f
0000000140008e65  mov        rcx, qword ptr [r8 + rcx*8]
0000000140008e69  lea        rdx, [rax + rax*8]
0000000140008e6d  mov        rax, qword ptr [rbx]
0000000140008e70  mov        qword ptr [rcx + rdx*8 + 0x28], rax
0000000140008e75  mov        al, byte ptr [rsi]
0000000140008e77  mov        byte ptr [rcx + rdx*8 + 0x38], al
0000000140008e7b  inc        rbp
0000000140008e7e  inc        rsi
0000000140008e81  add        rbx, 8
0000000140008e85  sub        rdi, 1
0000000140008e89  jne        0x140008e2e
0000000140008e8b  lea        r11, [rsp + 0x90]
0000000140008e93  mov        rbx, qword ptr [r11 + 0x10]
0000000140008e97  mov        rbp, qword ptr [r11 + 0x18]
0000000140008e9b  mov        rsi, qword ptr [r11 + 0x20]
0000000140008e9f  mov        rdi, qword ptr [r11 + 0x28]
0000000140008ea3  mov        rsp, r11
0000000140008ea6  pop        r14
0000000140008ea8  ret        
0000000140008ea9  int3       
0000000140008eaa  int3       
0000000140008eab  int3       
0000000140008eac  mov        rax, rsp
0000000140008eaf  mov        qword ptr [rax + 8], rbx
0000000140008eb3  mov        qword ptr [rax + 0x10], rbp
0000000140008eb7  mov        qword ptr [rax + 0x18], rsi
0000000140008ebb  mov        qword ptr [rax + 0x20], rdi
0000000140008ebf  push       r14
0000000140008ec1  sub        rsp, 0x20
0000000140008ec5  xor        esi, esi
0000000140008ec7  xor        r14d, r14d
0000000140008eca  movsxd     rcx, esi
0000000140008ecd  lea        rdi, [rip + 0x1196c]
0000000140008ed4  mov        rax, rcx
0000000140008ed7  and        ecx, 0x3f
0000000140008eda  sar        rax, 6
0000000140008ede  lea        rbx, [rcx + rcx*8]
0000000140008ee2  mov        rdi, qword ptr [rdi + rax*8]
0000000140008ee6  mov        rax, qword ptr [rdi + rbx*8 + 0x28]
0000000140008eeb  add        rax, 2
0000000140008eef  cmp        rax, 1
0000000140008ef3  jbe        0x140008eff
0000000140008ef5  or         byte ptr [rdi + rbx*8 + 0x38], 0x80
0000000140008efa  jmp        0x140008f8e
0000000140008eff  mov        byte ptr [rdi + rbx*8 + 0x38], 0x81
0000000140008f04  mov        ecx, esi
0000000140008f06  test       esi, esi
0000000140008f08  je         0x140008f20
0000000140008f0a  sub        ecx, 1
0000000140008f0d  je         0x140008f19
0000000140008f0f  cmp        ecx, 1
0000000140008f12  mov        ecx, 0xfffffff4
0000000140008f17  jmp        0x140008f25
0000000140008f19  mov        ecx, 0xfffffff5
0000000140008f1e  jmp        0x140008f25
0000000140008f20  mov        ecx, 0xfffffff6
0000000140008f25  call       qword ptr [rip + 0x50d5] ; KERNEL32.dll!GetStdHandle
0000000140008f2b  mov        rbp, rax
0000000140008f2e  lea        rcx, [rax + 1]
0000000140008f32  cmp        rcx, 1
0000000140008f36  jbe        0x140008f43
0000000140008f38  mov        rcx, rax
0000000140008f3b  call       qword ptr [rip + 0x52df] ; KERNEL32.dll!GetFileType
0000000140008f41  jmp        0x140008f45
0000000140008f43  xor        eax, eax
0000000140008f45  test       eax, eax
0000000140008f47  je         0x140008f69
0000000140008f49  movzx      ecx, al
0000000140008f4c  mov        qword ptr [rdi + rbx*8 + 0x28], rbp
0000000140008f51  cmp        ecx, 2
0000000140008f54  jne        0x140008f5d
0000000140008f56  or         byte ptr [rdi + rbx*8 + 0x38], 0x40
0000000140008f5b  jmp        0x140008f8e
0000000140008f5d  cmp        ecx, 3
0000000140008f60  jne        0x140008f8e
0000000140008f62  or         byte ptr [rdi + rbx*8 + 0x38], 8
0000000140008f67  jmp        0x140008f8e
0000000140008f69  or         byte ptr [rdi + rbx*8 + 0x38], 0x40
0000000140008f6e  mov        qword ptr [rdi + rbx*8 + 0x28], 0xfffffffffffffffe
0000000140008f77  mov        rax, qword ptr [rip + 0x11ec2]
0000000140008f7e  test       rax, rax
0000000140008f81  je         0x140008f8e
0000000140008f83  mov        rax, qword ptr [r14 + rax]
0000000140008f87  mov        dword ptr [rax + 0x18], 0xfffffffe
0000000140008f8e  inc        esi
0000000140008f90  add        r14, 8
0000000140008f94  cmp        esi, 3
0000000140008f97  jne        0x140008eca
0000000140008f9d  mov        rbx, qword ptr [rsp + 0x30]
0000000140008fa2  mov        rbp, qword ptr [rsp + 0x38]
0000000140008fa7  mov        rsi, qword ptr [rsp + 0x40]
0000000140008fac  mov        rdi, qword ptr [rsp + 0x48]
0000000140008fb1  add        rsp, 0x20
0000000140008fb5  pop        r14
0000000140008fb7  ret        
0000000140008fb8  int3       
0000000140008fb9  int3       
0000000140008fba  int3       
0000000140008fbb  int3       
0000000140008fbc  int3       
0000000140008fbd  int3       
0000000140008fbe  int3       
0000000140008fbf  int3       
0000000140008fc0  push       rbx
0000000140008fc2  sub        rsp, 0x20
0000000140008fc6  mov        ecx, 7
0000000140008fcb  call       0x1400089b8
0000000140008fd0  xor        ebx, ebx
0000000140008fd2  xor        ecx, ecx
0000000140008fd4  call       0x140008b68
0000000140008fd9  test       eax, eax
0000000140008fdb  jne        0x140008fe9
0000000140008fdd  call       0x140008dbc
0000000140008fe2  call       0x140008eac
0000000140008fe7  mov        bl, 1
0000000140008fe9  mov        ecx, 7
0000000140008fee  call       0x140008a18
0000000140008ff3  mov        al, bl
0000000140008ff5  add        rsp, 0x20
0000000140008ff9  pop        rbx
0000000140008ffa  ret        
0000000140008ffb  int3       
0000000140008ffc  int3       
0000000140008ffd  int3       
0000000140008ffe  int3       
0000000140008fff  int3       
0000000140009000  mov        qword ptr [rsp + 8], rbx
0000000140009005  push       rdi
0000000140009006  sub        rsp, 0x20
000000014000900a  xor        ebx, ebx
000000014000900c  lea        rdi, [rip + 0x1182d]
0000000140009013  mov        rcx, qword ptr [rbx + rdi]
0000000140009017  test       rcx, rcx
000000014000901a  je         0x140009026
000000014000901c  call       0x140008b18
0000000140009021  and        qword ptr [rbx + rdi], 0
0000000140009026  add        rbx, 8
000000014000902a  cmp        rbx, 0x400
0000000140009031  jb         0x14000900c
0000000140009033  mov        rbx, qword ptr [rsp + 0x30]
0000000140009038  mov        al, 1
000000014000903a  add        rsp, 0x20
000000014000903e  pop        rdi
000000014000903f  ret        
0000000140009040  test       rcx, rcx
0000000140009043  je         0x140009149
0000000140009049  push       rbx
000000014000904a  sub        rsp, 0x20
000000014000904e  mov        rbx, rcx
0000000140009051  mov        rcx, qword ptr [rcx + 0x18]
0000000140009055  cmp        rcx, qword ptr [rip + 0x1079c]
000000014000905c  je         0x140009063
000000014000905e  call       0x140007770
0000000140009063  mov        rcx, qword ptr [rbx + 0x20]
0000000140009067  cmp        rcx, qword ptr [rip + 0x10792]
000000014000906e  je         0x140009075
0000000140009070  call       0x140007770
0000000140009075  mov        rcx, qword ptr [rbx + 0x28]
0000000140009079  cmp        rcx, qword ptr [rip + 0x10788]
0000000140009080  je         0x140009087
0000000140009082  call       0x140007770
0000000140009087  mov        rcx, qword ptr [rbx + 0x30]
000000014000908b  cmp        rcx, qword ptr [rip + 0x1077e]
0000000140009092  je         0x140009099
0000000140009094  call       0x140007770
0000000140009099  mov        rcx, qword ptr [rbx + 0x38]
000000014000909d  cmp        rcx, qword ptr [rip + 0x10774]
00000001400090a4  je         0x1400090ab
00000001400090a6  call       0x140007770
00000001400090ab  mov        rcx, qword ptr [rbx + 0x40]
00000001400090af  cmp        rcx, qword ptr [rip + 0x1076a]
00000001400090b6  je         0x1400090bd
00000001400090b8  call       0x140007770
00000001400090bd  mov        rcx, qword ptr [rbx + 0x48]
00000001400090c1  cmp        rcx, qword ptr [rip + 0x10760]
00000001400090c8  je         0x1400090cf
00000001400090ca  call       0x140007770
00000001400090cf  mov        rcx, qword ptr [rbx + 0x68]
00000001400090d3  cmp        rcx, qword ptr [rip + 0x1076e]
00000001400090da  je         0x1400090e1
00000001400090dc  call       0x140007770
00000001400090e1  mov        rcx, qword ptr [rbx + 0x70]
00000001400090e5  cmp        rcx, qword ptr [rip + 0x10764]
00000001400090ec  je         0x1400090f3
00000001400090ee  call       0x140007770
00000001400090f3  mov        rcx, qword ptr [rbx + 0x78]
00000001400090f7  cmp        rcx, qword ptr [rip + 0x1075a]
00000001400090fe  je         0x140009105
0000000140009100  call       0x140007770
0000000140009105  mov        rcx, qword ptr [rbx + 0x80]
000000014000910c  cmp        rcx, qword ptr [rip + 0x1074d]
0000000140009113  je         0x14000911a
0000000140009115  call       0x140007770
000000014000911a  mov        rcx, qword ptr [rbx + 0x88]
0000000140009121  cmp        rcx, qword ptr [rip + 0x10740]
0000000140009128  je         0x14000912f
000000014000912a  call       0x140007770
000000014000912f  mov        rcx, qword ptr [rbx + 0x90]
0000000140009136  cmp        rcx, qword ptr [rip + 0x10733]
000000014000913d  je         0x140009144
000000014000913f  call       0x140007770
0000000140009144  add        rsp, 0x20
0000000140009148  pop        rbx
0000000140009149  ret        
000000014000914a  int3       
000000014000914b  int3       
000000014000914c  test       rcx, rcx
000000014000914f  je         0x1400091b7
0000000140009151  push       rbx
0000000140009152  sub        rsp, 0x20
0000000140009156  mov        rbx, rcx
0000000140009159  mov        rcx, qword ptr [rcx]
000000014000915c  cmp        rcx, qword ptr [rip + 0x1067d]
0000000140009163  je         0x14000916a
0000000140009165  call       0x140007770
000000014000916a  mov        rcx, qword ptr [rbx + 8]
000000014000916e  cmp        rcx, qword ptr [rip + 0x10673]
0000000140009175  je         0x14000917c
0000000140009177  call       0x140007770
000000014000917c  mov        rcx, qword ptr [rbx + 0x10]
0000000140009180  cmp        rcx, qword ptr [rip + 0x10669]
0000000140009187  je         0x14000918e
0000000140009189  call       0x140007770
000000014000918e  mov        rcx, qword ptr [rbx + 0x58]
0000000140009192  cmp        rcx, qword ptr [rip + 0x1069f]
0000000140009199  je         0x1400091a0
000000014000919b  call       0x140007770
00000001400091a0  mov        rcx, qword ptr [rbx + 0x60]
00000001400091a4  cmp        rcx, qword ptr [rip + 0x10695]
00000001400091ab  je         0x1400091b2
00000001400091ad  call       0x140007770
00000001400091b2  add        rsp, 0x20
00000001400091b6  pop        rbx
00000001400091b7  ret        
00000001400091b8  mov        qword ptr [rsp + 8], rbx
00000001400091bd  mov        qword ptr [rsp + 0x10], rsi
00000001400091c2  push       rdi
00000001400091c3  sub        rsp, 0x20
00000001400091c7  xor        edi, edi
00000001400091c9  lea        rax, [rcx + rdx*8]
00000001400091cd  mov        rbx, rcx
00000001400091d0  mov        rsi, rdx
00000001400091d3  movabs     rcx, 0x1fffffffffffffff
00000001400091dd  and        rsi, rcx
00000001400091e0  cmp        rbx, rax
00000001400091e3  cmova      rsi, rdi
00000001400091e7  test       rsi, rsi
00000001400091ea  je         0x140009200
00000001400091ec  mov        rcx, qword ptr [rbx]
00000001400091ef  call       0x140007770
00000001400091f4  inc        rdi
00000001400091f7  lea        rbx, [rbx + 8]
00000001400091fb  cmp        rdi, rsi
00000001400091fe  jne        0x1400091ec
0000000140009200  mov        rbx, qword ptr [rsp + 0x30]
0000000140009205  mov        rsi, qword ptr [rsp + 0x38]
000000014000920a  add        rsp, 0x20
000000014000920e  pop        rdi
000000014000920f  ret        
0000000140009210  test       rcx, rcx
0000000140009213  je         0x140009317
0000000140009219  mov        qword ptr [rsp + 8], rbx
000000014000921e  mov        qword ptr [rsp + 0x10], rbp
0000000140009223  push       rsi
0000000140009224  sub        rsp, 0x20
0000000140009228  mov        ebp, 7
000000014000922d  mov        rbx, rcx
0000000140009230  mov        edx, ebp
0000000140009232  call       0x1400091b8
0000000140009237  lea        rcx, [rbx + 0x38]
000000014000923b  mov        edx, ebp
000000014000923d  call       0x1400091b8
0000000140009242  lea        esi, [rbp + 5]
0000000140009245  mov        edx, esi
0000000140009247  lea        rcx, [rbx + 0x70]
000000014000924b  call       0x1400091b8
0000000140009250  lea        rcx, [rbx + 0xd0]
0000000140009257  mov        edx, esi
0000000140009259  call       0x1400091b8
000000014000925e  lea        rcx, [rbx + 0x130]
0000000140009265  lea        edx, [rbp - 5]
0000000140009268  call       0x1400091b8
000000014000926d  mov        rcx, qword ptr [rbx + 0x140]
0000000140009274  call       0x140007770
0000000140009279  mov        rcx, qword ptr [rbx + 0x148]
0000000140009280  call       0x140007770
0000000140009285  mov        rcx, qword ptr [rbx + 0x150]
000000014000928c  call       0x140007770
0000000140009291  lea        rcx, [rbx + 0x160]
0000000140009298  mov        edx, ebp
000000014000929a  call       0x1400091b8
000000014000929f  lea        rcx, [rbx + 0x198]
00000001400092a6  mov        edx, ebp
00000001400092a8  call       0x1400091b8
00000001400092ad  lea        rcx, [rbx + 0x1d0]
00000001400092b4  mov        edx, esi
00000001400092b6  call       0x1400091b8
00000001400092bb  lea        rcx, [rbx + 0x230]
00000001400092c2  mov        edx, esi
00000001400092c4  call       0x1400091b8
00000001400092c9  lea        rcx, [rbx + 0x290]
00000001400092d0  lea        edx, [rbp - 5]
00000001400092d3  call       0x1400091b8
00000001400092d8  mov        rcx, qword ptr [rbx + 0x2a0]
00000001400092df  call       0x140007770
00000001400092e4  mov        rcx, qword ptr [rbx + 0x2a8]
00000001400092eb  call       0x140007770
00000001400092f0  mov        rcx, qword ptr [rbx + 0x2b0]
00000001400092f7  call       0x140007770
00000001400092fc  mov        rcx, qword ptr [rbx + 0x2b8]
0000000140009303  call       0x140007770
0000000140009308  mov        rbx, qword ptr [rsp + 0x30]
000000014000930d  mov        rbp, qword ptr [rsp + 0x38]
0000000140009312  add        rsp, 0x20
0000000140009316  pop        rsi
0000000140009317  ret        
0000000140009318  push       rbx
000000014000931a  sub        rsp, 0x20
000000014000931e  mov        rbx, rcx
0000000140009321  cmp        rcx, -0x20
0000000140009325  ja         0x140009363
0000000140009327  test       rcx, rcx
000000014000932a  mov        eax, 1
000000014000932f  cmove      rbx, rax
0000000140009333  jmp        0x14000934a
0000000140009335  call       0x1400063cc
000000014000933a  test       eax, eax
000000014000933c  je         0x140009363
000000014000933e  mov        rcx, rbx
0000000140009341  call       0x14000a220
0000000140009346  test       eax, eax
0000000140009348  je         0x140009363
000000014000934a  mov        rcx, qword ptr [rip + 0x11ab7]
0000000140009351  mov        r8, rbx
0000000140009354  xor        edx, edx
0000000140009356  call       qword ptr [rip + 0x4cf4] ; KERNEL32.dll!HeapAlloc
000000014000935c  test       rax, rax
000000014000935f  je         0x140009335
0000000140009361  jmp        0x140009370
0000000140009363  call       0x140006ec0
0000000140009368  mov        dword ptr [rax], 0xc
000000014000936e  xor        eax, eax
0000000140009370  add        rsp, 0x20
0000000140009374  pop        rbx
0000000140009375  ret        
0000000140009376  int3       
0000000140009377  int3       
0000000140009378  mov        eax, dword ptr [rip + 0xfd6a]
000000014000937e  mov        r10, rdx
0000000140009381  mov        r8, rcx
0000000140009384  cmp        eax, 5
0000000140009387  jl         0x140009459
000000014000938d  test       r8b, 1
0000000140009391  je         0x1400093bc
0000000140009393  lea        rax, [rcx + rdx*2]
0000000140009397  mov        rdx, rcx
000000014000939a  cmp        rcx, rax
000000014000939d  je         0x140009544
00000001400093a3  xor        ecx, ecx
00000001400093a5  cmp        word ptr [rdx], cx
00000001400093a8  je         0x140009544
00000001400093ae  add        rdx, 2
00000001400093b2  cmp        rdx, rax
00000001400093b5  jne        0x1400093a5
00000001400093b7  jmp        0x140009544
00000001400093bc  and        ecx, 0x1f
00000001400093bf  mov        eax, 0x20
00000001400093c4  sub        rax, rcx
00000001400093c7  mov        rdx, r8
00000001400093ca  neg        rcx
00000001400093cd  sbb        r11, r11
00000001400093d0  and        r11, rax
00000001400093d3  shr        r11, 1
00000001400093d6  cmp        r10, r11
00000001400093d9  cmovb      r11, r10
00000001400093dd  xor        ecx, ecx
00000001400093df  lea        rax, [r8 + r11*2]
00000001400093e3  cmp        r8, rax
00000001400093e6  je         0x1400093f6
00000001400093e8  cmp        word ptr [rdx], cx
00000001400093eb  je         0x1400093f6
00000001400093ed  add        rdx, 2
00000001400093f1  cmp        rdx, rax
00000001400093f4  jne        0x1400093e8
00000001400093f6  sub        rdx, r8
00000001400093f9  sar        rdx, 1
00000001400093fc  cmp        rdx, r11
00000001400093ff  jne        0x14000954a
0000000140009405  lea        r9, [r8 + rdx*2]
0000000140009409  mov        rax, r10
000000014000940c  sub        rax, r11
000000014000940f  and        rax, 0xffffffffffffffe0
0000000140009413  add        rax, rdx
0000000140009416  lea        rdx, [r8 + rax*2]
000000014000941a  cmp        r9, rdx
000000014000941d  je         0x14000943c
000000014000941f  vpxor      xmm1, xmm1, xmm1
0000000140009423  vpcmpeqw   ymm1, ymm1, ymmword ptr [r9]
0000000140009428  vpmovmskb  eax, ymm1
000000014000942c  test       eax, eax
000000014000942e  vzeroupper 
0000000140009431  jne        0x14000943c
0000000140009433  add        r9, 0x20
0000000140009437  cmp        r9, rdx
000000014000943a  jne        0x14000941f
000000014000943c  lea        rax, [r8 + r10*2]
0000000140009440  jmp        0x14000944c
0000000140009442  cmp        word ptr [r9], cx
0000000140009446  je         0x140009451
0000000140009448  add        r9, 2
000000014000944c  cmp        r9, rax
000000014000944f  jne        0x140009442
0000000140009451  mov        rdx, r9
0000000140009454  jmp        0x140009544
0000000140009459  cmp        eax, 1
000000014000945c  jl         0x140009528
0000000140009462  test       r8b, 1
0000000140009466  je         0x140009491
0000000140009468  lea        rax, [rcx + rdx*2]
000000014000946c  mov        rdx, r8
000000014000946f  cmp        r8, rax
0000000140009472  je         0x140009544
0000000140009478  xor        ecx, ecx
000000014000947a  cmp        word ptr [rdx], cx
000000014000947d  je         0x140009544
0000000140009483  add        rdx, 2
0000000140009487  cmp        rdx, rax
000000014000948a  jne        0x14000947a
000000014000948c  jmp        0x140009544
0000000140009491  and        ecx, 0xf
0000000140009494  mov        eax, 0x10
0000000140009499  sub        rax, rcx
000000014000949c  mov        rdx, r8
000000014000949f  neg        rcx
00000001400094a2  sbb        r11, r11
00000001400094a5  and        r11, rax
00000001400094a8  shr        r11, 1
00000001400094ab  cmp        r10, r11
00000001400094ae  cmovb      r11, r10
00000001400094b2  xor        ecx, ecx
00000001400094b4  lea        rax, [r8 + r11*2]
00000001400094b8  cmp        r8, rax
00000001400094bb  je         0x1400094cb
00000001400094bd  cmp        word ptr [rdx], cx
00000001400094c0  je         0x1400094cb
00000001400094c2  add        rdx, 2
00000001400094c6  cmp        rdx, rax
00000001400094c9  jne        0x1400094bd
00000001400094cb  sub        rdx, r8
00000001400094ce  sar        rdx, 1
00000001400094d1  cmp        rdx, r11
00000001400094d4  jne        0x14000954a
00000001400094d6  mov        rax, r10
00000001400094d9  lea        r9, [r8 + rdx*2]
00000001400094dd  sub        rax, r11
00000001400094e0  xorps      xmm1, xmm1
00000001400094e3  and        rax, 0xfffffffffffffff0
00000001400094e7  add        rax, rdx
00000001400094ea  lea        rdx, [r8 + rax*2]
00000001400094ee  jmp        0x140009505
00000001400094f0  movdqa     xmm0, xmm1
00000001400094f4  pcmpeqw    xmm0, xmmword ptr [r9]
00000001400094f9  pmovmskb   eax, xmm0
00000001400094fd  test       eax, eax
00000001400094ff  jne        0x14000950a
0000000140009501  add        r9, 0x10
0000000140009505  cmp        r9, rdx
0000000140009508  jne        0x1400094f0
000000014000950a  lea        rax, [r8 + r10*2]
000000014000950e  jmp        0x14000951e
0000000140009510  cmp        word ptr [r9], cx
0000000140009514  je         0x140009451
000000014000951a  add        r9, 2
000000014000951e  cmp        r9, rax
0000000140009521  jne        0x140009510
0000000140009523  jmp        0x140009451
0000000140009528  lea        rax, [rcx + rdx*2]
000000014000952c  mov        rdx, r8
000000014000952f  cmp        r8, rax
0000000140009532  je         0x140009544
0000000140009534  xor        ecx, ecx
0000000140009536  cmp        word ptr [rdx], cx
0000000140009539  je         0x140009544
000000014000953b  add        rdx, 2
000000014000953f  cmp        rdx, rax
0000000140009542  jne        0x140009536
0000000140009544  sub        rdx, r8
0000000140009547  sar        rdx, 1
000000014000954a  mov        rax, rdx
000000014000954d  ret        
000000014000954e  int3       
000000014000954f  int3       
0000000140009550  xor        r9d, r9d
0000000140009553  cmp        word ptr [rcx], r9w
0000000140009557  je         0x140009581
0000000140009559  mov        r8, rdx
000000014000955c  cmp        word ptr [rdx], r9w
0000000140009560  je         0x140009577
0000000140009562  movzx      eax, word ptr [rdx]
0000000140009565  cmp        ax, word ptr [rcx]
0000000140009568  je         0x14000957d
000000014000956a  add        r8, 2
000000014000956e  movzx      eax, word ptr [r8]
0000000140009572  test       ax, ax
0000000140009575  jne        0x140009565
0000000140009577  add        rcx, 2
000000014000957b  jmp        0x140009553
000000014000957d  mov        rax, rcx
0000000140009580  ret        
0000000140009581  xor        eax, eax
0000000140009583  ret        
0000000140009584  push       rbp
0000000140009586  push       r12
0000000140009588  push       r13
000000014000958a  push       r14
000000014000958c  push       r15
000000014000958e  sub        rsp, 0x60
0000000140009592  lea        rbp, [rsp + 0x30]
0000000140009597  mov        qword ptr [rbp + 0x60], rbx
000000014000959b  mov        qword ptr [rbp + 0x68], rsi
000000014000959f  mov        qword ptr [rbp + 0x70], rdi
00000001400095a3  mov        rax, qword ptr [rip + 0xfb1e]
00000001400095aa  xor        rax, rbp
00000001400095ad  mov        qword ptr [rbp + 0x20], rax
00000001400095b1  mov        r13d, edx
00000001400095b4  mov        r15d, r9d
00000001400095b7  mov        rdx, rcx
00000001400095ba  mov        r12, r8
00000001400095bd  lea        rcx, [rbp]
00000001400095c1  call       0x140005474
00000001400095c6  mov        edi, dword ptr [rbp + 0x88]
00000001400095cc  test       edi, edi
00000001400095ce  jne        0x1400095d7
00000001400095d0  mov        rax, qword ptr [rbp + 8]
00000001400095d4  mov        edi, dword ptr [rax + 0xc]
00000001400095d7  neg        dword ptr [rbp + 0x90]
00000001400095dd  mov        r9d, r15d
00000001400095e0  mov        r8, r12
00000001400095e3  mov        ecx, edi
00000001400095e5  sbb        edx, edx
00000001400095e7  and        dword ptr [rsp + 0x28], 0
00000001400095ec  and        qword ptr [rsp + 0x20], 0
00000001400095f2  and        edx, 8
00000001400095f5  inc        edx
00000001400095f7  call       0x1400087b8
00000001400095fc  movsxd     r14, eax
00000001400095ff  test       eax, eax
0000000140009601  jne        0x14000960a
0000000140009603  xor        edi, edi
0000000140009605  jmp        0x1400096d8
000000014000960a  mov        rsi, r14
000000014000960d  add        rsi, rsi
0000000140009610  lea        rax, [rsi + 0x10]
0000000140009614  cmp        rsi, rax
0000000140009617  sbb        rcx, rcx
000000014000961a  and        rcx, rax
000000014000961d  je         0x140009672
000000014000961f  cmp        rcx, 0x400
0000000140009626  ja         0x140009659
0000000140009628  lea        rax, [rcx + 0xf]
000000014000962c  cmp        rax, rcx
000000014000962f  ja         0x14000963b
0000000140009631  movabs     rax, 0xffffffffffffff0
000000014000963b  and        rax, 0xfffffffffffffff0
000000014000963f  call       0x140003780
0000000140009644  sub        rsp, rax
0000000140009647  lea        rbx, [rsp + 0x30]
000000014000964c  test       rbx, rbx
000000014000964f  je         0x1400096c0
0000000140009651  mov        dword ptr [rbx], 0xcccc
0000000140009657  jmp        0x14000966c
0000000140009659  call       0x140009318
000000014000965e  mov        rbx, rax
0000000140009661  test       rax, rax
0000000140009664  je         0x140009674
0000000140009666  mov        dword ptr [rax], 0xdddd
000000014000966c  add        rbx, 0x10
0000000140009670  jmp        0x140009674
0000000140009672  xor        ebx, ebx
0000000140009674  test       rbx, rbx
0000000140009677  je         0x1400096c0
0000000140009679  mov        r8, rsi
000000014000967c  xor        edx, edx
000000014000967e  mov        rcx, rbx
0000000140009681  call       0x140004c70
0000000140009686  mov        r9d, r15d
0000000140009689  mov        dword ptr [rsp + 0x28], r14d
000000014000968e  mov        r8, r12
0000000140009691  mov        qword ptr [rsp + 0x20], rbx
0000000140009696  mov        edx, 1
000000014000969b  mov        ecx, edi
000000014000969d  call       0x1400087b8
00000001400096a2  test       eax, eax
00000001400096a4  je         0x1400096c0
00000001400096a6  mov        r9, qword ptr [rbp + 0x80]
00000001400096ad  mov        r8d, eax
00000001400096b0  mov        rdx, rbx
00000001400096b3  mov        ecx, r13d
00000001400096b6  call       qword ptr [rip + 0x4b6c] ; KERNEL32.dll!GetStringTypeW
00000001400096bc  mov        edi, eax
00000001400096be  jmp        0x1400096c2
00000001400096c0  xor        edi, edi
00000001400096c2  test       rbx, rbx
00000001400096c5  je         0x1400096d8
00000001400096c7  lea        rcx, [rbx - 0x10]
00000001400096cb  cmp        dword ptr [rcx], 0xdddd
00000001400096d1  jne        0x1400096d8
00000001400096d3  call       0x140007770
00000001400096d8  cmp        byte ptr [rbp + 0x18], 0
00000001400096dc  je         0x1400096e9
00000001400096de  mov        rax, qword ptr [rbp]
00000001400096e2  and        dword ptr [rax + 0x3a8], 0xfffffffd
00000001400096e9  mov        eax, edi
00000001400096eb  mov        rcx, qword ptr [rbp + 0x20]
00000001400096ef  xor        rcx, rbp
00000001400096f2  call       0x1400037e0
00000001400096f7  mov        rbx, qword ptr [rbp + 0x60]
00000001400096fb  mov        rsi, qword ptr [rbp + 0x68]
00000001400096ff  mov        rdi, qword ptr [rbp + 0x70]
0000000140009703  lea        rsp, [rbp + 0x30]
0000000140009707  pop        r15
0000000140009709  pop        r14
000000014000970b  pop        r13
000000014000970d  pop        r12
000000014000970f  pop        rbp
0000000140009710  ret        
0000000140009711  int3       
0000000140009712  int3       
0000000140009713  int3       
0000000140009714  lock inc   dword ptr [rcx + 0x10]
0000000140009718  mov        rax, qword ptr [rcx + 0xe0]
000000014000971f  test       rax, rax
0000000140009722  je         0x140009727
0000000140009724  lock inc   dword ptr [rax]
0000000140009727  mov        rax, qword ptr [rcx + 0xf0]
000000014000972e  test       rax, rax
0000000140009731  je         0x140009736
0000000140009733  lock inc   dword ptr [rax]
0000000140009736  mov        rax, qword ptr [rcx + 0xe8]
000000014000973d  test       rax, rax
0000000140009740  je         0x140009745
0000000140009742  lock inc   dword ptr [rax]
0000000140009745  mov        rax, qword ptr [rcx + 0x100]
000000014000974c  test       rax, rax
000000014000974f  je         0x140009754
0000000140009751  lock inc   dword ptr [rax]
0000000140009754  lea        rax, [rcx + 0x38]
0000000140009758  mov        r8d, 6
000000014000975e  lea        rdx, [rip + 0xfb33]
0000000140009765  cmp        qword ptr [rax - 0x10], rdx
0000000140009769  je         0x140009776
000000014000976b  mov        rdx, qword ptr [rax]
000000014000976e  test       rdx, rdx
0000000140009771  je         0x140009776
0000000140009773  lock inc   dword ptr [rdx]
0000000140009776  cmp        qword ptr [rax - 0x18], 0
000000014000977b  je         0x140009789
000000014000977d  mov        rdx, qword ptr [rax - 8]
0000000140009781  test       rdx, rdx
0000000140009784  je         0x140009789
0000000140009786  lock inc   dword ptr [rdx]
0000000140009789  add        rax, 0x20
000000014000978d  sub        r8, 1
0000000140009791  jne        0x14000975e
0000000140009793  mov        rcx, qword ptr [rcx + 0x120]
000000014000979a  jmp        0x140009918
000000014000979f  int3       
00000001400097a0  mov        qword ptr [rsp + 8], rbx
00000001400097a5  mov        qword ptr [rsp + 0x10], rbp
00000001400097aa  mov        qword ptr [rsp + 0x18], rsi
00000001400097af  push       rdi
00000001400097b0  sub        rsp, 0x20
00000001400097b4  mov        rax, qword ptr [rcx + 0xf8]
00000001400097bb  mov        rbx, rcx
00000001400097be  test       rax, rax
00000001400097c1  je         0x14000983c
00000001400097c3  lea        rcx, [rip + 0x10016]
00000001400097ca  cmp        rax, rcx
00000001400097cd  je         0x14000983c
00000001400097cf  mov        rax, qword ptr [rbx + 0xe0]
00000001400097d6  test       rax, rax
00000001400097d9  je         0x14000983c
00000001400097db  cmp        dword ptr [rax], 0
00000001400097de  jne        0x14000983c
00000001400097e0  mov        rcx, qword ptr [rbx + 0xf0]
00000001400097e7  test       rcx, rcx
00000001400097ea  je         0x140009802
00000001400097ec  cmp        dword ptr [rcx], 0
00000001400097ef  jne        0x140009802
00000001400097f1  call       0x140007770
00000001400097f6  mov        rcx, qword ptr [rbx + 0xf8]
00000001400097fd  call       0x140009040
0000000140009802  mov        rcx, qword ptr [rbx + 0xe8]
0000000140009809  test       rcx, rcx
000000014000980c  je         0x140009824
000000014000980e  cmp        dword ptr [rcx], 0
0000000140009811  jne        0x140009824
0000000140009813  call       0x140007770
0000000140009818  mov        rcx, qword ptr [rbx + 0xf8]
000000014000981f  call       0x14000914c
0000000140009824  mov        rcx, qword ptr [rbx + 0xe0]
000000014000982b  call       0x140007770
0000000140009830  mov        rcx, qword ptr [rbx + 0xf8]
0000000140009837  call       0x140007770
000000014000983c  mov        rax, qword ptr [rbx + 0x100]
0000000140009843  test       rax, rax
0000000140009846  je         0x14000988f
0000000140009848  cmp        dword ptr [rax], 0
000000014000984b  jne        0x14000988f
000000014000984d  mov        rcx, qword ptr [rbx + 0x108]
0000000140009854  sub        rcx, 0xfe
000000014000985b  call       0x140007770
0000000140009860  mov        rcx, qword ptr [rbx + 0x110]
0000000140009867  mov        edi, 0x80
000000014000986c  sub        rcx, rdi
000000014000986f  call       0x140007770
0000000140009874  mov        rcx, qword ptr [rbx + 0x118]
000000014000987b  sub        rcx, rdi
000000014000987e  call       0x140007770
0000000140009883  mov        rcx, qword ptr [rbx + 0x100]
000000014000988a  call       0x140007770
000000014000988f  mov        rcx, qword ptr [rbx + 0x120]
0000000140009896  call       0x140009940
000000014000989b  lea        rsi, [rbx + 0x128]
00000001400098a2  mov        ebp, 6
00000001400098a7  lea        rdi, [rbx + 0x38]
00000001400098ab  lea        rax, [rip + 0xf9e6]
00000001400098b2  cmp        qword ptr [rdi - 0x10], rax
00000001400098b6  je         0x1400098d2
00000001400098b8  mov        rcx, qword ptr [rdi]
00000001400098bb  test       rcx, rcx
00000001400098be  je         0x1400098d2
00000001400098c0  cmp        dword ptr [rcx], 0
00000001400098c3  jne        0x1400098d2
00000001400098c5  call       0x140007770
00000001400098ca  mov        rcx, qword ptr [rsi]
00000001400098cd  call       0x140007770
00000001400098d2  cmp        qword ptr [rdi - 0x18], 0
00000001400098d7  je         0x1400098ec
00000001400098d9  mov        rcx, qword ptr [rdi - 8]
00000001400098dd  test       rcx, rcx
00000001400098e0  je         0x1400098ec
00000001400098e2  cmp        dword ptr [rcx], 0
00000001400098e5  jne        0x1400098ec
00000001400098e7  call       0x140007770
00000001400098ec  add        rsi, 8
00000001400098f0  add        rdi, 0x20
00000001400098f4  sub        rbp, 1
00000001400098f8  jne        0x1400098ab
00000001400098fa  mov        rcx, rbx
00000001400098fd  mov        rbx, qword ptr [rsp + 0x30]
0000000140009902  mov        rbp, qword ptr [rsp + 0x38]
0000000140009907  mov        rsi, qword ptr [rsp + 0x40]
000000014000990c  add        rsp, 0x20
0000000140009910  pop        rdi
0000000140009911  jmp        0x140007770
0000000140009916  int3       
0000000140009917  int3       
0000000140009918  test       rcx, rcx
000000014000991b  je         0x140009939
000000014000991d  lea        rax, [rip + 0x6d5c]
0000000140009924  cmp        rcx, rax
0000000140009927  je         0x140009939
0000000140009929  mov        eax, 1
000000014000992e  lock xadd  dword ptr [rcx + 0x15c], eax
0000000140009936  inc        eax
0000000140009938  ret        
0000000140009939  mov        eax, 0x7fffffff
000000014000993e  ret        
000000014000993f  int3       
0000000140009940  test       rcx, rcx
0000000140009943  je         0x140009975
0000000140009945  push       rbx
0000000140009946  sub        rsp, 0x20
000000014000994a  lea        rax, [rip + 0x6d2f]
0000000140009951  mov        rbx, rcx
0000000140009954  cmp        rcx, rax
0000000140009957  je         0x140009970
0000000140009959  mov        eax, dword ptr [rcx + 0x15c]
000000014000995f  test       eax, eax
0000000140009961  jne        0x140009970
0000000140009963  call       0x140009210
0000000140009968  mov        rcx, rbx
000000014000996b  call       0x140007770
0000000140009970  add        rsp, 0x20
0000000140009974  pop        rbx
0000000140009975  ret        
0000000140009976  int3       
0000000140009977  int3       
0000000140009978  test       rcx, rcx
000000014000997b  je         0x140009997
000000014000997d  lea        rax, [rip + 0x6cfc]
0000000140009984  cmp        rcx, rax
0000000140009987  je         0x140009997
0000000140009989  or         eax, 0xffffffff
000000014000998c  lock xadd  dword ptr [rcx + 0x15c], eax
0000000140009994  dec        eax
0000000140009996  ret        
0000000140009997  mov        eax, 0x7fffffff
000000014000999c  ret        
000000014000999d  int3       
000000014000999e  int3       
000000014000999f  int3       
00000001400099a0  sub        rsp, 0x28
00000001400099a4  test       rcx, rcx
00000001400099a7  je         0x140009a43
00000001400099ad  or         r9d, 0xffffffff
00000001400099b1  lock add   dword ptr [rcx + 0x10], r9d
00000001400099b6  mov        rax, qword ptr [rcx + 0xe0]
00000001400099bd  test       rax, rax
00000001400099c0  je         0x1400099c6
00000001400099c2  lock add   dword ptr [rax], r9d
00000001400099c6  mov        rax, qword ptr [rcx + 0xf0]
00000001400099cd  test       rax, rax
00000001400099d0  je         0x1400099d6
00000001400099d2  lock add   dword ptr [rax], r9d
00000001400099d6  mov        rax, qword ptr [rcx + 0xe8]
00000001400099dd  test       rax, rax
00000001400099e0  je         0x1400099e6
00000001400099e2  lock add   dword ptr [rax], r9d
00000001400099e6  mov        rax, qword ptr [rcx + 0x100]
00000001400099ed  test       rax, rax
00000001400099f0  je         0x1400099f6
00000001400099f2  lock add   dword ptr [rax], r9d
00000001400099f6  lea        rax, [rcx + 0x38]
00000001400099fa  mov        r8d, 6
0000000140009a00  lea        rdx, [rip + 0xf891]
0000000140009a07  cmp        qword ptr [rax - 0x10], rdx
0000000140009a0b  je         0x140009a19
0000000140009a0d  mov        rdx, qword ptr [rax]
0000000140009a10  test       rdx, rdx
0000000140009a13  je         0x140009a19
0000000140009a15  lock add   dword ptr [rdx], r9d
0000000140009a19  cmp        qword ptr [rax - 0x18], 0
0000000140009a1e  je         0x140009a2d
0000000140009a20  mov        rdx, qword ptr [rax - 8]
0000000140009a24  test       rdx, rdx
0000000140009a27  je         0x140009a2d
0000000140009a29  lock add   dword ptr [rdx], r9d
0000000140009a2d  add        rax, 0x20
0000000140009a31  sub        r8, 1
0000000140009a35  jne        0x140009a00
0000000140009a37  mov        rcx, qword ptr [rcx + 0x120]
0000000140009a3e  call       0x140009978
0000000140009a43  add        rsp, 0x28
0000000140009a47  ret        
0000000140009a48  mov        qword ptr [rsp + 8], rbx
0000000140009a4d  push       rdi
0000000140009a4e  sub        rsp, 0x20
0000000140009a52  call       0x140007260
0000000140009a57  lea        rdi, [rax + 0x90]
0000000140009a5e  mov        ecx, dword ptr [rax + 0x3a8]
0000000140009a64  mov        eax, dword ptr [rip + 0xfe16]
0000000140009a6a  test       eax, ecx
0000000140009a6c  je         0x140009a76
0000000140009a6e  mov        rbx, qword ptr [rdi]
0000000140009a71  test       rbx, rbx
0000000140009a74  jne        0x140009aa2
0000000140009a76  mov        ecx, 4
0000000140009a7b  call       0x1400089b8
0000000140009a80  nop        
0000000140009a81  mov        rdx, qword ptr [rip + 0x10b20]
0000000140009a88  mov        rcx, rdi
0000000140009a8b  call       0x140009ab8
0000000140009a90  mov        rbx, rax
0000000140009a93  mov        ecx, 4
0000000140009a98  call       0x140008a18
0000000140009a9d  test       rbx, rbx
0000000140009aa0  je         0x140009ab0
0000000140009aa2  mov        rax, rbx
0000000140009aa5  mov        rbx, qword ptr [rsp + 0x30]
0000000140009aaa  add        rsp, 0x20
0000000140009aae  pop        rdi
0000000140009aaf  ret        
0000000140009ab0  call       0x1400069dc
0000000140009ab5  nop        
0000000140009ab6  int3       
0000000140009ab7  int3       
0000000140009ab8  mov        qword ptr [rsp + 8], rbx
0000000140009abd  push       rdi
0000000140009abe  sub        rsp, 0x20
0000000140009ac2  mov        rdi, rdx
0000000140009ac5  test       rdx, rdx
0000000140009ac8  je         0x140009b10
0000000140009aca  test       rcx, rcx
0000000140009acd  je         0x140009b10
0000000140009acf  mov        rbx, qword ptr [rcx]
0000000140009ad2  cmp        rbx, rdx
0000000140009ad5  jne        0x140009adc
0000000140009ad7  mov        rax, rdi
0000000140009ada  jmp        0x140009b12
0000000140009adc  mov        qword ptr [rcx], rdi
0000000140009adf  mov        rcx, rdi
0000000140009ae2  call       0x140009714
0000000140009ae7  test       rbx, rbx
0000000140009aea  je         0x140009ad7
0000000140009aec  mov        rcx, rbx
0000000140009aef  call       0x1400099a0
0000000140009af4  cmp        dword ptr [rbx + 0x10], 0
0000000140009af8  jne        0x140009ad7
0000000140009afa  lea        rax, [rip + 0xf62f]
0000000140009b01  cmp        rbx, rax
0000000140009b04  je         0x140009ad7
0000000140009b06  mov        rcx, rbx
0000000140009b09  call       0x1400097a0
0000000140009b0e  jmp        0x140009ad7
0000000140009b10  xor        eax, eax
0000000140009b12  mov        rbx, qword ptr [rsp + 0x30]
0000000140009b17  add        rsp, 0x20
0000000140009b1b  pop        rdi
0000000140009b1c  ret        
0000000140009b1d  int3       
0000000140009b1e  int3       
0000000140009b1f  int3       
0000000140009b20  mov        qword ptr [rsp + 8], rbx
0000000140009b25  mov        qword ptr [rsp + 0x10], rbp
0000000140009b2a  mov        qword ptr [rsp + 0x18], rsi
0000000140009b2f  push       rdi
0000000140009b30  push       r12
0000000140009b32  push       r13
0000000140009b34  push       r14
0000000140009b36  push       r15
0000000140009b38  sub        rsp, 0x20
0000000140009b3c  mov        r15d, ecx
0000000140009b3f  lea        r14, [rip - 0x9b46]
0000000140009b46  mov        r12, r9
0000000140009b49  mov        rbp, r8
0000000140009b4c  mov        r13, rdx
0000000140009b4f  mov        rcx, qword ptr [r14 + r15*8 + 0x1acf0]
0000000140009b57  mov        r10, qword ptr [rip + 0xf56a]
0000000140009b5e  or         rdi, 0xffffffffffffffff
0000000140009b62  mov        eax, r10d
0000000140009b65  mov        rdx, r10
0000000140009b68  xor        rdx, rcx
0000000140009b6b  and        eax, 0x3f
0000000140009b6e  mov        cl, al
0000000140009b70  ror        rdx, cl
0000000140009b73  cmp        rdx, rdi
0000000140009b76  je         0x140009cd7
0000000140009b7c  test       rdx, rdx
0000000140009b7f  je         0x140009b89
0000000140009b81  mov        rax, rdx
0000000140009b84  jmp        0x140009cd9
0000000140009b89  cmp        r8, r12
0000000140009b8c  je         0x140009c6b
0000000140009b92  mov        esi, dword ptr [rbp]
0000000140009b95  mov        rbx, qword ptr [r14 + rsi*8 + 0x1ac50]
0000000140009b9d  test       rbx, rbx
0000000140009ba0  je         0x140009bb0
0000000140009ba2  cmp        rbx, rdi
0000000140009ba5  je         0x140009c57
0000000140009bab  jmp        0x140009c52
0000000140009bb0  mov        r14, qword ptr [r14 + rsi*8 + 0x11570]
0000000140009bb8  xor        edx, edx
0000000140009bba  mov        rcx, r14
0000000140009bbd  mov        r8d, 0x800
0000000140009bc3  call       qword ptr [rip + 0x44d7] ; KERNEL32.dll!LoadLibraryExW
0000000140009bc9  mov        rbx, rax
0000000140009bcc  test       rax, rax
0000000140009bcf  jne        0x140009c20
0000000140009bd1  call       qword ptr [rip + 0x4579] ; KERNEL32.dll!GetLastError
0000000140009bd7  cmp        eax, 0x57
0000000140009bda  jne        0x140009c1e
0000000140009bdc  lea        ebx, [rax - 0x50]
0000000140009bdf  mov        rcx, r14
0000000140009be2  mov        r8d, ebx
0000000140009be5  lea        rdx, [rip + 0x668c] ; api-ms-
0000000140009bec  call       0x140005448
0000000140009bf1  test       eax, eax
0000000140009bf3  je         0x140009c1e
0000000140009bf5  mov        r8d, ebx
0000000140009bf8  lea        rdx, [rip + 0x7e69] ; ext-ms-
0000000140009bff  mov        rcx, r14
0000000140009c02  call       0x140005448
0000000140009c07  test       eax, eax
0000000140009c09  je         0x140009c1e
0000000140009c0b  xor        r8d, r8d
0000000140009c0e  xor        edx, edx
0000000140009c10  mov        rcx, r14
0000000140009c13  call       qword ptr [rip + 0x4487] ; KERNEL32.dll!LoadLibraryExW
0000000140009c19  mov        rbx, rax
0000000140009c1c  jmp        0x140009c20
0000000140009c1e  xor        ebx, ebx
0000000140009c20  lea        r14, [rip - 0x9c27]
0000000140009c27  test       rbx, rbx
0000000140009c2a  jne        0x140009c39
0000000140009c2c  mov        rax, rdi
0000000140009c2f  xchg       qword ptr [r14 + rsi*8 + 0x1ac50], rax
0000000140009c37  jmp        0x140009c57
0000000140009c39  mov        rax, rbx
0000000140009c3c  xchg       qword ptr [r14 + rsi*8 + 0x1ac50], rax
0000000140009c44  test       rax, rax
0000000140009c47  je         0x140009c52
0000000140009c49  mov        rcx, rbx
0000000140009c4c  call       qword ptr [rip + 0x4436] ; KERNEL32.dll!FreeLibrary
0000000140009c52  test       rbx, rbx
0000000140009c55  jne        0x140009cac
0000000140009c57  add        rbp, 4
0000000140009c5b  cmp        rbp, r12
0000000140009c5e  jne        0x140009b92
0000000140009c64  mov        r10, qword ptr [rip + 0xf45d]
0000000140009c6b  xor        ebx, ebx
0000000140009c6d  test       rbx, rbx
0000000140009c70  je         0x140009cbc
0000000140009c72  mov        rdx, r13
0000000140009c75  mov        rcx, rbx
0000000140009c78  call       qword ptr [rip + 0x441a] ; KERNEL32.dll!GetProcAddress
0000000140009c7e  test       rax, rax
0000000140009c81  je         0x140009cb5
0000000140009c83  mov        r8, qword ptr [rip + 0xf43e]
0000000140009c8a  mov        edx, 0x40
0000000140009c8f  mov        ecx, r8d
0000000140009c92  and        ecx, 0x3f
0000000140009c95  sub        edx, ecx
0000000140009c97  mov        cl, dl
0000000140009c99  mov        rdx, rax
0000000140009c9c  ror        rdx, cl
0000000140009c9f  xor        rdx, r8
0000000140009ca2  xchg       qword ptr [r14 + r15*8 + 0x1acf0], rdx
0000000140009caa  jmp        0x140009cd9
0000000140009cac  mov        r10, qword ptr [rip + 0xf415]
0000000140009cb3  jmp        0x140009c6d
0000000140009cb5  mov        r10, qword ptr [rip + 0xf40c]
0000000140009cbc  mov        eax, r10d
0000000140009cbf  mov        ecx, 0x40
0000000140009cc4  and        eax, 0x3f
0000000140009cc7  sub        ecx, eax
0000000140009cc9  ror        rdi, cl
0000000140009ccc  xor        rdi, r10
0000000140009ccf  xchg       qword ptr [r14 + r15*8 + 0x1acf0], rdi
0000000140009cd7  xor        eax, eax
0000000140009cd9  mov        rbx, qword ptr [rsp + 0x50]
0000000140009cde  mov        rbp, qword ptr [rsp + 0x58]
0000000140009ce3  mov        rsi, qword ptr [rsp + 0x60]
0000000140009ce8  add        rsp, 0x20
0000000140009cec  pop        r15
0000000140009cee  pop        r14
0000000140009cf0  pop        r13
0000000140009cf2  pop        r12
0000000140009cf4  pop        rdi
0000000140009cf5  ret        
0000000140009cf6  int3       
0000000140009cf7  int3       
0000000140009cf8  push       rbx
0000000140009cfa  sub        rsp, 0x20
0000000140009cfe  mov        rbx, rcx
0000000140009d01  lea        r9, [rip + 0x7dd0] ; AppPolicyGetProcessTerminationMethod
0000000140009d08  mov        ecx, 0x1c
0000000140009d0d  lea        r8, [rip + 0x7dc0]
0000000140009d14  lea        rdx, [rip + 0x7dbd] ; AppPolicyGetProcessTerminationMethod
0000000140009d1b  call       0x140009b20
0000000140009d20  test       rax, rax
0000000140009d23  je         0x140009d3b
0000000140009d25  mov        rdx, rbx
0000000140009d28  mov        rcx, 0xfffffffffffffffa
0000000140009d2f  add        rsp, 0x20
0000000140009d33  pop        rbx
0000000140009d34  jmp        qword ptr [rip + 0x4555]
0000000140009d3b  mov        eax, 0xc0000225
0000000140009d40  add        rsp, 0x20
0000000140009d44  pop        rbx
0000000140009d45  ret        
0000000140009d46  int3       
0000000140009d47  int3       
0000000140009d48  push       rbx
0000000140009d4a  sub        rsp, 0x20
0000000140009d4e  mov        rbx, rcx
0000000140009d51  lea        r9, [rip + 0x7d28]
0000000140009d58  mov        ecx, 3
0000000140009d5d  lea        r8, [rip + 0x7d14]
0000000140009d64  lea        rdx, [rip + 0x6525] ; FlsAlloc
0000000140009d6b  call       0x140009b20
0000000140009d70  test       rax, rax
0000000140009d73  je         0x140009d84
0000000140009d75  mov        rcx, rbx
0000000140009d78  add        rsp, 0x20
0000000140009d7c  pop        rbx
0000000140009d7d  jmp        qword ptr [rip + 0x450c]
0000000140009d84  add        rsp, 0x20
0000000140009d88  pop        rbx
0000000140009d89  jmp        qword ptr [rip + 0x43f0] ; KERNEL32.dll!TlsAlloc
0000000140009d90  push       rbx
0000000140009d92  sub        rsp, 0x20
0000000140009d96  mov        ebx, ecx
0000000140009d98  lea        r9, [rip + 0x7ce9]
0000000140009d9f  mov        ecx, 4
0000000140009da4  lea        r8, [rip + 0x7cd5]
0000000140009dab  lea        rdx, [rip + 0x64f6] ; FlsFree
0000000140009db2  call       0x140009b20
0000000140009db7  mov        ecx, ebx
0000000140009db9  test       rax, rax
0000000140009dbc  je         0x140009dca
0000000140009dbe  add        rsp, 0x20
0000000140009dc2  pop        rbx
0000000140009dc3  jmp        qword ptr [rip + 0x44c6]
0000000140009dca  add        rsp, 0x20
0000000140009dce  pop        rbx
0000000140009dcf  jmp        qword ptr [rip + 0x43c2] ; KERNEL32.dll!TlsFree
0000000140009dd6  int3       
0000000140009dd7  int3       
0000000140009dd8  push       rbx
0000000140009dda  sub        rsp, 0x20
0000000140009dde  mov        ebx, ecx
0000000140009de0  lea        r9, [rip + 0x7ca9]
0000000140009de7  mov        ecx, 5
0000000140009dec  lea        r8, [rip + 0x7c95]
0000000140009df3  lea        rdx, [rip + 0x64be] ; FlsGetValue
0000000140009dfa  call       0x140009b20
0000000140009dff  mov        ecx, ebx
0000000140009e01  test       rax, rax
0000000140009e04  je         0x140009e12
0000000140009e06  add        rsp, 0x20
0000000140009e0a  pop        rbx
0000000140009e0b  jmp        qword ptr [rip + 0x447e]
0000000140009e12  add        rsp, 0x20
0000000140009e16  pop        rbx
0000000140009e17  jmp        qword ptr [rip + 0x436a] ; KERNEL32.dll!TlsGetValue
0000000140009e1e  int3       
0000000140009e1f  int3       
0000000140009e20  mov        qword ptr [rsp + 8], rbx
0000000140009e25  push       rdi
0000000140009e26  sub        rsp, 0x20
0000000140009e2a  mov        rbx, rdx
0000000140009e2d  lea        r9, [rip + 0x7c64]
0000000140009e34  mov        edi, ecx
0000000140009e36  lea        rdx, [rip + 0x6493] ; FlsSetValue
0000000140009e3d  mov        ecx, 6
0000000140009e42  lea        r8, [rip + 0x7c47]
0000000140009e49  call       0x140009b20
0000000140009e4e  mov        rdx, rbx
0000000140009e51  mov        ecx, edi
0000000140009e53  test       rax, rax
0000000140009e56  je         0x140009e60
0000000140009e58  call       qword ptr [rip + 0x4432]
0000000140009e5e  jmp        0x140009e66
0000000140009e60  call       qword ptr [rip + 0x432a] ; KERNEL32.dll!TlsSetValue
0000000140009e66  mov        rbx, qword ptr [rsp + 0x30]
0000000140009e6b  add        rsp, 0x20
0000000140009e6f  pop        rdi
0000000140009e70  ret        
0000000140009e71  int3       
0000000140009e72  int3       
0000000140009e73  int3       
0000000140009e74  mov        qword ptr [rsp + 8], rbx
0000000140009e79  mov        qword ptr [rsp + 0x10], rsi
0000000140009e7e  push       rdi
0000000140009e7f  sub        rsp, 0x20
0000000140009e83  mov        esi, r8d
0000000140009e86  lea        r9, [rip + 0x7c13]
0000000140009e8d  mov        ebx, edx
0000000140009e8f  lea        r8, [rip + 0x7c02]
0000000140009e96  mov        rdi, rcx
0000000140009e99  lea        rdx, [rip + 0x6448] ; InitializeCriticalSectionEx
0000000140009ea0  mov        ecx, 0x12
0000000140009ea5  call       0x140009b20
0000000140009eaa  mov        edx, ebx
0000000140009eac  mov        rcx, rdi
0000000140009eaf  test       rax, rax
0000000140009eb2  je         0x140009ebf
0000000140009eb4  mov        r8d, esi
0000000140009eb7  call       qword ptr [rip + 0x43d3]
0000000140009ebd  jmp        0x140009ec5
0000000140009ebf  call       qword ptr [rip + 0x42b3] ; KERNEL32.dll!InitializeCriticalSectionAndSpinCount
0000000140009ec5  mov        rbx, qword ptr [rsp + 0x30]
0000000140009eca  mov        rsi, qword ptr [rsp + 0x38]
0000000140009ecf  add        rsp, 0x20
0000000140009ed3  pop        rdi
0000000140009ed4  ret        
0000000140009ed5  int3       
0000000140009ed6  int3       
0000000140009ed7  int3       
0000000140009ed8  mov        qword ptr [rsp + 8], rbx
0000000140009edd  mov        qword ptr [rsp + 0x10], rbp
0000000140009ee2  mov        qword ptr [rsp + 0x18], rsi
0000000140009ee7  push       rdi
0000000140009ee8  sub        rsp, 0x50
0000000140009eec  mov        ebx, r9d
0000000140009eef  mov        rdi, r8
0000000140009ef2  mov        esi, edx
0000000140009ef4  lea        r9, [rip + 0x7bad] ; LCMapStringEx
0000000140009efb  mov        rbp, rcx
0000000140009efe  lea        r8, [rip + 0x7b9b]
0000000140009f05  lea        rdx, [rip + 0x7b9c] ; LCMapStringEx
0000000140009f0c  mov        ecx, 0x14
0000000140009f11  call       0x140009b20
0000000140009f16  test       rax, rax
0000000140009f19  je         0x140009f6d
0000000140009f1b  mov        r8, qword ptr [rsp + 0xa0]
0000000140009f23  mov        r9d, ebx
0000000140009f26  mov        rcx, qword ptr [rsp + 0x98]
0000000140009f2e  mov        edx, esi
0000000140009f30  mov        qword ptr [rsp + 0x40], r8
0000000140009f35  mov        r8, rdi
0000000140009f38  mov        qword ptr [rsp + 0x38], rcx
0000000140009f3d  mov        rcx, qword ptr [rsp + 0x90]
0000000140009f45  mov        qword ptr [rsp + 0x30], rcx
0000000140009f4a  mov        ecx, dword ptr [rsp + 0x88]
0000000140009f51  mov        dword ptr [rsp + 0x28], ecx
0000000140009f55  mov        rcx, qword ptr [rsp + 0x80]
0000000140009f5d  mov        qword ptr [rsp + 0x20], rcx
0000000140009f62  mov        rcx, rbp
0000000140009f65  call       qword ptr [rip + 0x4325]
0000000140009f6b  jmp        0x140009f9f
0000000140009f6d  xor        edx, edx
0000000140009f6f  mov        rcx, rbp
0000000140009f72  call       0x140009fb4
0000000140009f77  mov        ecx, eax
0000000140009f79  mov        r9d, ebx
0000000140009f7c  mov        eax, dword ptr [rsp + 0x88]
0000000140009f83  mov        r8, rdi
0000000140009f86  mov        dword ptr [rsp + 0x28], eax
0000000140009f8a  mov        edx, esi
0000000140009f8c  mov        rax, qword ptr [rsp + 0x80]
0000000140009f94  mov        qword ptr [rsp + 0x20], rax
0000000140009f99  call       qword ptr [rip + 0x4291] ; KERNEL32.dll!LCMapStringW
0000000140009f9f  mov        rbx, qword ptr [rsp + 0x60]
0000000140009fa4  mov        rbp, qword ptr [rsp + 0x68]
0000000140009fa9  mov        rsi, qword ptr [rsp + 0x70]
0000000140009fae  add        rsp, 0x50
0000000140009fb2  pop        rdi
0000000140009fb3  ret        
0000000140009fb4  mov        qword ptr [rsp + 8], rbx
0000000140009fb9  push       rdi
0000000140009fba  sub        rsp, 0x20
0000000140009fbe  mov        edi, edx
0000000140009fc0  lea        r9, [rip + 0x7af9] ; LocaleNameToLCID
0000000140009fc7  mov        rbx, rcx
0000000140009fca  lea        rdx, [rip + 0x7aef] ; LocaleNameToLCID
0000000140009fd1  mov        ecx, 0x16
0000000140009fd6  lea        r8, [rip + 0x7adb]
0000000140009fdd  call       0x140009b20
0000000140009fe2  mov        rcx, rbx
0000000140009fe5  test       rax, rax
0000000140009fe8  je         0x140009ff4
0000000140009fea  mov        edx, edi
0000000140009fec  call       qword ptr [rip + 0x429e]
0000000140009ff2  jmp        0x140009ff9
0000000140009ff4  call       0x14000b3c4
0000000140009ff9  mov        rbx, qword ptr [rsp + 0x30]
0000000140009ffe  add        rsp, 0x20
000000014000a002  pop        rdi
000000014000a003  ret        
000000014000a004  int3       
000000014000a005  int3       
000000014000a006  int3       
000000014000a007  int3       
000000014000a008  int3       
000000014000a009  int3       
000000014000a00a  int3       
000000014000a00b  int3       
000000014000a00c  int3       
000000014000a00d  int3       
000000014000a00e  int3       
000000014000a00f  int3       
000000014000a010  mov        qword ptr [rsp + 8], rdi
000000014000a015  lea        rdi, [rip + 0x10cd4]
000000014000a01c  lea        rax, [rip + 0x10ddd]
000000014000a023  cmp        rax, rdi
000000014000a026  mov        rax, qword ptr [rip + 0xf09b]
000000014000a02d  sbb        rcx, rcx
000000014000a030  not        rcx
000000014000a033  and        ecx, 0x22
000000014000a036  rep stosq  qword ptr [rdi], rax
000000014000a039  mov        rdi, qword ptr [rsp + 8]
000000014000a03e  mov        al, 1
000000014000a040  ret        
000000014000a041  int3       
000000014000a042  int3       
000000014000a043  int3       
000000014000a044  int3       
000000014000a045  int3       
000000014000a046  int3       
000000014000a047  int3       
000000014000a048  int3       
000000014000a049  int3       
000000014000a04a  int3       
000000014000a04b  int3       
000000014000a04c  int3       
000000014000a04d  int3       
000000014000a04e  int3       
000000014000a04f  int3       
000000014000a050  push       rbx
000000014000a052  sub        rsp, 0x20
000000014000a056  test       cl, cl
000000014000a058  jne        0x14000a089
000000014000a05a  lea        rbx, [rip + 0x10bef]
000000014000a061  mov        rcx, qword ptr [rbx]
000000014000a064  test       rcx, rcx
000000014000a067  je         0x14000a079
000000014000a069  cmp        rcx, -1
000000014000a06d  je         0x14000a075
000000014000a06f  call       qword ptr [rip + 0x4013] ; KERNEL32.dll!FreeLibrary
000000014000a075  and        qword ptr [rbx], 0
000000014000a079  add        rbx, 8
000000014000a07d  lea        rax, [rip + 0x10c6c]
000000014000a084  cmp        rbx, rax
000000014000a087  jne        0x14000a061
000000014000a089  mov        al, 1
000000014000a08b  add        rsp, 0x20
000000014000a08f  pop        rbx
000000014000a090  ret        
000000014000a091  int3       
000000014000a092  int3       
000000014000a093  int3       
000000014000a094  mov        qword ptr [rsp + 8], rbx
000000014000a099  mov        qword ptr [rsp + 0x10], rbp
000000014000a09e  mov        qword ptr [rsp + 0x18], rsi
000000014000a0a3  push       rdi
000000014000a0a4  sub        rsp, 0x20
000000014000a0a8  mov        rbp, r8
000000014000a0ab  mov        rbx, rdx
000000014000a0ae  mov        rsi, rcx
000000014000a0b1  test       rdx, rdx
000000014000a0b4  je         0x14000a0d3
000000014000a0b6  xor        edx, edx
000000014000a0b8  lea        rax, [rdx - 0x20]
000000014000a0bc  div        rbx
000000014000a0bf  cmp        rax, r8
000000014000a0c2  jae        0x14000a0d3
000000014000a0c4  call       0x140006ec0
000000014000a0c9  mov        dword ptr [rax], 0xc
000000014000a0cf  xor        eax, eax
000000014000a0d1  jmp        0x14000a114
000000014000a0d3  test       rsi, rsi
000000014000a0d6  je         0x14000a0e2
000000014000a0d8  call       0x14000b474
000000014000a0dd  mov        rdi, rax
000000014000a0e0  jmp        0x14000a0e4
000000014000a0e2  xor        edi, edi
000000014000a0e4  imul       rbx, rbp
000000014000a0e8  mov        rcx, rsi
000000014000a0eb  mov        rdx, rbx
000000014000a0ee  call       0x14000b4b0
000000014000a0f3  mov        rsi, rax
000000014000a0f6  test       rax, rax
000000014000a0f9  je         0x14000a111
000000014000a0fb  cmp        rdi, rbx
000000014000a0fe  jae        0x14000a111
000000014000a100  sub        rbx, rdi
000000014000a103  lea        rcx, [rax + rdi]
000000014000a107  mov        r8, rbx
000000014000a10a  xor        edx, edx
000000014000a10c  call       0x140004c70
000000014000a111  mov        rax, rsi
000000014000a114  mov        rbx, qword ptr [rsp + 0x30]
000000014000a119  mov        rbp, qword ptr [rsp + 0x38]
000000014000a11e  mov        rsi, qword ptr [rsp + 0x40]
000000014000a123  add        rsp, 0x20
000000014000a127  pop        rdi
000000014000a128  ret        
000000014000a129  int3       
000000014000a12a  int3       
000000014000a12b  int3       
000000014000a12c  int3       
000000014000a12d  int3       
000000014000a12e  int3       
000000014000a12f  int3       
000000014000a130  sub        rsp, 0x28
000000014000a134  call       qword ptr [rip + 0x3f26] ; KERNEL32.dll!GetProcessHeap
000000014000a13a  test       rax, rax
000000014000a13d  mov        qword ptr [rip + 0x10cc4], rax
000000014000a144  setne      al
000000014000a147  add        rsp, 0x28
000000014000a14b  ret        
000000014000a14c  int3       
000000014000a14d  int3       
000000014000a14e  int3       
000000014000a14f  int3       
000000014000a150  and        qword ptr [rip + 0x10cb0], 0
000000014000a158  mov        al, 1
000000014000a15a  ret        
000000014000a15b  int3       
000000014000a15c  mov        qword ptr [rsp + 8], rbx
000000014000a161  mov        qword ptr [rsp + 0x10], rsi
000000014000a166  push       rdi
000000014000a167  sub        rsp, 0x20
000000014000a16b  mov        rsi, rdx
000000014000a16e  mov        rdi, rcx
000000014000a171  cmp        rcx, rdx
000000014000a174  je         0x14000a1ca
000000014000a176  mov        rbx, rcx
000000014000a179  mov        rax, qword ptr [rbx]
000000014000a17c  test       rax, rax
000000014000a17f  je         0x14000a18b
000000014000a181  call       qword ptr [rip + 0x4109]
000000014000a187  test       al, al
000000014000a189  je         0x14000a194
000000014000a18b  add        rbx, 0x10
000000014000a18f  cmp        rbx, rsi
000000014000a192  jne        0x14000a179
000000014000a194  cmp        rbx, rsi
000000014000a197  je         0x14000a1ca
000000014000a199  cmp        rbx, rdi
000000014000a19c  je         0x14000a1c6
000000014000a19e  add        rbx, -8
000000014000a1a2  cmp        qword ptr [rbx - 8], 0
000000014000a1a7  je         0x14000a1b9
000000014000a1a9  mov        rax, qword ptr [rbx]
000000014000a1ac  test       rax, rax
000000014000a1af  je         0x14000a1b9
000000014000a1b1  xor        ecx, ecx
000000014000a1b3  call       qword ptr [rip + 0x40d7]
000000014000a1b9  sub        rbx, 0x10
000000014000a1bd  lea        rax, [rbx + 8]
000000014000a1c1  cmp        rax, rdi
000000014000a1c4  jne        0x14000a1a2
000000014000a1c6  xor        al, al
000000014000a1c8  jmp        0x14000a1cc
000000014000a1ca  mov        al, 1
000000014000a1cc  mov        rbx, qword ptr [rsp + 0x30]
000000014000a1d1  mov        rsi, qword ptr [rsp + 0x38]
000000014000a1d6  add        rsp, 0x20
000000014000a1da  pop        rdi
000000014000a1db  ret        
000000014000a1dc  mov        qword ptr [rsp + 8], rbx
000000014000a1e1  push       rdi
000000014000a1e2  sub        rsp, 0x20
000000014000a1e6  mov        rbx, rdx
000000014000a1e9  mov        rdi, rcx
000000014000a1ec  cmp        rcx, rdx
000000014000a1ef  je         0x14000a20b
000000014000a1f1  mov        rax, qword ptr [rbx - 8]
000000014000a1f5  test       rax, rax
000000014000a1f8  je         0x14000a202
000000014000a1fa  xor        ecx, ecx
000000014000a1fc  call       qword ptr [rip + 0x408e]
000000014000a202  sub        rbx, 0x10
000000014000a206  cmp        rbx, rdi
000000014000a209  jne        0x14000a1f1
000000014000a20b  mov        rbx, qword ptr [rsp + 0x30]
000000014000a210  mov        al, 1
000000014000a212  add        rsp, 0x20
000000014000a216  pop        rdi
000000014000a217  ret        
000000014000a218  mov        qword ptr [rip + 0x10bf1], rcx
000000014000a21f  ret        
000000014000a220  push       rbx
000000014000a222  sub        rsp, 0x20
000000014000a226  mov        rbx, rcx
000000014000a229  call       0x14000a250
000000014000a22e  test       rax, rax
000000014000a231  je         0x14000a247
000000014000a233  mov        rcx, rbx
000000014000a236  call       qword ptr [rip + 0x4054]
000000014000a23c  test       eax, eax
000000014000a23e  je         0x14000a247
000000014000a240  mov        eax, 1
000000014000a245  jmp        0x14000a249
000000014000a247  xor        eax, eax
000000014000a249  add        rsp, 0x20
000000014000a24d  pop        rbx
000000014000a24e  ret        
000000014000a24f  int3       
000000014000a250  push       rbx
000000014000a252  sub        rsp, 0x20
000000014000a256  xor        ecx, ecx
000000014000a258  call       0x1400089b8
000000014000a25d  nop        
000000014000a25e  mov        rbx, qword ptr [rip + 0xee63]
000000014000a265  mov        ecx, ebx
000000014000a267  and        ecx, 0x3f
000000014000a26a  xor        rbx, qword ptr [rip + 0x10b9f]
000000014000a271  ror        rbx, cl
000000014000a274  xor        ecx, ecx
000000014000a276  call       0x140008a18
000000014000a27b  mov        rax, rbx
000000014000a27e  add        rsp, 0x20
000000014000a282  pop        rbx
000000014000a283  ret        
000000014000a284  mov        qword ptr [rsp + 8], rbx
000000014000a289  mov        qword ptr [rsp + 0x20], r9
000000014000a28e  push       rdi
000000014000a28f  sub        rsp, 0x20
000000014000a293  mov        rdi, r9
000000014000a296  mov        ecx, dword ptr [rdx]
000000014000a298  call       0x1400089b8
000000014000a29d  nop        
000000014000a29e  mov        rbx, qword ptr [rip + 0xee23]
000000014000a2a5  mov        ecx, ebx
000000014000a2a7  and        ecx, 0x3f
000000014000a2aa  xor        rbx, qword ptr [rip + 0x10b77]
000000014000a2b1  ror        rbx, cl
000000014000a2b4  mov        ecx, dword ptr [rdi]
000000014000a2b6  call       0x140008a18
000000014000a2bb  mov        rax, rbx
000000014000a2be  mov        rbx, qword ptr [rsp + 0x30]
000000014000a2c3  add        rsp, 0x20
000000014000a2c7  pop        rdi
000000014000a2c8  ret        
000000014000a2c9  int3       
000000014000a2ca  int3       
000000014000a2cb  int3       
000000014000a2cc  mov        r11, rsp
000000014000a2cf  sub        rsp, 0x28
000000014000a2d3  mov        eax, 3
000000014000a2d8  lea        r9, [r11 + 0x10]
000000014000a2dc  lea        r8, [r11 + 8]
000000014000a2e0  mov        dword ptr [rsp + 0x38], eax
000000014000a2e4  lea        rdx, [r11 + 0x18]
000000014000a2e8  mov        dword ptr [rsp + 0x40], eax
000000014000a2ec  lea        rcx, [r11 + 8]
000000014000a2f0  call       0x14000a284
000000014000a2f5  add        rsp, 0x28
000000014000a2f9  ret        
000000014000a2fa  int3       
000000014000a2fb  int3       
000000014000a2fc  mov        qword ptr [rip + 0x10b15], rcx
000000014000a303  mov        qword ptr [rip + 0x10b16], rcx
000000014000a30a  mov        qword ptr [rip + 0x10b17], rcx
000000014000a311  mov        qword ptr [rip + 0x10b18], rcx
000000014000a318  ret        
000000014000a319  int3       
000000014000a31a  int3       
000000014000a31b  int3       
000000014000a31c  mov        qword ptr [rsp + 0x20], rbx
000000014000a321  push       rsi
000000014000a322  push       rdi
000000014000a323  push       r12
000000014000a325  push       r13
000000014000a327  push       r14
000000014000a329  sub        rsp, 0x40
000000014000a32d  mov        ebx, ecx
000000014000a32f  xor        r13d, r13d
000000014000a332  and        dword ptr [rsp + 0x78], r13d
000000014000a337  mov        r14b, 1
000000014000a33a  mov        byte ptr [rsp + 0x70], r14b
000000014000a33f  cmp        ecx, 2
000000014000a342  je         0x14000a365
000000014000a344  cmp        ecx, 4
000000014000a347  je         0x14000a395
000000014000a349  cmp        ecx, 6
000000014000a34c  je         0x14000a365
000000014000a34e  cmp        ecx, 8
000000014000a351  je         0x14000a395
000000014000a353  cmp        ecx, 0xb
000000014000a356  je         0x14000a395
000000014000a358  cmp        ecx, 0xf
000000014000a35b  je         0x14000a365
000000014000a35d  lea        eax, [rcx - 0x15]
000000014000a360  cmp        eax, 1
000000014000a363  ja         0x14000a3e2
000000014000a365  sub        ecx, 2
000000014000a368  je         0x14000a41d
000000014000a36e  sub        ecx, 4
000000014000a371  je         0x14000a402
000000014000a377  sub        ecx, 9
000000014000a37a  je         0x14000a414
000000014000a380  sub        ecx, 6
000000014000a383  je         0x14000a40b
000000014000a389  cmp        ecx, 1
000000014000a38c  je         0x14000a402
000000014000a38e  xor        edi, edi
000000014000a390  jmp        0x14000a424
000000014000a395  call       0x1400073dc
000000014000a39a  mov        r13, rax
000000014000a39d  test       rax, rax
000000014000a3a0  jne        0x14000a3ba
000000014000a3a2  or         eax, 0xffffffff
000000014000a3a5  mov        rbx, qword ptr [rsp + 0x88]
000000014000a3ad  add        rsp, 0x40
000000014000a3b1  pop        r14
000000014000a3b3  pop        r13
000000014000a3b5  pop        r12
000000014000a3b7  pop        rdi
000000014000a3b8  pop        rsi
000000014000a3b9  ret        
000000014000a3ba  mov        rax, qword ptr [rax]
000000014000a3bd  mov        rcx, qword ptr [rip + 0x600c]
000000014000a3c4  shl        rcx, 4
000000014000a3c8  add        rcx, rax
000000014000a3cb  jmp        0x14000a3d6
000000014000a3cd  cmp        dword ptr [rax + 4], ebx
000000014000a3d0  je         0x14000a3dd
000000014000a3d2  add        rax, 0x10
000000014000a3d6  cmp        rax, rcx
000000014000a3d9  jne        0x14000a3cd
000000014000a3db  xor        eax, eax
000000014000a3dd  test       rax, rax
000000014000a3e0  jne        0x14000a3f4
000000014000a3e2  call       0x140006ec0
000000014000a3e7  mov        dword ptr [rax], 0x16
000000014000a3ed  call       0x140006ce4
000000014000a3f2  jmp        0x14000a3a2
000000014000a3f4  lea        rdi, [rax + 8]
000000014000a3f8  xor        r14b, r14b
000000014000a3fb  mov        byte ptr [rsp + 0x70], r14b
000000014000a400  jmp        0x14000a424
000000014000a402  lea        rdi, [rip + 0x10a1f]
000000014000a409  jmp        0x14000a424
000000014000a40b  lea        rdi, [rip + 0x10a0e]
000000014000a412  jmp        0x14000a424
000000014000a414  lea        rdi, [rip + 0x10a15]
000000014000a41b  jmp        0x14000a424
000000014000a41d  lea        rdi, [rip + 0x109f4]
000000014000a424  and        qword ptr [rsp + 0x80], 0
000000014000a42d  test       r14b, r14b
000000014000a430  je         0x14000a43d
000000014000a432  mov        ecx, 3
000000014000a437  call       0x1400089b8
000000014000a43c  nop        
000000014000a43d  mov        rsi, qword ptr [rdi]
000000014000a440  test       r14b, r14b
000000014000a443  je         0x14000a457
000000014000a445  mov        rax, qword ptr [rip + 0xec7c]
000000014000a44c  mov        ecx, eax
000000014000a44e  and        ecx, 0x3f
000000014000a451  xor        rsi, rax
000000014000a454  ror        rsi, cl
000000014000a457  cmp        rsi, 1
000000014000a45b  je         0x14000a4f5
000000014000a461  test       rsi, rsi
000000014000a464  je         0x14000a56d
000000014000a46a  mov        r12d, 0x910
000000014000a470  cmp        ebx, 0xb
000000014000a473  ja         0x14000a4b2
000000014000a475  bt         r12d, ebx
000000014000a479  jae        0x14000a4b2
000000014000a47b  mov        rax, qword ptr [r13 + 8]
000000014000a47f  mov        qword ptr [rsp + 0x80], rax
000000014000a487  mov        qword ptr [rsp + 0x30], rax
000000014000a48c  and        qword ptr [r13 + 8], 0
000000014000a491  cmp        ebx, 8
000000014000a494  jne        0x14000a4e9
000000014000a496  call       0x140007260
000000014000a49b  mov        eax, dword ptr [rax + 0x10]
000000014000a49e  mov        dword ptr [rsp + 0x78], eax
000000014000a4a2  mov        dword ptr [rsp + 0x20], eax
000000014000a4a6  call       0x140007260
000000014000a4ab  mov        dword ptr [rax + 0x10], 0x8c
000000014000a4b2  cmp        ebx, 8
000000014000a4b5  jne        0x14000a4e9
000000014000a4b7  mov        rax, qword ptr [rip + 0x5f1a]
000000014000a4be  shl        rax, 4
000000014000a4c2  add        rax, qword ptr [r13]
000000014000a4c6  mov        rcx, qword ptr [rip + 0x5f13]
000000014000a4cd  shl        rcx, 4
000000014000a4d1  add        rcx, rax
000000014000a4d4  mov        qword ptr [rsp + 0x28], rax
000000014000a4d9  cmp        rax, rcx
000000014000a4dc  je         0x14000a4fb
000000014000a4de  and        qword ptr [rax + 8], 0
000000014000a4e3  add        rax, 0x10
000000014000a4e7  jmp        0x14000a4d4
000000014000a4e9  mov        rax, qword ptr [rip + 0xebd8]
000000014000a4f0  mov        qword ptr [rdi], rax
000000014000a4f3  jmp        0x14000a4fb
000000014000a4f5  mov        r12d, 0x910
000000014000a4fb  test       r14b, r14b
000000014000a4fe  je         0x14000a50a
000000014000a500  mov        ecx, 3
000000014000a505  call       0x140008a18
000000014000a50a  cmp        rsi, 1
000000014000a50e  jne        0x14000a517
000000014000a510  xor        eax, eax
000000014000a512  jmp        0x14000a3a5
000000014000a517  cmp        ebx, 8
000000014000a51a  jne        0x14000a535
000000014000a51c  call       0x140007260
000000014000a521  mov        edx, dword ptr [rax + 0x10]
000000014000a524  mov        ecx, ebx
000000014000a526  mov        rax, rsi
000000014000a529  mov        r8, qword ptr [rip + 0x3d60]
000000014000a530  call       r8
000000014000a533  jmp        0x14000a543
000000014000a535  mov        ecx, ebx
000000014000a537  mov        rax, rsi
000000014000a53a  mov        rdx, qword ptr [rip + 0x3d4f]
000000014000a541  call       rdx
000000014000a543  cmp        ebx, 0xb
000000014000a546  ja         0x14000a510
000000014000a548  bt         r12d, ebx
000000014000a54c  jae        0x14000a510
000000014000a54e  mov        rax, qword ptr [rsp + 0x80]
000000014000a556  mov        qword ptr [r13 + 8], rax
000000014000a55a  cmp        ebx, 8
000000014000a55d  jne        0x14000a510
000000014000a55f  call       0x140007260
000000014000a564  mov        ecx, dword ptr [rsp + 0x78]
000000014000a568  mov        dword ptr [rax + 0x10], ecx
000000014000a56b  jmp        0x14000a510
000000014000a56d  test       r14b, r14b
000000014000a570  je         0x14000a57a
000000014000a572  lea        ecx, [rsi + 3]
000000014000a575  call       0x140008a18
000000014000a57a  mov        ecx, 3
000000014000a57f  call       0x14000621c
000000014000a584  nop        
000000014000a585  int3       
000000014000a586  int3       
000000014000a587  int3       
000000014000a588  mov        qword ptr [rsp + 8], rbx
000000014000a58d  mov        qword ptr [rsp + 0x20], r9
000000014000a592  push       rdi
000000014000a593  sub        rsp, 0x20
000000014000a597  mov        rdi, r9
000000014000a59a  mov        rbx, r8
000000014000a59d  mov        rcx, qword ptr [rdx]
000000014000a5a0  call       0x14000a9bc
000000014000a5a5  nop        
000000014000a5a6  mov        rdx, qword ptr [rbx + 8]
000000014000a5aa  mov        rax, qword ptr [rbx]
000000014000a5ad  mov        rax, qword ptr [rax]
000000014000a5b0  test       rax, rax
000000014000a5b3  je         0x14000a60f
000000014000a5b5  mov        ecx, dword ptr [rax + 0x14]
000000014000a5b8  mov        eax, ecx
000000014000a5ba  shr        eax, 0xd
000000014000a5bd  test       al, 1
000000014000a5bf  je         0x14000a60f
000000014000a5c1  mov        eax, ecx
000000014000a5c3  and        al, 3
000000014000a5c5  cmp        al, 2
000000014000a5c7  jne        0x14000a5ce
000000014000a5c9  test       cl, 0xc0
000000014000a5cc  jne        0x14000a5d8
000000014000a5ce  bt         ecx, 0xb
000000014000a5d2  jb         0x14000a5d8
000000014000a5d4  inc        dword ptr [rdx]
000000014000a5d6  jmp        0x14000a60f
000000014000a5d8  mov        rax, qword ptr [rbx + 0x10]
000000014000a5dc  cmp        byte ptr [rax], 0
000000014000a5df  jne        0x14000a5f0
000000014000a5e1  mov        rax, qword ptr [rbx]
000000014000a5e4  mov        rcx, qword ptr [rax]
000000014000a5e7  mov        eax, dword ptr [rcx + 0x14]
000000014000a5ea  shr        eax, 1
000000014000a5ec  test       al, 1
000000014000a5ee  je         0x14000a60f
000000014000a5f0  mov        rax, qword ptr [rbx]
000000014000a5f3  mov        rcx, qword ptr [rax]
000000014000a5f6  call       0x14000a7e0
000000014000a5fb  cmp        eax, -1
000000014000a5fe  je         0x14000a608
000000014000a600  mov        rax, qword ptr [rbx + 8]
000000014000a604  inc        dword ptr [rax]
000000014000a606  jmp        0x14000a60f
000000014000a608  mov        rax, qword ptr [rbx + 0x18]
000000014000a60c  or         dword ptr [rax], 0xffffffff
000000014000a60f  mov        rcx, qword ptr [rdi]
000000014000a612  call       0x14000a9c8
000000014000a617  mov        rbx, qword ptr [rsp + 0x30]
000000014000a61c  add        rsp, 0x20
000000014000a620  pop        rdi
000000014000a621  ret        
000000014000a622  int3       
000000014000a623  int3       
000000014000a624  mov        qword ptr [rsp + 8], rbx
000000014000a629  mov        qword ptr [rsp + 0x20], r9
000000014000a62e  push       rsi
000000014000a62f  push       rdi
000000014000a630  push       r14
000000014000a632  sub        rsp, 0x60
000000014000a636  mov        rsi, r9
000000014000a639  mov        rdi, r8
000000014000a63c  mov        ecx, dword ptr [rdx]
000000014000a63e  call       0x1400089b8
000000014000a643  nop        
000000014000a644  mov        rbx, qword ptr [rip + 0x107f5]
000000014000a64b  movsxd     rax, dword ptr [rip + 0x107e6]
000000014000a652  lea        r14, [rbx + rax*8]
000000014000a656  mov        qword ptr [rsp + 0x38], rbx
000000014000a65b  cmp        rbx, r14
000000014000a65e  je         0x14000a6ec
000000014000a664  mov        rax, qword ptr [rbx]
000000014000a667  mov        qword ptr [rsp + 0x20], rax
000000014000a66c  mov        rdx, qword ptr [rdi]
000000014000a66f  test       rax, rax
000000014000a672  je         0x14000a695
000000014000a674  mov        ecx, dword ptr [rax + 0x14]
000000014000a677  mov        eax, ecx
000000014000a679  shr        eax, 0xd
000000014000a67c  test       al, 1
000000014000a67e  je         0x14000a695
000000014000a680  mov        eax, ecx
000000014000a682  and        al, 3
000000014000a684  cmp        al, 2
000000014000a686  jne        0x14000a68d
000000014000a688  test       cl, 0xc0
000000014000a68b  jne        0x14000a69b
000000014000a68d  bt         ecx, 0xb
000000014000a691  jb         0x14000a69b
000000014000a693  inc        dword ptr [rdx]
000000014000a695  add        rbx, 8
000000014000a699  jmp        0x14000a656
000000014000a69b  mov        rdx, qword ptr [rdi + 0x10]
000000014000a69f  mov        rcx, qword ptr [rdi + 8]
000000014000a6a3  mov        rax, qword ptr [rdi]
000000014000a6a6  lea        r8, [rsp + 0x20]
000000014000a6ab  mov        qword ptr [rsp + 0x40], r8
000000014000a6b0  mov        qword ptr [rsp + 0x48], rax
000000014000a6b5  mov        qword ptr [rsp + 0x50], rcx
000000014000a6ba  mov        qword ptr [rsp + 0x58], rdx
000000014000a6bf  mov        rax, qword ptr [rsp + 0x20]
000000014000a6c4  mov        qword ptr [rsp + 0x28], rax
000000014000a6c9  mov        qword ptr [rsp + 0x30], rax
000000014000a6ce  lea        r9, [rsp + 0x28]
000000014000a6d3  lea        r8, [rsp + 0x40]
000000014000a6d8  lea        rdx, [rsp + 0x30]
000000014000a6dd  lea        rcx, [rsp + 0x88]
000000014000a6e5  call       0x14000a588
000000014000a6ea  jmp        0x14000a695
000000014000a6ec  mov        ecx, dword ptr [rsi]
000000014000a6ee  call       0x140008a18
000000014000a6f3  mov        rbx, qword ptr [rsp + 0x80]
000000014000a6fb  add        rsp, 0x60
000000014000a6ff  pop        r14
000000014000a701  pop        rdi
000000014000a702  pop        rsi
000000014000a703  ret        
000000014000a704  mov        byte ptr [rsp + 8], cl
000000014000a708  push       rbp
000000014000a709  mov        rbp, rsp
000000014000a70c  sub        rsp, 0x40
000000014000a710  and        dword ptr [rbp + 0x28], 0
000000014000a714  lea        rax, [rbp + 0x28]
000000014000a718  and        dword ptr [rbp + 0x20], 0
000000014000a71c  lea        r9, [rbp - 0x20]
000000014000a720  mov        qword ptr [rbp - 0x18], rax
000000014000a724  lea        r8, [rbp - 0x18]
000000014000a728  lea        rax, [rbp + 0x10]
000000014000a72c  mov        qword ptr [rbp - 0x10], rax
000000014000a730  lea        rdx, [rbp - 0x1c]
000000014000a734  lea        rax, [rbp + 0x20]
000000014000a738  mov        qword ptr [rbp - 8], rax
000000014000a73c  lea        rcx, [rbp + 0x18]
000000014000a740  mov        eax, 8
000000014000a745  mov        dword ptr [rbp - 0x20], eax
000000014000a748  mov        dword ptr [rbp - 0x1c], eax
000000014000a74b  call       0x14000a624
000000014000a750  cmp        byte ptr [rbp + 0x10], 0
000000014000a754  mov        eax, dword ptr [rbp + 0x20]
000000014000a757  cmovne     eax, dword ptr [rbp + 0x28]
000000014000a75b  add        rsp, 0x40
000000014000a75f  pop        rbp
000000014000a760  ret        
000000014000a761  int3       
000000014000a762  int3       
000000014000a763  int3       
000000014000a764  mov        qword ptr [rsp + 8], rbx
000000014000a769  mov        qword ptr [rsp + 0x10], rsi
000000014000a76e  push       rdi
000000014000a76f  sub        rsp, 0x20
000000014000a773  mov        rbx, rcx
000000014000a776  mov        ecx, dword ptr [rcx + 0x14]
000000014000a779  mov        eax, ecx
000000014000a77b  and        al, 3
000000014000a77d  cmp        al, 2
000000014000a77f  jne        0x14000a7cc
000000014000a781  test       cl, 0xc0
000000014000a784  je         0x14000a7cc
000000014000a786  mov        edi, dword ptr [rbx]
000000014000a788  sub        edi, dword ptr [rbx + 8]
000000014000a78b  and        dword ptr [rbx + 0x10], 0
000000014000a78f  mov        rsi, qword ptr [rbx + 8]
000000014000a793  mov        qword ptr [rbx], rsi
000000014000a796  test       edi, edi
000000014000a798  jle        0x14000a7cc
000000014000a79a  mov        rcx, rbx
000000014000a79d  call       0x14000ab5c
000000014000a7a2  mov        ecx, eax
000000014000a7a4  mov        r8d, edi
000000014000a7a7  mov        rdx, rsi
000000014000a7aa  call       0x14000bec8
000000014000a7af  cmp        edi, eax
000000014000a7b1  je         0x14000a7bd
000000014000a7b3  lock or    dword ptr [rbx + 0x14], 0x10
000000014000a7b8  or         eax, 0xffffffff
000000014000a7bb  jmp        0x14000a7ce
000000014000a7bd  mov        eax, dword ptr [rbx + 0x14]
000000014000a7c0  shr        eax, 2
000000014000a7c3  test       al, 1
000000014000a7c5  je         0x14000a7cc
000000014000a7c7  lock and   dword ptr [rbx + 0x14], 0xfffffffd
000000014000a7cc  xor        eax, eax
000000014000a7ce  mov        rbx, qword ptr [rsp + 0x30]
000000014000a7d3  mov        rsi, qword ptr [rsp + 0x38]
000000014000a7d8  add        rsp, 0x20
000000014000a7dc  pop        rdi
000000014000a7dd  ret        
000000014000a7de  int3       
000000014000a7df  int3       
000000014000a7e0  push       rbx
000000014000a7e2  sub        rsp, 0x20
000000014000a7e6  mov        rbx, rcx
000000014000a7e9  test       rcx, rcx
000000014000a7ec  jne        0x14000a7f8
000000014000a7ee  add        rsp, 0x20
000000014000a7f2  pop        rbx
000000014000a7f3  jmp        0x14000a704
000000014000a7f8  call       0x14000a764
000000014000a7fd  test       eax, eax
000000014000a7ff  jne        0x14000a822
000000014000a801  mov        eax, dword ptr [rbx + 0x14]
000000014000a804  shr        eax, 0xb
000000014000a807  test       al, 1
000000014000a809  je         0x14000a81e
000000014000a80b  mov        rcx, rbx
000000014000a80e  call       0x14000ab5c
000000014000a813  mov        ecx, eax
000000014000a815  call       0x14000b5b8
000000014000a81a  test       eax, eax
000000014000a81c  jne        0x14000a822
000000014000a81e  xor        eax, eax
000000014000a820  jmp        0x14000a825
000000014000a822  or         eax, 0xffffffff
000000014000a825  add        rsp, 0x20
000000014000a829  pop        rbx
000000014000a82a  ret        
000000014000a82b  int3       
000000014000a82c  mov        cl, 1
000000014000a82e  jmp        0x14000a704
000000014000a833  int3       
000000014000a834  int3       
000000014000a835  int3       
000000014000a836  int3       
000000014000a837  int3       
000000014000a838  int3       
000000014000a839  int3       
000000014000a83a  int3       
000000014000a83b  int3       
000000014000a83c  int3       
000000014000a83d  int3       
000000014000a83e  int3       
000000014000a83f  int3       
000000014000a840  mov        rax, rsp
000000014000a843  mov        qword ptr [rax + 8], rbx
000000014000a847  mov        qword ptr [rax + 0x10], rbp
000000014000a84b  mov        qword ptr [rax + 0x18], rsi
000000014000a84f  mov        qword ptr [rax + 0x20], rdi
000000014000a853  push       r14
000000014000a855  sub        rsp, 0x20
000000014000a859  mov        eax, dword ptr [rip + 0x105d9]
000000014000a85f  xor        ebx, ebx
000000014000a861  mov        edi, 3
000000014000a866  test       eax, eax
000000014000a868  jne        0x14000a871
000000014000a86a  mov        eax, 0x200
000000014000a86f  jmp        0x14000a876
000000014000a871  cmp        eax, edi
000000014000a873  cmovl      eax, edi
000000014000a876  movsxd     rcx, eax
000000014000a879  mov        edx, 8
000000014000a87e  mov        dword ptr [rip + 0x105b4], eax
000000014000a884  call       0x1400076f8
000000014000a889  xor        ecx, ecx
000000014000a88b  mov        qword ptr [rip + 0x105ae], rax
000000014000a892  call       0x140007770
000000014000a897  cmp        qword ptr [rip + 0x105a2], rbx
000000014000a89e  jne        0x14000a8cf
000000014000a8a0  mov        edx, 8
000000014000a8a5  mov        dword ptr [rip + 0x1058d], edi
000000014000a8ab  mov        rcx, rdi
000000014000a8ae  call       0x1400076f8
000000014000a8b3  xor        ecx, ecx
000000014000a8b5  mov        qword ptr [rip + 0x10584], rax
000000014000a8bc  call       0x140007770
000000014000a8c1  cmp        qword ptr [rip + 0x10578], rbx
000000014000a8c8  jne        0x14000a8cf
000000014000a8ca  or         eax, 0xffffffff
000000014000a8cd  jmp        0x14000a944
000000014000a8cf  mov        rbp, rbx
000000014000a8d2  lea        rsi, [rip + 0xefcf]
000000014000a8d9  lea        r14, [rip + 0xefb0]
000000014000a8e0  lea        rcx, [r14 + 0x30]
000000014000a8e4  xor        r8d, r8d
000000014000a8e7  mov        edx, 0xfa0
000000014000a8ec  call       0x140009e74
000000014000a8f1  mov        rax, qword ptr [rip + 0x10548]
000000014000a8f8  lea        r8, [rip + 0xff41]
000000014000a8ff  mov        rdx, rbp
000000014000a902  sar        rdx, 6
000000014000a906  mov        qword ptr [rbx + rax], r14
000000014000a90a  mov        rax, rbp
000000014000a90d  and        eax, 0x3f
000000014000a910  lea        rcx, [rax + rax*8]
000000014000a914  mov        rax, qword ptr [r8 + rdx*8]
000000014000a918  mov        rcx, qword ptr [rax + rcx*8 + 0x28]
000000014000a91d  add        rcx, 2
000000014000a921  cmp        rcx, 2
000000014000a925  ja         0x14000a92d
000000014000a927  mov        dword ptr [rsi], 0xfffffffe
000000014000a92d  inc        rbp
000000014000a930  add        r14, 0x58
000000014000a934  add        rbx, 8
000000014000a938  add        rsi, 0x58
000000014000a93c  sub        rdi, 1
000000014000a940  jne        0x14000a8e0
000000014000a942  xor        eax, eax
000000014000a944  mov        rbx, qword ptr [rsp + 0x30]
000000014000a949  mov        rbp, qword ptr [rsp + 0x38]
000000014000a94e  mov        rsi, qword ptr [rsp + 0x40]
000000014000a953  mov        rdi, qword ptr [rsp + 0x48]
000000014000a958  add        rsp, 0x20
000000014000a95c  pop        r14
000000014000a95e  ret        
000000014000a95f  int3       
000000014000a960  push       rbx
000000014000a962  sub        rsp, 0x20
000000014000a966  call       0x14000a82c
000000014000a96b  call       0x14000c298
000000014000a970  xor        ebx, ebx
000000014000a972  mov        rcx, qword ptr [rip + 0x104c7]
000000014000a979  mov        rcx, qword ptr [rbx + rcx]
000000014000a97d  call       0x14000c34c
000000014000a982  mov        rax, qword ptr [rip + 0x104b7]
000000014000a989  mov        rcx, qword ptr [rbx + rax]
000000014000a98d  add        rcx, 0x30
000000014000a991  call       qword ptr [rip + 0x37d9] ; KERNEL32.dll!DeleteCriticalSection
000000014000a997  add        rbx, 8
000000014000a99b  cmp        rbx, 0x18
000000014000a99f  jne        0x14000a972
000000014000a9a1  mov        rcx, qword ptr [rip + 0x10498]
000000014000a9a8  call       0x140007770
000000014000a9ad  and        qword ptr [rip + 0x1048b], 0
000000014000a9b5  add        rsp, 0x20
000000014000a9b9  pop        rbx
000000014000a9ba  ret        
000000014000a9bb  int3       
000000014000a9bc  add        rcx, 0x30
000000014000a9c0  jmp        qword ptr [rip + 0x3799] ; KERNEL32.dll!EnterCriticalSection
000000014000a9c7  int3       
000000014000a9c8  add        rcx, 0x30
000000014000a9cc  jmp        qword ptr [rip + 0x3795] ; KERNEL32.dll!LeaveCriticalSection
000000014000a9d3  int3       
000000014000a9d4  mov        qword ptr [rsp + 8], rbx
000000014000a9d9  mov        qword ptr [rsp + 0x10], rbp
000000014000a9de  mov        qword ptr [rsp + 0x18], rsi
000000014000a9e3  push       rdi
000000014000a9e4  sub        rsp, 0x50
000000014000a9e8  xor        ebp, ebp
000000014000a9ea  mov        rsi, r8
000000014000a9ed  mov        rdi, rdx
000000014000a9f0  mov        rbx, rcx
000000014000a9f3  test       rdx, rdx
000000014000a9f6  je         0x14000ab34
000000014000a9fc  test       r8, r8
000000014000a9ff  je         0x14000ab34
000000014000aa05  cmp        byte ptr [rdx], bpl
000000014000aa08  jne        0x14000aa1b
000000014000aa0a  test       rcx, rcx
000000014000aa0d  je         0x14000ab3b
000000014000aa13  mov        word ptr [rcx], bp
000000014000aa16  jmp        0x14000ab3b
000000014000aa1b  mov        rdx, r9
000000014000aa1e  lea        rcx, [rsp + 0x30]
000000014000aa23  call       0x140005474
000000014000aa28  mov        rax, qword ptr [rsp + 0x38]
000000014000aa2d  cmp        dword ptr [rax + 0xc], 0xfde9
000000014000aa34  jne        0x14000aa58
000000014000aa36  lea        r9, [rip + 0x1041b]
000000014000aa3d  mov        r8, rsi
000000014000aa40  mov        rdx, rdi
000000014000aa43  mov        rcx, rbx
000000014000aa46  call       0x14000c438
000000014000aa4b  mov        rcx, rax
000000014000aa4e  or         eax, 0xffffffff
000000014000aa51  test       ecx, ecx
000000014000aa53  cmovs      ecx, eax
000000014000aa56  jmp        0x14000aa71 ; @8l$Ht
000000014000aa58  cmp        qword ptr [rax + 0x138], rbp
000000014000aa5f  jne        0x14000aa8b
000000014000aa61  test       rbx, rbx
000000014000aa64  je         0x14000aa6c
000000014000aa66  movzx      eax, byte ptr [rdi]
000000014000aa69  mov        word ptr [rbx], ax
000000014000aa6c  mov        ecx, 1
000000014000aa71  cmp        byte ptr [rsp + 0x48], bpl
000000014000aa76  je         0x14000aa84
000000014000aa78  mov        rax, qword ptr [rsp + 0x30]
000000014000aa7d  and        dword ptr [rax + 0x3a8], 0xfffffffd
000000014000aa84  mov        eax, ecx
000000014000aa86  jmp        0x14000ab3d
000000014000aa8b  movzx      ecx, byte ptr [rdi]
000000014000aa8e  lea        rdx, [rsp + 0x38]
000000014000aa93  call       0x14000c3ec
000000014000aa98  test       eax, eax
000000014000aa9a  je         0x14000aaee
000000014000aa9c  mov        rcx, qword ptr [rsp + 0x38]
000000014000aaa1  mov        r9d, dword ptr [rcx + 8]
000000014000aaa5  cmp        r9d, 1
000000014000aaa9  jle        0x14000aada
000000014000aaab  cmp        esi, r9d
000000014000aaae  jl         0x14000aada
000000014000aab0  mov        ecx, dword ptr [rcx + 0xc]
000000014000aab3  mov        eax, ebp
000000014000aab5  test       rbx, rbx
000000014000aab8  mov        r8, rdi
000000014000aabb  mov        edx, 9
000000014000aac0  setne      al
000000014000aac3  mov        dword ptr [rsp + 0x28], eax
000000014000aac7  mov        qword ptr [rsp + 0x20], rbx
000000014000aacc  call       0x1400087b8
000000014000aad1  mov        rcx, qword ptr [rsp + 0x38]
000000014000aad6  test       eax, eax
000000014000aad8  jne        0x14000aae9
000000014000aada  movsxd     rax, dword ptr [rcx + 8]
000000014000aade  cmp        rsi, rax
000000014000aae1  jb         0x14000ab21
000000014000aae3  cmp        byte ptr [rdi + 1], bpl
000000014000aae7  je         0x14000ab21
000000014000aae9  mov        ecx, dword ptr [rcx + 8]
000000014000aaec  jmp        0x14000aa71 ; @8l$Ht
000000014000aaee  mov        eax, ebp
000000014000aaf0  mov        r9d, 1
000000014000aaf6  test       rbx, rbx
000000014000aaf9  mov        r8, rdi
000000014000aafc  setne      al
000000014000aaff  mov        dword ptr [rsp + 0x28], eax
000000014000ab03  lea        edx, [r9 + 8]
000000014000ab07  mov        rax, qword ptr [rsp + 0x38]
000000014000ab0c  mov        qword ptr [rsp + 0x20], rbx
000000014000ab11  mov        ecx, dword ptr [rax + 0xc]
000000014000ab14  call       0x1400087b8
000000014000ab19  test       eax, eax
000000014000ab1b  jne        0x14000aa6c
000000014000ab21  call       0x140006ec0
000000014000ab26  or         ecx, 0xffffffff
000000014000ab29  mov        dword ptr [rax], 0x2a
000000014000ab2f  jmp        0x14000aa71 ; @8l$Ht
000000014000ab34  mov        qword ptr [rip + 0x1031d], rbp
000000014000ab3b  xor        eax, eax
000000014000ab3d  mov        rbx, qword ptr [rsp + 0x60]
000000014000ab42  mov        rbp, qword ptr [rsp + 0x68]
000000014000ab47  mov        rsi, qword ptr [rsp + 0x70]
000000014000ab4c  add        rsp, 0x50
000000014000ab50  pop        rdi
000000014000ab51  ret        
000000014000ab52  int3       
000000014000ab53  int3       
000000014000ab54  xor        r9d, r9d
000000014000ab57  jmp        0x14000a9d4
000000014000ab5c  sub        rsp, 0x28
000000014000ab60  test       rcx, rcx
000000014000ab63  jne        0x14000ab7a
000000014000ab65  call       0x140006ec0
000000014000ab6a  mov        dword ptr [rax], 0x16
000000014000ab70  call       0x140006ce4
000000014000ab75  or         eax, 0xffffffff
000000014000ab78  jmp        0x14000ab7d
000000014000ab7a  mov        eax, dword ptr [rcx + 0x18]
000000014000ab7d  add        rsp, 0x28
000000014000ab81  ret        
000000014000ab82  int3       
000000014000ab83  int3       
000000014000ab84  mov        qword ptr [rsp + 8], rbx
000000014000ab89  mov        qword ptr [rsp + 0x10], rbp
000000014000ab8e  mov        qword ptr [rsp + 0x18], rsi
000000014000ab93  push       rdi
000000014000ab94  sub        rsp, 0x50
000000014000ab98  movsxd     rbx, r9d
000000014000ab9b  mov        rdi, r8
000000014000ab9e  mov        esi, edx
000000014000aba0  mov        rbp, rcx
000000014000aba3  test       r9d, r9d
000000014000aba6  jle        0x14000abbc
000000014000aba8  mov        rdx, rbx
000000014000abab  mov        rcx, r8
000000014000abae  call       0x140009378
000000014000abb3  cmp        eax, ebx
000000014000abb5  lea        ebx, [rax + 1]
000000014000abb8  jl         0x14000abbc
000000014000abba  mov        ebx, eax
000000014000abbc  and        qword ptr [rsp + 0x40], 0
000000014000abc2  mov        r9d, ebx
000000014000abc5  and        qword ptr [rsp + 0x38], 0
000000014000abcb  mov        r8, rdi
000000014000abce  and        qword ptr [rsp + 0x30], 0
000000014000abd4  mov        edx, esi
000000014000abd6  mov        eax, dword ptr [rsp + 0x88]
000000014000abdd  mov        rcx, rbp
000000014000abe0  mov        dword ptr [rsp + 0x28], eax
000000014000abe4  mov        rax, qword ptr [rsp + 0x80]
000000014000abec  mov        qword ptr [rsp + 0x20], rax
000000014000abf1  call       0x140009ed8
000000014000abf6  mov        rbx, qword ptr [rsp + 0x60]
000000014000abfb  mov        rbp, qword ptr [rsp + 0x68]
000000014000ac00  mov        rsi, qword ptr [rsp + 0x70]
000000014000ac05  add        rsp, 0x50
000000014000ac09  pop        rdi
000000014000ac0a  ret        
000000014000ac0b  int3       
000000014000ac0c  int3       
000000014000ac0d  int3       
000000014000ac0e  int3       
000000014000ac0f  int3       
000000014000ac10  push       r12
000000014000ac12  push       r13
000000014000ac14  push       r14
000000014000ac16  sub        rsp, 0x450
000000014000ac1d  mov        rax, qword ptr [rip + 0xe4a4]
000000014000ac24  xor        rax, rsp
000000014000ac27  mov        qword ptr [rsp + 0x410], rax
000000014000ac2f  mov        r12, r9
000000014000ac32  mov        r14, r8
000000014000ac35  mov        r13, rcx
000000014000ac38  test       rcx, rcx
000000014000ac3b  jne        0x14000ac57
000000014000ac3d  test       rdx, rdx
000000014000ac40  je         0x14000ac57
000000014000ac42  call       0x140006ec0
000000014000ac47  mov        dword ptr [rax], 0x16
000000014000ac4d  call       0x140006ce4
000000014000ac52  jmp        0x14000af8f
000000014000ac57  test       r14, r14
000000014000ac5a  je         0x14000ac42
000000014000ac5c  test       r12, r12
000000014000ac5f  je         0x14000ac42
000000014000ac61  cmp        rdx, 2
000000014000ac65  jb         0x14000af8f
000000014000ac6b  mov        qword ptr [rsp + 0x448], rbx
000000014000ac73  mov        qword ptr [rsp + 0x440], rbp
000000014000ac7b  mov        qword ptr [rsp + 0x438], rsi
000000014000ac83  mov        qword ptr [rsp + 0x430], rdi
000000014000ac8b  mov        qword ptr [rsp + 0x428], r15
000000014000ac93  lea        r15, [rdx - 1]
000000014000ac97  imul       r15, r14
000000014000ac9b  add        r15, rcx
000000014000ac9e  xor        ecx, ecx
000000014000aca0  mov        qword ptr [rsp + 0x20], rcx
000000014000aca5  nop        word ptr [rax + rax]
000000014000acb0  xor        edx, edx
000000014000acb2  mov        rax, r15
000000014000acb5  sub        rax, r13
000000014000acb8  div        r14
000000014000acbb  lea        rbx, [rax + 1]
000000014000acbf  cmp        rbx, 8
000000014000acc3  ja         0x14000ad54
000000014000acc9  cmp        r15, r13
000000014000accc  jbe        0x14000ad33
000000014000acce  lea        rsi, [r14 + r13]
000000014000acd2  mov        rbx, r13
000000014000acd5  mov        rdi, rsi
000000014000acd8  cmp        rsi, r15
000000014000acdb  ja         0x14000acfd
000000014000acdd  nop        dword ptr [rax]
000000014000ace0  mov        rdx, rbx
000000014000ace3  mov        rcx, rdi
000000014000ace6  mov        rax, r12
000000014000ace9  call       qword ptr [rip + 0x35a1]
000000014000acef  test       eax, eax
000000014000acf1  cmovg      rbx, rdi
000000014000acf5  add        rdi, r14
000000014000acf8  cmp        rdi, r15
000000014000acfb  jbe        0x14000ace0
000000014000acfd  mov        r8, r14
000000014000ad00  mov        rdx, r15
000000014000ad03  cmp        rbx, r15
000000014000ad06  je         0x14000ad26
000000014000ad08  sub        rbx, r15
000000014000ad0b  nop        dword ptr [rax + rax]
000000014000ad10  movzx      eax, byte ptr [rdx]
000000014000ad13  movzx      ecx, byte ptr [rbx + rdx]
000000014000ad17  mov        byte ptr [rbx + rdx], al
000000014000ad1a  mov        byte ptr [rdx], cl
000000014000ad1c  lea        rdx, [rdx + 1]
000000014000ad20  sub        r8, 1
000000014000ad24  jne        0x14000ad10
000000014000ad26  sub        r15, r14
000000014000ad29  cmp        r15, r13
000000014000ad2c  ja         0x14000acd2
000000014000ad2e  mov        rcx, qword ptr [rsp + 0x20]
000000014000ad33  sub        rcx, 1
000000014000ad37  mov        qword ptr [rsp + 0x20], rcx
000000014000ad3c  js         0x14000af67
000000014000ad42  mov        r13, qword ptr [rsp + rcx*8 + 0x30]
000000014000ad47  mov        r15, qword ptr [rsp + rcx*8 + 0x220]
000000014000ad4f  jmp        0x14000acb0
000000014000ad54  shr        rbx, 1
000000014000ad57  mov        rcx, r13
000000014000ad5a  imul       rbx, r14
000000014000ad5e  mov        rax, r12
000000014000ad61  lea        rsi, [rbx + r13]
000000014000ad65  mov        rdx, rsi
000000014000ad68  call       qword ptr [rip + 0x3522]
000000014000ad6e  test       eax, eax
000000014000ad70  jle        0x14000ad9b
000000014000ad72  mov        r9, r14
000000014000ad75  mov        r8, rsi
000000014000ad78  cmp        r13, rsi
000000014000ad7b  je         0x14000ad9b
000000014000ad7d  nop        dword ptr [rax]
000000014000ad80  movzx      eax, byte ptr [r8]
000000014000ad84  mov        rdx, r8
000000014000ad87  sub        rdx, rbx
000000014000ad8a  movzx      ecx, byte ptr [rdx]
000000014000ad8d  mov        byte ptr [rdx], al
000000014000ad8f  mov        byte ptr [r8], cl
000000014000ad92  inc        r8
000000014000ad95  sub        r9, 1
000000014000ad99  jne        0x14000ad80
000000014000ad9b  mov        rdx, r15
000000014000ad9e  mov        rcx, r13
000000014000ada1  mov        rax, r12
000000014000ada4  call       qword ptr [rip + 0x34e6]
000000014000adaa  test       eax, eax
000000014000adac  jle        0x14000add8
000000014000adae  mov        r8, r14
000000014000adb1  mov        rdx, r15
000000014000adb4  cmp        r13, r15
000000014000adb7  je         0x14000add8
000000014000adb9  mov        r9, r13
000000014000adbc  sub        r9, r15
000000014000adbf  nop        
000000014000adc0  movzx      eax, byte ptr [rdx]
000000014000adc3  movzx      ecx, byte ptr [r9 + rdx]
000000014000adc8  mov        byte ptr [r9 + rdx], al
000000014000adcc  mov        byte ptr [rdx], cl
000000014000adce  lea        rdx, [rdx + 1]
000000014000add2  sub        r8, 1
000000014000add6  jne        0x14000adc0
000000014000add8  mov        rdx, r15
000000014000addb  mov        rcx, rsi
000000014000adde  mov        rax, r12
000000014000ade1  call       qword ptr [rip + 0x34a9]
000000014000ade7  test       eax, eax
000000014000ade9  jle        0x14000ae18
000000014000adeb  mov        r8, r14
000000014000adee  mov        rdx, r15
000000014000adf1  cmp        rsi, r15
000000014000adf4  je         0x14000ae18
000000014000adf6  mov        r9, rsi
000000014000adf9  sub        r9, r15
000000014000adfc  nop        dword ptr [rax]
000000014000ae00  movzx      eax, byte ptr [rdx]
000000014000ae03  movzx      ecx, byte ptr [r9 + rdx]
000000014000ae08  mov        byte ptr [r9 + rdx], al
000000014000ae0c  mov        byte ptr [rdx], cl
000000014000ae0e  lea        rdx, [rdx + 1]
000000014000ae12  sub        r8, 1
000000014000ae16  jne        0x14000ae00
000000014000ae18  mov        rbx, r13
000000014000ae1b  mov        rdi, r15
000000014000ae1e  nop        
000000014000ae20  cmp        rsi, rbx
000000014000ae23  jbe        0x14000ae42
000000014000ae25  add        rbx, r14
000000014000ae28  cmp        rbx, rsi
000000014000ae2b  jae        0x14000ae42
000000014000ae2d  mov        rdx, rsi
000000014000ae30  mov        rcx, rbx
000000014000ae33  mov        rax, r12
000000014000ae36  call       qword ptr [rip + 0x3454]
000000014000ae3c  test       eax, eax
000000014000ae3e  jle        0x14000ae25
000000014000ae40  jmp        0x14000ae60
000000014000ae42  add        rbx, r14
000000014000ae45  cmp        rbx, r15
000000014000ae48  ja         0x14000ae60
000000014000ae4a  mov        rdx, rsi
000000014000ae4d  mov        rcx, rbx
000000014000ae50  mov        rax, r12
000000014000ae53  call       qword ptr [rip + 0x3437]
000000014000ae59  test       eax, eax
000000014000ae5b  jle        0x14000ae42
000000014000ae5d  nop        dword ptr [rax]
000000014000ae60  mov        rbp, rdi
000000014000ae63  sub        rdi, r14
000000014000ae66  cmp        rdi, rsi
000000014000ae69  jbe        0x14000ae7e
000000014000ae6b  mov        rdx, rsi
000000014000ae6e  mov        rcx, rdi
000000014000ae71  mov        rax, r12
000000014000ae74  call       qword ptr [rip + 0x3416]
000000014000ae7a  test       eax, eax
000000014000ae7c  jg         0x14000ae60
000000014000ae7e  cmp        rdi, rbx
000000014000ae81  jb         0x14000aebb
000000014000ae83  mov        r8, r14
000000014000ae86  mov        rdx, rdi
000000014000ae89  je         0x14000aea9
000000014000ae8b  mov        r9, rbx
000000014000ae8e  sub        r9, rdi
000000014000ae91  movzx      eax, byte ptr [rdx]
000000014000ae94  movzx      ecx, byte ptr [r9 + rdx]
000000014000ae99  mov        byte ptr [r9 + rdx], al
000000014000ae9d  mov        byte ptr [rdx], cl
000000014000ae9f  lea        rdx, [rdx + 1]
000000014000aea3  sub        r8, 1
000000014000aea7  jne        0x14000ae91
000000014000aea9  cmp        rsi, rdi
000000014000aeac  mov        rax, rbx
000000014000aeaf  cmovne     rax, rsi
000000014000aeb3  mov        rsi, rax
000000014000aeb6  jmp        0x14000ae20
000000014000aebb  cmp        rsi, rbp
000000014000aebe  jae        0x14000aee0
000000014000aec0  sub        rbp, r14
000000014000aec3  cmp        rbp, rsi
000000014000aec6  jbe        0x14000aee0
000000014000aec8  mov        rdx, rsi
000000014000aecb  mov        rcx, rbp
000000014000aece  mov        rax, r12
000000014000aed1  call       qword ptr [rip + 0x33b9]
000000014000aed7  test       eax, eax
000000014000aed9  je         0x14000aec0
000000014000aedb  jmp        0x14000aefb
000000014000aedd  nop        dword ptr [rax]
000000014000aee0  sub        rbp, r14
000000014000aee3  cmp        rbp, r13
000000014000aee6  jbe        0x14000aefb
000000014000aee8  mov        rdx, rsi
000000014000aeeb  mov        rcx, rbp
000000014000aeee  mov        rax, r12
000000014000aef1  call       qword ptr [rip + 0x3399]
000000014000aef7  test       eax, eax
000000014000aef9  je         0x14000aee0
000000014000aefb  mov        rcx, r15
000000014000aefe  mov        rax, rbp
000000014000af01  sub        rcx, rbx
000000014000af04  sub        rax, r13
000000014000af07  cmp        rax, rcx
000000014000af0a  mov        rcx, qword ptr [rsp + 0x20]
000000014000af0f  jl         0x14000af3c
000000014000af11  cmp        r13, rbp
000000014000af14  jae        0x14000af2b
000000014000af16  mov        qword ptr [rsp + rcx*8 + 0x30], r13
000000014000af1b  mov        qword ptr [rsp + rcx*8 + 0x220], rbp
000000014000af23  inc        rcx
000000014000af26  mov        qword ptr [rsp + 0x20], rcx
000000014000af2b  cmp        rbx, r15
000000014000af2e  jae        0x14000ad33
000000014000af34  mov        r13, rbx
000000014000af37  jmp        0x14000acb0
000000014000af3c  cmp        rbx, r15
000000014000af3f  jae        0x14000af56
000000014000af41  mov        qword ptr [rsp + rcx*8 + 0x30], rbx
000000014000af46  mov        qword ptr [rsp + rcx*8 + 0x220], r15
000000014000af4e  inc        rcx
000000014000af51  mov        qword ptr [rsp + 0x20], rcx
000000014000af56  cmp        r13, rbp
000000014000af59  jae        0x14000ad33
000000014000af5f  mov        r15, rbp
000000014000af62  jmp        0x14000acb0
000000014000af67  mov        rdi, qword ptr [rsp + 0x430]
000000014000af6f  mov        rsi, qword ptr [rsp + 0x438]
000000014000af77  mov        rbp, qword ptr [rsp + 0x440]
000000014000af7f  mov        rbx, qword ptr [rsp + 0x448]
000000014000af87  mov        r15, qword ptr [rsp + 0x428]
000000014000af8f  mov        rcx, qword ptr [rsp + 0x410]
000000014000af97  xor        rcx, rsp
000000014000af9a  call       0x1400037e0
000000014000af9f  add        rsp, 0x450
000000014000afa6  pop        r14
000000014000afa8  pop        r13
000000014000afaa  pop        r12
000000014000afac  ret        
000000014000afad  int3       
000000014000afae  int3       
000000014000afaf  int3       
000000014000afb0  push       rbp
000000014000afb2  push       r12
000000014000afb4  push       r13
000000014000afb6  push       r14
000000014000afb8  push       r15
000000014000afba  sub        rsp, 0x60
000000014000afbe  lea        rbp, [rsp + 0x50]
000000014000afc3  mov        qword ptr [rbp + 0x40], rbx
000000014000afc7  mov        qword ptr [rbp + 0x48], rsi
000000014000afcb  mov        qword ptr [rbp + 0x50], rdi
000000014000afcf  mov        rax, qword ptr [rip + 0xe0f2]
000000014000afd6  xor        rax, rbp
000000014000afd9  mov        qword ptr [rbp + 8], rax
000000014000afdd  movsxd     rbx, dword ptr [rbp + 0x60]
000000014000afe1  mov        r15, r9
000000014000afe4  mov        qword ptr [rbp], rdx
000000014000afe8  mov        r13d, r8d
000000014000afeb  mov        rdi, rcx
000000014000afee  test       ebx, ebx
000000014000aff0  jle        0x14000b006
000000014000aff2  mov        rdx, rbx
000000014000aff5  mov        rcx, r9
000000014000aff8  call       0x14000c5ec
000000014000affd  cmp        eax, ebx
000000014000afff  lea        ebx, [rax + 1]
000000014000b002  jl         0x14000b006
000000014000b004  mov        ebx, eax
000000014000b006  mov        r14d, dword ptr [rbp + 0x78]
000000014000b00a  test       r14d, r14d
000000014000b00d  jne        0x14000b016
000000014000b00f  mov        rax, qword ptr [rdi]
000000014000b012  mov        r14d, dword ptr [rax + 0xc]
000000014000b016  neg        dword ptr [rbp + 0x80]
000000014000b01c  mov        r9d, ebx
000000014000b01f  mov        r8, r15
000000014000b022  mov        ecx, r14d
000000014000b025  sbb        edx, edx
000000014000b027  and        dword ptr [rsp + 0x28], 0
000000014000b02c  and        qword ptr [rsp + 0x20], 0
000000014000b032  and        edx, 8
000000014000b035  inc        edx
000000014000b037  call       0x1400087b8
000000014000b03c  movsxd     r12, eax
000000014000b03f  test       eax, eax
000000014000b041  je         0x14000b27d
000000014000b047  mov        rax, r12
000000014000b04a  movabs     r8, 0xffffffffffffff0
000000014000b054  add        rax, rax
000000014000b057  lea        rcx, [rax + 0x10]
000000014000b05b  cmp        rax, rcx
000000014000b05e  sbb        rdx, rdx
000000014000b061  and        rdx, rcx
000000014000b064  je         0x14000b0b9
000000014000b066  cmp        rdx, 0x400
000000014000b06d  ja         0x14000b09d
000000014000b06f  lea        rax, [rdx + 0xf]
000000014000b073  cmp        rax, rdx
000000014000b076  ja         0x14000b07b
000000014000b078  mov        rax, r8
000000014000b07b  and        rax, 0xfffffffffffffff0
000000014000b07f  call       0x140003780
000000014000b084  sub        rsp, rax
000000014000b087  lea        rsi, [rsp + 0x50]
000000014000b08c  test       rsi, rsi
000000014000b08f  je         0x14000b263
000000014000b095  mov        dword ptr [rsi], 0xcccc
000000014000b09b  jmp        0x14000b0b3
000000014000b09d  mov        rcx, rdx
000000014000b0a0  call       0x140009318
000000014000b0a5  mov        rsi, rax
000000014000b0a8  test       rax, rax
000000014000b0ab  je         0x14000b0bb
000000014000b0ad  mov        dword ptr [rax], 0xdddd
000000014000b0b3  add        rsi, 0x10
000000014000b0b7  jmp        0x14000b0bb
000000014000b0b9  xor        esi, esi
000000014000b0bb  test       rsi, rsi
000000014000b0be  je         0x14000b263
000000014000b0c4  mov        dword ptr [rsp + 0x28], r12d
000000014000b0c9  mov        r9d, ebx
000000014000b0cc  mov        r8, r15
000000014000b0cf  mov        qword ptr [rsp + 0x20], rsi
000000014000b0d4  mov        edx, 1
000000014000b0d9  mov        ecx, r14d
000000014000b0dc  call       0x1400087b8
000000014000b0e1  test       eax, eax
000000014000b0e3  je         0x14000b263
000000014000b0e9  and        qword ptr [rsp + 0x40], 0
000000014000b0ef  mov        r9d, r12d
000000014000b0f2  and        qword ptr [rsp + 0x38], 0
000000014000b0f8  mov        r8, rsi
000000014000b0fb  and        qword ptr [rsp + 0x30], 0
000000014000b101  mov        edx, r13d
000000014000b104  mov        r15, qword ptr [rbp]
000000014000b108  and        dword ptr [rsp + 0x28], 0
000000014000b10d  mov        rcx, r15
000000014000b110  and        qword ptr [rsp + 0x20], 0
000000014000b116  call       0x140009ed8
000000014000b11b  movsxd     rdi, eax
000000014000b11e  test       eax, eax
000000014000b120  je         0x14000b263
000000014000b126  mov        edx, 0x400
000000014000b12b  test       edx, r13d
000000014000b12e  je         0x14000b182
000000014000b130  mov        eax, dword ptr [rbp + 0x70]
000000014000b133  test       eax, eax
000000014000b135  je         0x14000b265
000000014000b13b  cmp        edi, eax
000000014000b13d  jg         0x14000b263
000000014000b143  and        qword ptr [rsp + 0x40], 0
000000014000b149  mov        r9d, r12d
000000014000b14c  and        qword ptr [rsp + 0x38], 0
000000014000b152  mov        r8, rsi
000000014000b155  and        qword ptr [rsp + 0x30], 0
000000014000b15b  mov        edx, r13d
000000014000b15e  mov        dword ptr [rsp + 0x28], eax
000000014000b162  mov        rcx, r15
000000014000b165  mov        rax, qword ptr [rbp + 0x68]
000000014000b169  mov        qword ptr [rsp + 0x20], rax
000000014000b16e  call       0x140009ed8
000000014000b173  mov        edi, eax
000000014000b175  test       eax, eax
000000014000b177  jne        0x14000b265
000000014000b17d  jmp        0x14000b263
000000014000b182  mov        rcx, rdi
000000014000b185  add        rcx, rcx
000000014000b188  lea        rax, [rcx + 0x10]
000000014000b18c  cmp        rcx, rax
000000014000b18f  sbb        rcx, rcx
000000014000b192  and        rcx, rax
000000014000b195  je         0x14000b1ea
000000014000b197  cmp        rcx, rdx
000000014000b19a  ja         0x14000b1d1
000000014000b19c  lea        rax, [rcx + 0xf]
000000014000b1a0  cmp        rax, rcx
000000014000b1a3  ja         0x14000b1af
000000014000b1a5  movabs     rax, 0xffffffffffffff0
000000014000b1af  and        rax, 0xfffffffffffffff0
000000014000b1b3  call       0x140003780
000000014000b1b8  sub        rsp, rax
000000014000b1bb  lea        rbx, [rsp + 0x50]
000000014000b1c0  test       rbx, rbx
000000014000b1c3  je         0x14000b263
000000014000b1c9  mov        dword ptr [rbx], 0xcccc
000000014000b1cf  jmp        0x14000b1e4
000000014000b1d1  call       0x140009318
000000014000b1d6  mov        rbx, rax
000000014000b1d9  test       rax, rax
000000014000b1dc  je         0x14000b1ec
000000014000b1de  mov        dword ptr [rax], 0xdddd
000000014000b1e4  add        rbx, 0x10
000000014000b1e8  jmp        0x14000b1ec
000000014000b1ea  xor        ebx, ebx
000000014000b1ec  test       rbx, rbx
000000014000b1ef  je         0x14000b263
000000014000b1f1  and        qword ptr [rsp + 0x40], 0
000000014000b1f7  mov        r9d, r12d
000000014000b1fa  and        qword ptr [rsp + 0x38], 0
000000014000b200  mov        r8, rsi
000000014000b203  and        qword ptr [rsp + 0x30], 0
000000014000b209  mov        edx, r13d
000000014000b20c  mov        dword ptr [rsp + 0x28], edi
000000014000b210  mov        rcx, r15
000000014000b213  mov        qword ptr [rsp + 0x20], rbx
000000014000b218  call       0x140009ed8
000000014000b21d  test       eax, eax
000000014000b21f  je         0x14000b252
000000014000b221  and        qword ptr [rsp + 0x38], 0
000000014000b227  xor        edx, edx
000000014000b229  and        qword ptr [rsp + 0x30], rdx
000000014000b22e  mov        r9d, edi
000000014000b231  mov        eax, dword ptr [rbp + 0x70]
000000014000b234  mov        r8, rbx
000000014000b237  mov        ecx, r14d
000000014000b23a  test       eax, eax
000000014000b23c  jne        0x14000b2a3
000000014000b23e  and        dword ptr [rsp + 0x28], edx
000000014000b242  and        qword ptr [rsp + 0x20], rdx
000000014000b247  call       0x140008814
000000014000b24c  mov        edi, eax
000000014000b24e  test       eax, eax
000000014000b250  jne        0x14000b2b2
000000014000b252  lea        rcx, [rbx - 0x10]
000000014000b256  cmp        dword ptr [rcx], 0xdddd
000000014000b25c  jne        0x14000b263
000000014000b25e  call       0x140007770
000000014000b263  xor        edi, edi
000000014000b265  test       rsi, rsi
000000014000b268  je         0x14000b27b
000000014000b26a  lea        rcx, [rsi - 0x10]
000000014000b26e  cmp        dword ptr [rcx], 0xdddd
000000014000b274  jne        0x14000b27b
000000014000b276  call       0x140007770
000000014000b27b  mov        eax, edi
000000014000b27d  mov        rcx, qword ptr [rbp + 8]
000000014000b281  xor        rcx, rbp
000000014000b284  call       0x1400037e0
000000014000b289  mov        rbx, qword ptr [rbp + 0x40]
000000014000b28d  mov        rsi, qword ptr [rbp + 0x48]
000000014000b291  mov        rdi, qword ptr [rbp + 0x50]
000000014000b295  lea        rsp, [rbp + 0x10]
000000014000b299  pop        r15
000000014000b29b  pop        r14
000000014000b29d  pop        r13
000000014000b29f  pop        r12
000000014000b2a1  pop        rbp
000000014000b2a2  ret        
000000014000b2a3  mov        dword ptr [rsp + 0x28], eax
000000014000b2a7  mov        rax, qword ptr [rbp + 0x68]
000000014000b2ab  mov        qword ptr [rsp + 0x20], rax
000000014000b2b0  jmp        0x14000b247
000000014000b2b2  lea        rcx, [rbx - 0x10]
000000014000b2b6  cmp        dword ptr [rcx], 0xdddd
000000014000b2bc  jne        0x14000b265
000000014000b2be  call       0x140007770
000000014000b2c3  jmp        0x14000b265
000000014000b2c5  int3       
000000014000b2c6  int3       
000000014000b2c7  int3       
000000014000b2c8  mov        qword ptr [rsp + 8], rbx
000000014000b2cd  mov        qword ptr [rsp + 0x10], rsi
000000014000b2d2  push       rdi
000000014000b2d3  sub        rsp, 0x70
000000014000b2d7  mov        rsi, rdx
000000014000b2da  mov        rbx, r9
000000014000b2dd  mov        rdx, rcx
000000014000b2e0  mov        edi, r8d
000000014000b2e3  lea        rcx, [rsp + 0x50]
000000014000b2e8  call       0x140005474
000000014000b2ed  mov        eax, dword ptr [rsp + 0xc0]
000000014000b2f4  lea        rcx, [rsp + 0x58]
000000014000b2f9  mov        dword ptr [rsp + 0x40], eax
000000014000b2fd  mov        r9, rbx
000000014000b300  mov        eax, dword ptr [rsp + 0xb8]
000000014000b307  mov        r8d, edi
000000014000b30a  mov        dword ptr [rsp + 0x38], eax
000000014000b30e  mov        rdx, rsi
000000014000b311  mov        eax, dword ptr [rsp + 0xb0]
000000014000b318  mov        dword ptr [rsp + 0x30], eax
000000014000b31c  mov        rax, qword ptr [rsp + 0xa8]
000000014000b324  mov        qword ptr [rsp + 0x28], rax
000000014000b329  mov        eax, dword ptr [rsp + 0xa0]
000000014000b330  mov        dword ptr [rsp + 0x20], eax
000000014000b334  call       0x14000afb0 ; @UATAUAVAWH
000000014000b339  cmp        byte ptr [rsp + 0x68], 0
000000014000b33e  je         0x14000b34c
000000014000b340  mov        rcx, qword ptr [rsp + 0x50]
000000014000b345  and        dword ptr [rcx + 0x3a8], 0xfffffffd
000000014000b34c  lea        r11, [rsp + 0x70]
000000014000b351  mov        rbx, qword ptr [r11 + 0x10]
000000014000b355  mov        rsi, qword ptr [r11 + 0x18]
000000014000b359  mov        rsp, r11
000000014000b35c  pop        rdi
000000014000b35d  ret        
000000014000b35e  int3       
000000014000b35f  int3       
000000014000b360  sub        rsp, 0x28
000000014000b364  call       0x140008450
000000014000b369  xor        ecx, ecx
000000014000b36b  test       al, al
000000014000b36d  sete       cl
000000014000b370  mov        eax, ecx
000000014000b372  add        rsp, 0x28
000000014000b376  ret        
000000014000b377  int3       
000000014000b378  mov        r11, rdx
000000014000b37b  mov        r10, rcx
000000014000b37e  test       r8, r8
000000014000b381  jne        0x14000b386
000000014000b383  xor        eax, eax
000000014000b385  ret        
000000014000b386  movzx      ecx, word ptr [r10]
000000014000b38a  lea        r10, [r10 + 2]
000000014000b38e  movzx      edx, word ptr [r11]
000000014000b392  lea        r11, [r11 + 2]
000000014000b396  lea        eax, [rcx - 0x41]
000000014000b399  cmp        eax, 0x19
000000014000b39c  lea        r9d, [rcx + 0x20]
000000014000b3a0  lea        eax, [rdx - 0x41]
000000014000b3a3  cmova      r9d, ecx
000000014000b3a7  cmp        eax, 0x19
000000014000b3aa  lea        ecx, [rdx + 0x20]
000000014000b3ad  mov        eax, r9d
000000014000b3b0  cmova      ecx, edx
000000014000b3b3  sub        eax, ecx
000000014000b3b5  jne        0x14000b3c2
000000014000b3b7  test       r9d, r9d
000000014000b3ba  je         0x14000b3c2
000000014000b3bc  sub        r8, 1
000000014000b3c0  jne        0x14000b386
000000014000b3c2  ret        
000000014000b3c3  int3       
000000014000b3c4  mov        qword ptr [rsp + 8], rbx
000000014000b3c9  mov        qword ptr [rsp + 0x10], rbp
000000014000b3ce  mov        qword ptr [rsp + 0x18], rsi
000000014000b3d3  push       rdi
000000014000b3d4  push       r14
000000014000b3d6  push       r15
000000014000b3d8  sub        rsp, 0x20
000000014000b3dc  mov        r14, rcx
000000014000b3df  test       rcx, rcx
000000014000b3e2  je         0x14000b458
000000014000b3e4  xor        ebx, ebx
000000014000b3e6  lea        r15, [rip - 0xb3ed]
000000014000b3ed  mov        edi, 0xe3
000000014000b3f2  lea        eax, [rdi + rbx]
000000014000b3f5  mov        r8d, 0x55
000000014000b3fb  cdq        
000000014000b3fc  mov        rcx, r14
000000014000b3ff  sub        eax, edx
000000014000b401  sar        eax, 1
000000014000b403  movsxd     rbp, eax
000000014000b406  mov        rdx, rbp
000000014000b409  mov        rsi, rbp
000000014000b40c  add        rdx, rdx
000000014000b40f  mov        rdx, qword ptr [r15 + rdx*8 + 0x13550]
000000014000b417  call       0x14000b378
000000014000b41c  test       eax, eax
000000014000b41e  je         0x14000b433
000000014000b420  jns        0x14000b427
000000014000b422  lea        edi, [rbp - 1]
000000014000b425  jmp        0x14000b42a
000000014000b427  lea        ebx, [rbp + 1]
000000014000b42a  cmp        ebx, edi
000000014000b42c  jle        0x14000b3f2
000000014000b42e  or         eax, 0xffffffff
000000014000b431  jmp        0x14000b43e
000000014000b433  add        rsi, rsi
000000014000b436  mov        eax, dword ptr [r15 + rsi*8 + 0x13558]
000000014000b43e  test       eax, eax
000000014000b440  js         0x14000b458
000000014000b442  cmp        eax, 0xe4
000000014000b447  jae        0x14000b458
000000014000b449  cdqe       
000000014000b44b  add        rax, rax
000000014000b44e  mov        eax, dword ptr [r15 + rax*8 + 0x11b00]
000000014000b456  jmp        0x14000b45a
000000014000b458  xor        eax, eax
000000014000b45a  mov        rbx, qword ptr [rsp + 0x40]
000000014000b45f  mov        rbp, qword ptr [rsp + 0x48]
000000014000b464  mov        rsi, qword ptr [rsp + 0x50]
000000014000b469  add        rsp, 0x20
000000014000b46d  pop        r15
000000014000b46f  pop        r14
000000014000b471  pop        rdi
000000014000b472  ret        
000000014000b473  int3       
000000014000b474  sub        rsp, 0x28
000000014000b478  test       rcx, rcx
000000014000b47b  jne        0x14000b496
000000014000b47d  call       0x140006ec0
000000014000b482  mov        dword ptr [rax], 0x16
000000014000b488  call       0x140006ce4
000000014000b48d  or         rax, 0xffffffffffffffff
000000014000b491  add        rsp, 0x28
000000014000b495  ret        
000000014000b496  mov        r8, rcx
000000014000b499  xor        edx, edx
000000014000b49b  mov        rcx, qword ptr [rip + 0xf966]
000000014000b4a2  add        rsp, 0x28
000000014000b4a6  jmp        qword ptr [rip + 0x2d8b] ; KERNEL32.dll!HeapSize
000000014000b4ad  int3       
000000014000b4ae  int3       
000000014000b4af  int3       
000000014000b4b0  mov        qword ptr [rsp + 8], rbx
000000014000b4b5  push       rdi
000000014000b4b6  sub        rsp, 0x20
000000014000b4ba  mov        rbx, rdx
000000014000b4bd  mov        rdi, rcx
000000014000b4c0  test       rcx, rcx
000000014000b4c3  jne        0x14000b4cf
000000014000b4c5  mov        rcx, rdx
000000014000b4c8  call       0x140009318
000000014000b4cd  jmp        0x14000b4ee
000000014000b4cf  test       rbx, rbx
000000014000b4d2  jne        0x14000b4db
000000014000b4d4  call       0x140007770
000000014000b4d9  jmp        0x14000b4ec
000000014000b4db  cmp        rbx, -0x20
000000014000b4df  jbe        0x14000b50e
000000014000b4e1  call       0x140006ec0
000000014000b4e6  mov        dword ptr [rax], 0xc
000000014000b4ec  xor        eax, eax
000000014000b4ee  mov        rbx, qword ptr [rsp + 0x30]
000000014000b4f3  add        rsp, 0x20
000000014000b4f7  pop        rdi
000000014000b4f8  ret        
000000014000b4f9  call       0x1400063cc
000000014000b4fe  test       eax, eax
000000014000b500  je         0x14000b4e1
000000014000b502  mov        rcx, rbx
000000014000b505  call       0x14000a220
000000014000b50a  test       eax, eax
000000014000b50c  je         0x14000b4e1
000000014000b50e  mov        rcx, qword ptr [rip + 0xf8f3]
000000014000b515  mov        r9, rbx
000000014000b518  mov        r8, rdi
000000014000b51b  xor        edx, edx
000000014000b51d  call       qword ptr [rip + 0x2d1d] ; KERNEL32.dll!HeapReAlloc
000000014000b523  test       rax, rax
000000014000b526  je         0x14000b4f9
000000014000b528  jmp        0x14000b4ee
000000014000b52a  int3       
000000014000b52b  int3       
000000014000b52c  mov        qword ptr [rsp + 8], rbx
000000014000b531  mov        qword ptr [rsp + 0x20], r9
000000014000b536  push       rdi
000000014000b537  sub        rsp, 0x20
000000014000b53b  mov        rdi, r9
000000014000b53e  mov        rbx, r8
000000014000b541  mov        ecx, dword ptr [rdx]
000000014000b543  call       0x140008c10
000000014000b548  nop        
000000014000b549  mov        rax, qword ptr [rbx]
000000014000b54c  movsxd     rcx, dword ptr [rax]
000000014000b54f  mov        rdx, rcx
000000014000b552  mov        rax, rcx
000000014000b555  sar        rax, 6
000000014000b559  lea        r8, [rip + 0xf2e0]
000000014000b560  and        edx, 0x3f
000000014000b563  lea        rdx, [rdx + rdx*8]
000000014000b567  mov        rax, qword ptr [r8 + rax*8]
000000014000b56b  test       byte ptr [rax + rdx*8 + 0x38], 1
000000014000b570  je         0x14000b596
000000014000b572  call       0x140008d1c
000000014000b577  mov        rcx, rax
000000014000b57a  call       qword ptr [rip + 0x2cc8] ; KERNEL32.dll!FlushFileBuffers
000000014000b580  xor        ebx, ebx
000000014000b582  test       eax, eax
000000014000b584  jne        0x14000b5a4
000000014000b586  call       0x140006ea0
000000014000b58b  mov        rbx, rax
000000014000b58e  call       qword ptr [rip + 0x2bbc] ; KERNEL32.dll!GetLastError
000000014000b594  mov        dword ptr [rbx], eax
000000014000b596  call       0x140006ec0
000000014000b59b  mov        dword ptr [rax], 9
000000014000b5a1  or         ebx, 0xffffffff
000000014000b5a4  mov        ecx, dword ptr [rdi]
000000014000b5a6  call       0x140008c38
000000014000b5ab  mov        eax, ebx
000000014000b5ad  mov        rbx, qword ptr [rsp + 0x30]
000000014000b5b2  add        rsp, 0x20
000000014000b5b6  pop        rdi
000000014000b5b7  ret        
000000014000b5b8  mov        dword ptr [rsp + 8], ecx
000000014000b5bc  sub        rsp, 0x38
000000014000b5c0  movsxd     rdx, ecx
000000014000b5c3  cmp        edx, -2
000000014000b5c6  jne        0x14000b5d5
000000014000b5c8  call       0x140006ec0
000000014000b5cd  mov        dword ptr [rax], 9
000000014000b5d3  jmp        0x14000b641
000000014000b5d5  test       ecx, ecx
000000014000b5d7  js         0x14000b631
000000014000b5d9  cmp        edx, dword ptr [rip + 0xf661]
000000014000b5df  jae        0x14000b631
000000014000b5e1  mov        rcx, rdx
000000014000b5e4  lea        r8, [rip + 0xf255]
000000014000b5eb  and        ecx, 0x3f
000000014000b5ee  mov        rax, rdx
000000014000b5f1  sar        rax, 6
000000014000b5f5  lea        rcx, [rcx + rcx*8]
000000014000b5f9  mov        rax, qword ptr [r8 + rax*8]
000000014000b5fd  test       byte ptr [rax + rcx*8 + 0x38], 1
000000014000b602  je         0x14000b631
000000014000b604  lea        rax, [rsp + 0x40]
000000014000b609  mov        dword ptr [rsp + 0x50], edx
000000014000b60d  mov        dword ptr [rsp + 0x58], edx
000000014000b611  lea        r9, [rsp + 0x50]
000000014000b616  lea        rdx, [rsp + 0x58]
000000014000b61b  mov        qword ptr [rsp + 0x20], rax
000000014000b620  lea        r8, [rsp + 0x20]
000000014000b625  lea        rcx, [rsp + 0x48]
000000014000b62a  call       0x14000b52c
000000014000b62f  jmp        0x14000b644
000000014000b631  call       0x140006ec0
000000014000b636  mov        dword ptr [rax], 9
000000014000b63c  call       0x140006ce4
000000014000b641  or         eax, 0xffffffff
000000014000b644  add        rsp, 0x38
000000014000b648  ret        
000000014000b649  int3       
000000014000b64a  int3       
000000014000b64b  int3       
000000014000b64c  mov        qword ptr [rsp + 8], rbx
000000014000b651  push       rbp
000000014000b652  push       rsi
000000014000b653  push       rdi
000000014000b654  push       r12
000000014000b656  push       r13
000000014000b658  push       r14
000000014000b65a  push       r15
000000014000b65c  lea        rbp, [rsp - 0x27]
000000014000b661  sub        rsp, 0x100
000000014000b668  mov        rax, qword ptr [rip + 0xda59]
000000014000b66f  xor        rax, rsp
000000014000b672  mov        qword ptr [rbp + 0x17], rax
000000014000b676  movsxd     rsi, edx
000000014000b679  mov        r15, r8
000000014000b67c  mov        rax, rsi
000000014000b67f  mov        qword ptr [rbp - 9], rcx
000000014000b683  mov        qword ptr [rbp - 0x11], rax
000000014000b687  lea        rcx, [rip - 0xb68e]
000000014000b68e  and        eax, 0x3f
000000014000b691  mov        r13d, r9d
000000014000b694  add        r13, r8
000000014000b697  mov        qword ptr [rbp - 0x21], r8
000000014000b69b  mov        r12, rsi
000000014000b69e  mov        qword ptr [rbp - 0x51], r13
000000014000b6a2  sar        r12, 6
000000014000b6a6  lea        r14, [rax + rax*8]
000000014000b6aa  mov        rax, qword ptr [rcx + r12*8 + 0x1a840]
000000014000b6b2  mov        rax, qword ptr [rax + r14*8 + 0x28]
000000014000b6b7  mov        qword ptr [rbp - 0x49], rax
000000014000b6bb  call       qword ptr [rip + 0x2b8f] ; KERNEL32.dll!GetConsoleOutputCP
000000014000b6c1  xor        edx, edx
000000014000b6c3  lea        rcx, [rsp + 0x50]
000000014000b6c8  mov        dword ptr [rbp - 0x59], eax
000000014000b6cb  call       0x140005474
000000014000b6d0  mov        rcx, qword ptr [rsp + 0x58]
000000014000b6d5  xor        r11d, r11d
000000014000b6d8  mov        dword ptr [rbp - 0x69], r11d
000000014000b6dc  mov        ebx, r11d
000000014000b6df  mov        dword ptr [rbp - 0x65], ebx
000000014000b6e2  mov        rdi, r15
000000014000b6e5  mov        edx, dword ptr [rcx + 0xc]
000000014000b6e8  mov        ecx, r11d
000000014000b6eb  mov        dword ptr [rsp + 0x40], ecx
000000014000b6ef  mov        dword ptr [rbp - 0x55], edx
000000014000b6f2  cmp        r15, r13
000000014000b6f5  jae        0x14000badd
000000014000b6fb  mov        rax, rsi
000000014000b6fe  mov        rsi, r15
000000014000b701  sar        rax, 6
000000014000b705  mov        qword ptr [rbp - 0x19], rax
000000014000b709  mov        cl, byte ptr [rdi]
000000014000b70b  mov        r15d, 1
000000014000b711  mov        byte ptr [rsp + 0x44], cl
000000014000b715  mov        dword ptr [rsp + 0x48], r11d
000000014000b71a  cmp        edx, 0xfde9
000000014000b720  jne        0x14000b896
000000014000b726  lea        r15, [rip - 0xb72d]
000000014000b72d  mov        edx, r11d
000000014000b730  mov        r9, qword ptr [r15 + rax*8 + 0x1a840]
000000014000b738  mov        rsi, r11
000000014000b73b  lea        rax, [r9 + r14*8]
000000014000b73f  cmp        byte ptr [rax + rsi + 0x3e], r11b
000000014000b744  je         0x14000b751
000000014000b746  inc        edx
000000014000b748  inc        rsi
000000014000b74b  cmp        rsi, 5
000000014000b74f  jl         0x14000b73f ; D8\0>t
000000014000b751  test       rsi, rsi
000000014000b754  jle        0x14000b83a
000000014000b75a  mov        rax, qword ptr [r15 + r12*8 + 0x1a840]
000000014000b762  mov        r8, qword ptr [rbp - 0x51]
000000014000b766  sub        r8, rdi
000000014000b769  movzx      ecx, byte ptr [rax + r14*8 + 0x3e]
000000014000b76f  movsx      r15d, byte ptr [rcx + r15 + 0x199a0]
000000014000b778  inc        r15d
000000014000b77b  mov        r13d, r15d
000000014000b77e  sub        r13d, edx
000000014000b781  movsxd     r10, r13d
000000014000b784  cmp        r10, r8
000000014000b787  jg         0x14000ba05
000000014000b78d  lea        rax, [rbp - 1]
000000014000b791  mov        rdx, r11
000000014000b794  sub        r9, rax
000000014000b797  lea        r8, [r9 + r14*8]
000000014000b79b  lea        rcx, [rbp - 1]
000000014000b79f  add        rcx, rdx
000000014000b7a2  inc        rdx
000000014000b7a5  mov        al, byte ptr [rcx + r8 + 0x3e]
000000014000b7aa  mov        byte ptr [rcx], al
000000014000b7ac  cmp        rdx, rsi
000000014000b7af  jl         0x14000b79b
000000014000b7b1  test       r13d, r13d
000000014000b7b4  jle        0x14000b7cb
000000014000b7b6  lea        rcx, [rbp - 1]
000000014000b7ba  mov        r8, r10
000000014000b7bd  add        rcx, rsi
000000014000b7c0  mov        rdx, rdi
000000014000b7c3  call       0x1400042d0
000000014000b7c8  xor        r11d, r11d
000000014000b7cb  mov        rdx, r11
000000014000b7ce  lea        r8, [rip - 0xb7d5]
000000014000b7d5  mov        rcx, qword ptr [r8 + r12*8 + 0x1a840]
000000014000b7dd  add        rcx, rdx
000000014000b7e0  inc        rdx
000000014000b7e3  mov        byte ptr [rcx + r14*8 + 0x3e], r11b
000000014000b7e8  cmp        rdx, rsi
000000014000b7eb  jl         0x14000b7d5
000000014000b7ed  lea        rax, [rbp - 1]
000000014000b7f1  mov        qword ptr [rbp - 0x41], r11
000000014000b7f5  mov        qword ptr [rbp - 0x39], rax
000000014000b7f9  lea        r9, [rbp - 0x41]
000000014000b7fd  mov        eax, r11d
000000014000b800  lea        rdx, [rbp - 0x39]
000000014000b804  cmp        r15d, 4
000000014000b808  lea        rcx, [rsp + 0x48]
000000014000b80d  sete       al
000000014000b810  inc        eax
000000014000b812  mov        r8d, eax
000000014000b815  mov        r15d, eax
000000014000b818  call       0x14000c474
000000014000b81d  cmp        rax, -1
000000014000b821  je         0x14000b8fe
000000014000b827  lea        eax, [r13 - 1]
000000014000b82b  mov        r13, qword ptr [rbp - 0x51]
000000014000b82f  movsxd     rsi, eax
000000014000b832  add        rsi, rdi
000000014000b835  jmp        0x14000b920
000000014000b83a  movzx      eax, byte ptr [rdi]
000000014000b83d  mov        rdx, r13
000000014000b840  sub        rdx, rdi
000000014000b843  movsx      rsi, byte ptr [rax + r15 + 0x199a0]
000000014000b84c  lea        ecx, [rsi + 1]
000000014000b84f  movsxd     rax, ecx
000000014000b852  cmp        rax, rdx
000000014000b855  jg         0x14000ba3f
000000014000b85b  cmp        ecx, 4
000000014000b85e  mov        qword ptr [rbp - 0x31], r11
000000014000b862  mov        eax, r11d
000000014000b865  mov        qword ptr [rbp - 0x29], rdi
000000014000b869  sete       al
000000014000b86c  lea        r9, [rbp - 0x31]
000000014000b870  inc        eax
000000014000b872  lea        rdx, [rbp - 0x29]
000000014000b876  mov        r8d, eax
000000014000b879  lea        rcx, [rsp + 0x48]
000000014000b87e  mov        ebx, eax
000000014000b880  call       0x14000c474
000000014000b885  cmp        rax, -1
000000014000b889  je         0x14000b8fe
000000014000b88b  add        rsi, rdi
000000014000b88e  mov        r15d, ebx
000000014000b891  jmp        0x14000b920
000000014000b896  lea        rax, [rip - 0xb89d]
000000014000b89d  mov        rdx, qword ptr [rax + r12*8 + 0x1a840]
000000014000b8a5  mov        cl, byte ptr [rdx + r14*8 + 0x3d]
000000014000b8aa  test       cl, 4
000000014000b8ad  je         0x14000b8ca
000000014000b8af  mov        al, byte ptr [rdx + r14*8 + 0x3e]
000000014000b8b4  and        cl, 0xfb
000000014000b8b7  mov        byte ptr [rbp + 7], al
000000014000b8ba  mov        al, byte ptr [rdi]
000000014000b8bc  mov        byte ptr [rdx + r14*8 + 0x3d], cl
000000014000b8c1  lea        rdx, [rbp + 7]
000000014000b8c5  mov        byte ptr [rbp + 8], al
000000014000b8c8  jmp        0x14000b8e9
000000014000b8ca  call       0x14000757c
000000014000b8cf  movzx      ecx, byte ptr [rdi]
000000014000b8d2  xor        edx, edx
000000014000b8d4  cmp        word ptr [rax + rcx*2], dx
000000014000b8d8  jge        0x14000b907
000000014000b8da  inc        rsi
000000014000b8dd  cmp        rsi, r13
000000014000b8e0  jae        0x14000ba98
000000014000b8e6  mov        rdx, rdi
000000014000b8e9  mov        r8d, 2
000000014000b8ef  lea        rcx, [rsp + 0x48]
000000014000b8f4  call       0x14000ab54
000000014000b8f9  cmp        eax, -1
000000014000b8fc  jne        0x14000b920
000000014000b8fe  cmp        byte ptr [rbp - 0x71], 0
000000014000b902  jmp        0x14000ba92
000000014000b907  mov        r8, r15
000000014000b90a  lea        rcx, [rsp + 0x48]
000000014000b90f  mov        rdx, rdi
000000014000b912  call       0x14000ab54
000000014000b917  cmp        eax, -1
000000014000b91a  je         0x14000bacf
000000014000b920  mov        ecx, dword ptr [rbp - 0x59]
000000014000b923  lea        rax, [rbp + 0xf]
000000014000b927  xor        ebx, ebx
000000014000b929  lea        r8, [rsp + 0x48]
000000014000b92e  mov        qword ptr [rsp + 0x38], rbx
000000014000b933  lea        rdi, [rsi + 1]
000000014000b937  mov        qword ptr [rsp + 0x30], rbx
000000014000b93c  mov        r9d, r15d
000000014000b93f  mov        dword ptr [rsp + 0x28], 5
000000014000b947  xor        edx, edx
000000014000b949  mov        qword ptr [rsp + 0x20], rax
000000014000b94e  call       0x140008814
000000014000b953  mov        esi, eax
000000014000b955  test       eax, eax
000000014000b957  je         0x14000bb2f
000000014000b95d  mov        rcx, qword ptr [rbp - 0x49]
000000014000b961  lea        r9, [rsp + 0x4c]
000000014000b966  mov        r8d, eax
000000014000b969  mov        qword ptr [rsp + 0x20], rbx
000000014000b96e  lea        rdx, [rbp + 0xf]
000000014000b972  call       qword ptr [rip + 0x26c8] ; KERNEL32.dll!WriteFile
000000014000b978  xor        r11d, r11d
000000014000b97b  test       eax, eax
000000014000b97d  je         0x14000bb26
000000014000b983  mov        r15d, dword ptr [rsp + 0x40]
000000014000b988  mov        ebx, edi
000000014000b98a  sub        ebx, dword ptr [rbp - 0x21]
000000014000b98d  add        ebx, r15d
000000014000b990  mov        dword ptr [rbp - 0x65], ebx
000000014000b993  cmp        dword ptr [rsp + 0x4c], esi
000000014000b997  jb         0x14000ba8e
000000014000b99d  cmp        byte ptr [rsp + 0x44], 0xa
000000014000b9a2  jne        0x14000b9ed
000000014000b9a4  mov        rcx, qword ptr [rbp - 0x49]
000000014000b9a8  lea        eax, [r11 + 0xd]
000000014000b9ac  lea        r9, [rsp + 0x4c]
000000014000b9b1  mov        word ptr [rsp + 0x44], ax
000000014000b9b6  lea        r8d, [r11 + 1]
000000014000b9ba  mov        qword ptr [rsp + 0x20], r11
000000014000b9bf  lea        rdx, [rsp + 0x44]
000000014000b9c4  call       qword ptr [rip + 0x2676] ; KERNEL32.dll!WriteFile
000000014000b9ca  xor        r11d, r11d
000000014000b9cd  test       eax, eax
000000014000b9cf  je         0x14000bac6
000000014000b9d5  cmp        dword ptr [rsp + 0x4c], 1
000000014000b9da  jb         0x14000ba8e
000000014000b9e0  inc        r15d
000000014000b9e3  inc        ebx
000000014000b9e5  mov        dword ptr [rsp + 0x40], r15d
000000014000b9ea  mov        dword ptr [rbp - 0x65], ebx
000000014000b9ed  mov        rsi, rdi
000000014000b9f0  cmp        rdi, r13
000000014000b9f3  jae        0x14000bad9
000000014000b9f9  mov        rax, qword ptr [rbp - 0x19]
000000014000b9fd  mov        edx, dword ptr [rbp - 0x55]
000000014000ba00  jmp        0x14000b709
000000014000ba05  mov        edx, r11d
000000014000ba08  test       r8, r8
000000014000ba0b  jle        0x14000ba3a
000000014000ba0d  sub        rdi, rsi
000000014000ba10  lea        rbx, [rip - 0xba17]
000000014000ba17  mov        al, byte ptr [rdi + rsi]
000000014000ba1a  inc        edx
000000014000ba1c  mov        rcx, qword ptr [rbx + r12*8 + 0x1a840]
000000014000ba24  add        rcx, rsi
000000014000ba27  inc        rsi
000000014000ba2a  mov        byte ptr [rcx + r14*8 + 0x3e], al
000000014000ba2f  movsxd     rax, edx
000000014000ba32  cmp        rax, r8
000000014000ba35  jl         0x14000ba17
000000014000ba37  mov        ebx, dword ptr [rbp - 0x65]
000000014000ba3a  add        ebx, r8d
000000014000ba3d  jmp        0x14000ba8b
000000014000ba3f  mov        r9d, r11d
000000014000ba42  test       rdx, rdx
000000014000ba45  jle        0x14000ba89
000000014000ba47  mov        r13, qword ptr [rbp - 0x11]
000000014000ba4b  mov        r8, r11
000000014000ba4e  mov        r10, r13
000000014000ba51  and        r13d, 0x3f
000000014000ba55  sar        r10, 6
000000014000ba59  lea        r11, [r13*8]
000000014000ba61  add        r11, r13
000000014000ba64  mov        al, byte ptr [r8 + rdi]
000000014000ba68  inc        r9d
000000014000ba6b  mov        rcx, qword ptr [r15 + r10*8 + 0x1a840]
000000014000ba73  add        rcx, r8
000000014000ba76  inc        r8
000000014000ba79  mov        byte ptr [rcx + r11*8 + 0x3e], al
000000014000ba7e  movsxd     rax, r9d
000000014000ba81  cmp        rax, rdx
000000014000ba84  jl         0x14000ba64
000000014000ba86  xor        r11d, r11d
000000014000ba89  add        ebx, edx
000000014000ba8b  mov        dword ptr [rbp - 0x65], ebx
000000014000ba8e  cmp        byte ptr [rbp - 0x71], r11b
000000014000ba92  mov        ecx, dword ptr [rsp + 0x40]
000000014000ba96  jmp        0x14000bae1
000000014000ba98  mov        al, byte ptr [rdi]
000000014000ba9a  lea        r8, [rip - 0xbaa1]
000000014000baa1  mov        rcx, qword ptr [r8 + r12*8 + 0x1a840]
000000014000baa9  inc        ebx
000000014000baab  mov        dword ptr [rbp - 0x65], ebx
000000014000baae  mov        byte ptr [rcx + r14*8 + 0x3e], al
000000014000bab3  mov        rax, qword ptr [r8 + r12*8 + 0x1a840]
000000014000babb  or         byte ptr [rax + r14*8 + 0x3d], 4
000000014000bac1  cmp        byte ptr [rbp - 0x71], dl
000000014000bac4  jmp        0x14000ba92
000000014000bac6  call       qword ptr [rip + 0x2684] ; KERNEL32.dll!GetLastError
000000014000bacc  mov        dword ptr [rbp - 0x69], eax
000000014000bacf  mov        ecx, dword ptr [rsp + 0x40]
000000014000bad3  cmp        byte ptr [rbp - 0x71], 0
000000014000bad7  jmp        0x14000bae1
000000014000bad9  mov        ecx, dword ptr [rsp + 0x40]
000000014000badd  cmp        byte ptr [rbp - 0x71], r11b
000000014000bae1  je         0x14000baef
000000014000bae3  mov        rax, qword ptr [rsp + 0x50]
000000014000bae8  and        dword ptr [rax + 0x3a8], 0xfffffffd
000000014000baef  mov        rax, qword ptr [rbp - 9]
000000014000baf3  movsd      xmm0, qword ptr [rbp - 0x69]
000000014000baf8  movsd      qword ptr [rax], xmm0
000000014000bafc  mov        dword ptr [rax + 8], ecx
000000014000baff  mov        rcx, qword ptr [rbp + 0x17]
000000014000bb03  xor        rcx, rsp
000000014000bb06  call       0x1400037e0
000000014000bb0b  mov        rbx, qword ptr [rsp + 0x140]
000000014000bb13  add        rsp, 0x100
000000014000bb1a  pop        r15
000000014000bb1c  pop        r14
000000014000bb1e  pop        r13
000000014000bb20  pop        r12
000000014000bb22  pop        rdi
000000014000bb23  pop        rsi
000000014000bb24  pop        rbp
000000014000bb25  ret        
000000014000bb26  call       qword ptr [rip + 0x2624] ; KERNEL32.dll!GetLastError
000000014000bb2c  mov        dword ptr [rbp - 0x69], eax
000000014000bb2f  mov        ecx, dword ptr [rsp + 0x40]
000000014000bb33  cmp        byte ptr [rbp - 0x71], bl
000000014000bb36  jmp        0x14000bae1
000000014000bb38  mov        qword ptr [rsp + 8], rbx
000000014000bb3d  mov        qword ptr [rsp + 0x18], rbp
000000014000bb42  push       rsi
000000014000bb43  push       rdi
000000014000bb44  push       r14
000000014000bb46  mov        eax, 0x1450
000000014000bb4b  call       0x140003780
000000014000bb50  sub        rsp, rax
000000014000bb53  mov        rax, qword ptr [rip + 0xd56e]
000000014000bb5a  xor        rax, rsp
000000014000bb5d  mov        qword ptr [rsp + 0x1440], rax
000000014000bb65  movsxd     r10, edx
000000014000bb68  mov        rdi, rcx
000000014000bb6b  mov        rax, r10
000000014000bb6e  mov        ebp, r9d
000000014000bb71  sar        rax, 6
000000014000bb75  lea        rcx, [rip + 0xecc4]
000000014000bb7c  and        r10d, 0x3f
000000014000bb80  add        rbp, r8
000000014000bb83  mov        rsi, r8
000000014000bb86  mov        rax, qword ptr [rcx + rax*8]
000000014000bb8a  lea        rdx, [r10 + r10*8]
000000014000bb8e  mov        r14, qword ptr [rax + rdx*8 + 0x28]
000000014000bb93  xor        eax, eax
000000014000bb95  mov        qword ptr [rdi], rax
000000014000bb98  mov        dword ptr [rdi + 8], eax
000000014000bb9b  cmp        r8, rbp
000000014000bb9e  jae        0x14000bc0f
000000014000bba0  lea        rbx, [rsp + 0x40]
000000014000bba5  cmp        rsi, rbp
000000014000bba8  jae        0x14000bbce
000000014000bbaa  mov        al, byte ptr [rsi]
000000014000bbac  inc        rsi
000000014000bbaf  cmp        al, 0xa
000000014000bbb1  jne        0x14000bbbc
000000014000bbb3  inc        dword ptr [rdi + 8]
000000014000bbb6  mov        byte ptr [rbx], 0xd
000000014000bbb9  inc        rbx
000000014000bbbc  mov        byte ptr [rbx], al
000000014000bbbe  inc        rbx
000000014000bbc1  lea        rax, [rsp + 0x143f]
000000014000bbc9  cmp        rbx, rax
000000014000bbcc  jb         0x14000bba5
000000014000bbce  and        qword ptr [rsp + 0x20], 0
000000014000bbd4  lea        rax, [rsp + 0x40]
000000014000bbd9  sub        ebx, eax
000000014000bbdb  lea        r9, [rsp + 0x30]
000000014000bbe0  mov        r8d, ebx
000000014000bbe3  lea        rdx, [rsp + 0x40]
000000014000bbe8  mov        rcx, r14
000000014000bbeb  call       qword ptr [rip + 0x244f] ; KERNEL32.dll!WriteFile
000000014000bbf1  test       eax, eax
000000014000bbf3  je         0x14000bc07
000000014000bbf5  mov        eax, dword ptr [rsp + 0x30]
000000014000bbf9  add        dword ptr [rdi + 4], eax
000000014000bbfc  cmp        eax, ebx
000000014000bbfe  jb         0x14000bc0f
000000014000bc00  cmp        rsi, rbp
000000014000bc03  jb         0x14000bba0
000000014000bc05  jmp        0x14000bc0f
000000014000bc07  call       qword ptr [rip + 0x2543] ; KERNEL32.dll!GetLastError
000000014000bc0d  mov        dword ptr [rdi], eax
000000014000bc0f  mov        rax, rdi
000000014000bc12  mov        rcx, qword ptr [rsp + 0x1440]
000000014000bc1a  xor        rcx, rsp
000000014000bc1d  call       0x1400037e0
000000014000bc22  lea        r11, [rsp + 0x1450]
000000014000bc2a  mov        rbx, qword ptr [r11 + 0x20]
000000014000bc2e  mov        rbp, qword ptr [r11 + 0x30]
000000014000bc32  mov        rsp, r11
000000014000bc35  pop        r14
000000014000bc37  pop        rdi
000000014000bc38  pop        rsi
000000014000bc39  ret        
000000014000bc3a  int3       
000000014000bc3b  int3       
000000014000bc3c  mov        qword ptr [rsp + 8], rbx
000000014000bc41  mov        qword ptr [rsp + 0x18], rbp
000000014000bc46  push       rsi
000000014000bc47  push       rdi
000000014000bc48  push       r14
000000014000bc4a  mov        eax, 0x1450
000000014000bc4f  call       0x140003780
000000014000bc54  sub        rsp, rax
000000014000bc57  mov        rax, qword ptr [rip + 0xd46a]
000000014000bc5e  xor        rax, rsp
000000014000bc61  mov        qword ptr [rsp + 0x1440], rax
000000014000bc69  movsxd     r10, edx
000000014000bc6c  mov        rdi, rcx
000000014000bc6f  mov        rax, r10
000000014000bc72  mov        ebp, r9d
000000014000bc75  sar        rax, 6
000000014000bc79  lea        rcx, [rip + 0xebc0]
000000014000bc80  and        r10d, 0x3f
000000014000bc84  add        rbp, r8
000000014000bc87  mov        rsi, r8
000000014000bc8a  mov        rax, qword ptr [rcx + rax*8]
000000014000bc8e  lea        rdx, [r10 + r10*8]
000000014000bc92  mov        r14, qword ptr [rax + rdx*8 + 0x28]
000000014000bc97  xor        eax, eax
000000014000bc99  mov        qword ptr [rdi], rax
000000014000bc9c  mov        dword ptr [rdi + 8], eax
000000014000bc9f  cmp        r8, rbp
000000014000bca2  jae        0x14000bd2a
000000014000bca8  lea        rbx, [rsp + 0x40]
000000014000bcad  cmp        rsi, rbp
000000014000bcb0  jae        0x14000bce3
000000014000bcb2  movzx      eax, word ptr [rsi]
000000014000bcb5  add        rsi, 2
000000014000bcb9  cmp        ax, 0xa
000000014000bcbd  jne        0x14000bccf
000000014000bcbf  add        dword ptr [rdi + 8], 2
000000014000bcc3  mov        ecx, 0xd
000000014000bcc8  mov        word ptr [rbx], cx
000000014000bccb  add        rbx, 2
000000014000bccf  mov        word ptr [rbx], ax
000000014000bcd2  add        rbx, 2
000000014000bcd6  lea        rax, [rsp + 0x143e]
000000014000bcde  cmp        rbx, rax
000000014000bce1  jb         0x14000bcad
000000014000bce3  and        qword ptr [rsp + 0x20], 0
000000014000bce9  lea        rax, [rsp + 0x40]
000000014000bcee  sub        rbx, rax
000000014000bcf1  lea        r9, [rsp + 0x30]
000000014000bcf6  sar        rbx, 1
000000014000bcf9  lea        rdx, [rsp + 0x40]
000000014000bcfe  add        ebx, ebx
000000014000bd00  mov        rcx, r14
000000014000bd03  mov        r8d, ebx
000000014000bd06  call       qword ptr [rip + 0x2334] ; KERNEL32.dll!WriteFile
000000014000bd0c  test       eax, eax
000000014000bd0e  je         0x14000bd22
000000014000bd10  mov        eax, dword ptr [rsp + 0x30]
000000014000bd14  add        dword ptr [rdi + 4], eax
000000014000bd17  cmp        eax, ebx
000000014000bd19  jb         0x14000bd2a
000000014000bd1b  cmp        rsi, rbp
000000014000bd1e  jb         0x14000bca8
000000014000bd20  jmp        0x14000bd2a
000000014000bd22  call       qword ptr [rip + 0x2428] ; KERNEL32.dll!GetLastError
000000014000bd28  mov        dword ptr [rdi], eax
000000014000bd2a  mov        rax, rdi
000000014000bd2d  mov        rcx, qword ptr [rsp + 0x1440]
000000014000bd35  xor        rcx, rsp
000000014000bd38  call       0x1400037e0
000000014000bd3d  lea        r11, [rsp + 0x1450]
000000014000bd45  mov        rbx, qword ptr [r11 + 0x20]
000000014000bd49  mov        rbp, qword ptr [r11 + 0x30]
000000014000bd4d  mov        rsp, r11
000000014000bd50  pop        r14
000000014000bd52  pop        rdi
000000014000bd53  pop        rsi
000000014000bd54  ret        
000000014000bd55  int3       
000000014000bd56  int3       
000000014000bd57  int3       
000000014000bd58  mov        qword ptr [rsp + 8], rbx
000000014000bd5d  mov        qword ptr [rsp + 0x18], rbp
000000014000bd62  push       rsi
000000014000bd63  push       rdi
000000014000bd64  push       r12
000000014000bd66  push       r14
000000014000bd68  push       r15
000000014000bd6a  mov        eax, 0x1470
000000014000bd6f  call       0x140003780
000000014000bd74  sub        rsp, rax
000000014000bd77  mov        rax, qword ptr [rip + 0xd34a]
000000014000bd7e  xor        rax, rsp
000000014000bd81  mov        qword ptr [rsp + 0x1460], rax
000000014000bd89  movsxd     r10, edx
000000014000bd8c  mov        rbx, rcx
000000014000bd8f  mov        rax, r10
000000014000bd92  mov        r14d, r9d
000000014000bd95  sar        rax, 6
000000014000bd99  lea        rcx, [rip + 0xeaa0]
000000014000bda0  and        r10d, 0x3f
000000014000bda4  add        r14, r8
000000014000bda7  mov        r15, r8
000000014000bdaa  mov        rdi, r8
000000014000bdad  mov        rax, qword ptr [rcx + rax*8]
000000014000bdb1  lea        rdx, [r10 + r10*8]
000000014000bdb5  mov        r12, qword ptr [rax + rdx*8 + 0x28]
000000014000bdba  xor        eax, eax
000000014000bdbc  mov        qword ptr [rbx], rax
000000014000bdbf  cmp        r8, r14
000000014000bdc2  mov        dword ptr [rbx + 8], eax
000000014000bdc5  jae        0x14000be99
000000014000bdcb  lea        rax, [rsp + 0x50]
000000014000bdd0  cmp        rdi, r14
000000014000bdd3  jae        0x14000be02
000000014000bdd5  movzx      ecx, word ptr [rdi]
000000014000bdd8  add        rdi, 2
000000014000bddc  cmp        cx, 0xa
000000014000bde0  jne        0x14000bdee
000000014000bde2  mov        edx, 0xd
000000014000bde7  mov        word ptr [rax], dx
000000014000bdea  add        rax, 2
000000014000bdee  mov        word ptr [rax], cx
000000014000bdf1  add        rax, 2
000000014000bdf5  lea        rcx, [rsp + 0x6f8]
000000014000bdfd  cmp        rax, rcx
000000014000be00  jb         0x14000bdd0
000000014000be02  and        qword ptr [rsp + 0x38], 0
000000014000be08  lea        rcx, [rsp + 0x50]
000000014000be0d  and        qword ptr [rsp + 0x30], 0
000000014000be13  lea        r8, [rsp + 0x50]
000000014000be18  sub        rax, rcx
000000014000be1b  mov        dword ptr [rsp + 0x28], 0xd55
000000014000be23  lea        rcx, [rsp + 0x700]
000000014000be2b  sar        rax, 1
000000014000be2e  mov        qword ptr [rsp + 0x20], rcx
000000014000be33  mov        r9d, eax
000000014000be36  mov        ecx, 0xfde9
000000014000be3b  xor        edx, edx
000000014000be3d  call       0x140008814
000000014000be42  mov        ebp, eax
000000014000be44  test       eax, eax
000000014000be46  je         0x14000be91
000000014000be48  xor        esi, esi
000000014000be4a  test       eax, eax
000000014000be4c  je         0x14000be81
000000014000be4e  and        qword ptr [rsp + 0x20], 0
000000014000be54  lea        rdx, [rsp + 0x700]
000000014000be5c  mov        ecx, esi
000000014000be5e  lea        r9, [rsp + 0x40]
000000014000be63  mov        r8d, ebp
000000014000be66  add        rdx, rcx
000000014000be69  mov        rcx, r12
000000014000be6c  sub        r8d, esi
000000014000be6f  call       qword ptr [rip + 0x21cb] ; KERNEL32.dll!WriteFile
000000014000be75  test       eax, eax
000000014000be77  je         0x14000be91
000000014000be79  add        esi, dword ptr [rsp + 0x40]
000000014000be7d  cmp        esi, ebp
000000014000be7f  jb         0x14000be4e
000000014000be81  mov        eax, edi
000000014000be83  sub        eax, r15d
000000014000be86  mov        dword ptr [rbx + 4], eax
000000014000be89  cmp        rdi, r14
000000014000be8c  jmp        0x14000bdc5
000000014000be91  call       qword ptr [rip + 0x22b9] ; KERNEL32.dll!GetLastError
000000014000be97  mov        dword ptr [rbx], eax
000000014000be99  mov        rax, rbx
000000014000be9c  mov        rcx, qword ptr [rsp + 0x1460]
000000014000bea4  xor        rcx, rsp
000000014000bea7  call       0x1400037e0
000000014000beac  lea        r11, [rsp + 0x1470]
000000014000beb4  mov        rbx, qword ptr [r11 + 0x30]
000000014000beb8  mov        rbp, qword ptr [r11 + 0x40]
000000014000bebc  mov        rsp, r11
000000014000bebf  pop        r15
000000014000bec1  pop        r14
000000014000bec3  pop        r12
000000014000bec5  pop        rdi
000000014000bec6  pop        rsi
000000014000bec7  ret        
000000014000bec8  mov        qword ptr [rsp + 0x10], rbx
000000014000becd  mov        qword ptr [rsp + 0x18], rsi
000000014000bed2  mov        dword ptr [rsp + 8], ecx
000000014000bed6  push       rdi
000000014000bed7  push       r12
000000014000bed9  push       r13
000000014000bedb  push       r14
000000014000bedd  push       r15
000000014000bedf  sub        rsp, 0x20
000000014000bee3  mov        r14d, r8d
000000014000bee6  mov        r15, rdx
000000014000bee9  movsxd     rbx, ecx
000000014000beec  cmp        ebx, -2
000000014000beef  jne        0x14000bf09
000000014000bef1  call       0x140006ea0
000000014000bef6  and        dword ptr [rax], 0
000000014000bef9  call       0x140006ec0
000000014000befe  mov        dword ptr [rax], 9
000000014000bf04  jmp        0x14000bf98
000000014000bf09  test       ecx, ecx
000000014000bf0b  js         0x14000bf80
000000014000bf0d  cmp        ebx, dword ptr [rip + 0xed2d]
000000014000bf13  jae        0x14000bf80
000000014000bf15  mov        rax, rbx
000000014000bf18  mov        rsi, rbx
000000014000bf1b  sar        rsi, 6
000000014000bf1f  lea        r13, [rip + 0xe91a]
000000014000bf26  and        eax, 0x3f
000000014000bf29  lea        r12, [rax + rax*8]
000000014000bf2d  mov        rax, qword ptr [r13 + rsi*8]
000000014000bf32  test       byte ptr [rax + r12*8 + 0x38], 1
000000014000bf38  je         0x14000bf80
000000014000bf3a  mov        ecx, ebx
000000014000bf3c  call       0x140008c10
000000014000bf41  or         edi, 0xffffffff
000000014000bf44  mov        rax, qword ptr [r13 + rsi*8]
000000014000bf49  test       byte ptr [rax + r12*8 + 0x38], 1
000000014000bf4f  jne        0x14000bf66
000000014000bf51  call       0x140006ec0
000000014000bf56  mov        dword ptr [rax], 9
000000014000bf5c  call       0x140006ea0
000000014000bf61  and        dword ptr [rax], 0
000000014000bf64  jmp        0x14000bf75
000000014000bf66  mov        r8d, r14d
000000014000bf69  mov        rdx, r15
000000014000bf6c  mov        ecx, ebx
000000014000bf6e  call       0x14000bfb4
000000014000bf73  mov        edi, eax
000000014000bf75  mov        ecx, ebx
000000014000bf77  call       0x140008c38
000000014000bf7c  mov        eax, edi
000000014000bf7e  jmp        0x14000bf9b
000000014000bf80  call       0x140006ea0
000000014000bf85  and        dword ptr [rax], 0
000000014000bf88  call       0x140006ec0
000000014000bf8d  mov        dword ptr [rax], 9
000000014000bf93  call       0x140006ce4
000000014000bf98  or         eax, 0xffffffff
000000014000bf9b  mov        rbx, qword ptr [rsp + 0x58]
000000014000bfa0  mov        rsi, qword ptr [rsp + 0x60]
000000014000bfa5  add        rsp, 0x20
000000014000bfa9  pop        r15
000000014000bfab  pop        r14
000000014000bfad  pop        r13
000000014000bfaf  pop        r12
000000014000bfb1  pop        rdi
000000014000bfb2  ret        
000000014000bfb3  int3       
000000014000bfb4  mov        qword ptr [rsp + 0x20], rbx
000000014000bfb9  push       rbp
000000014000bfba  push       rsi
000000014000bfbb  push       rdi
000000014000bfbc  push       r12
000000014000bfbe  push       r13
000000014000bfc0  push       r14
000000014000bfc2  push       r15
000000014000bfc4  mov        rbp, rsp
000000014000bfc7  sub        rsp, 0x60
000000014000bfcb  xor        ebx, ebx
000000014000bfcd  mov        r14d, r8d
000000014000bfd0  movsxd     r12, ecx
000000014000bfd3  mov        rdi, rdx
000000014000bfd6  test       r8d, r8d
000000014000bfd9  je         0x14000c27d
000000014000bfdf  test       rdx, rdx
000000014000bfe2  jne        0x14000c003
000000014000bfe4  call       0x140006ea0
000000014000bfe9  mov        dword ptr [rax], ebx
000000014000bfeb  call       0x140006ec0
000000014000bff0  mov        dword ptr [rax], 0x16
000000014000bff6  call       0x140006ce4
000000014000bffb  or         eax, 0xffffffff
000000014000bffe  jmp        0x14000c27f
000000014000c003  mov        rax, r12
000000014000c006  lea        rcx, [rip + 0xe833]
000000014000c00d  and        eax, 0x3f
000000014000c010  mov        r13, r12
000000014000c013  sar        r13, 6
000000014000c017  lea        r15, [rax + rax*8]
000000014000c01b  mov        rcx, qword ptr [rcx + r13*8]
000000014000c01f  movsx      esi, byte ptr [rcx + r15*8 + 0x39]
000000014000c025  lea        eax, [rsi - 1]
000000014000c028  cmp        al, 1
000000014000c02a  ja         0x14000c035
000000014000c02c  mov        eax, r14d
000000014000c02f  not        eax
000000014000c031  test       al, 1
000000014000c033  je         0x14000bfe4
000000014000c035  test       byte ptr [rcx + r15*8 + 0x38], 0x20
000000014000c03b  je         0x14000c04b
000000014000c03d  xor        edx, edx
000000014000c03f  mov        ecx, r12d
000000014000c042  lea        r8d, [rdx + 2]
000000014000c046  call       0x14000c6a0
000000014000c04b  mov        ecx, r12d
000000014000c04e  mov        qword ptr [rbp - 0x20], rbx
000000014000c052  call       0x14000c38c
000000014000c057  test       eax, eax
000000014000c059  je         0x14000c16a
000000014000c05f  lea        rax, [rip + 0xe7da]
000000014000c066  mov        rax, qword ptr [rax + r13*8]
000000014000c06a  cmp        byte ptr [rax + r15*8 + 0x38], bl
000000014000c06f  jge        0x14000c16a
000000014000c075  call       0x140007260
000000014000c07a  mov        rcx, qword ptr [rax + 0x90]
000000014000c081  cmp        qword ptr [rcx + 0x138], rbx
000000014000c088  jne        0x14000c0a0
000000014000c08a  lea        rax, [rip + 0xe7af]
000000014000c091  mov        rax, qword ptr [rax + r13*8]
000000014000c095  cmp        byte ptr [rax + r15*8 + 0x39], bl
000000014000c09a  je         0x14000c16a
000000014000c0a0  lea        rax, [rip + 0xe799]
000000014000c0a7  mov        rcx, qword ptr [rax + r13*8]
000000014000c0ab  lea        rdx, [rbp - 0x10]
000000014000c0af  mov        rcx, qword ptr [rcx + r15*8 + 0x28]
000000014000c0b4  call       qword ptr [rip + 0x219e] ; KERNEL32.dll!GetConsoleMode
000000014000c0ba  test       eax, eax
000000014000c0bc  je         0x14000c16a
000000014000c0c2  test       sil, sil
000000014000c0c5  je         0x14000c14c
000000014000c0cb  dec        sil
000000014000c0ce  cmp        sil, 1
000000014000c0d2  ja         0x14000c206
000000014000c0d8  lea        r12, [rdi + r14]
000000014000c0dc  mov        qword ptr [rbp - 0x30], rbx
000000014000c0e0  mov        r14, rdi
000000014000c0e3  cmp        rdi, r12
000000014000c0e6  jae        0x14000c1fc
000000014000c0ec  mov        esi, dword ptr [rbp - 0x2c]
000000014000c0ef  movzx      eax, word ptr [r14]
000000014000c0f3  movzx      ecx, ax
000000014000c0f6  mov        word ptr [rbp - 0x10], ax
000000014000c0fa  call       0x14000c6a8
000000014000c0ff  movzx      ecx, word ptr [rbp - 0x10]
000000014000c103  cmp        ax, cx
000000014000c106  jne        0x14000c13e
000000014000c108  add        esi, 2
000000014000c10b  mov        dword ptr [rbp - 0x2c], esi
000000014000c10e  cmp        cx, 0xa
000000014000c112  jne        0x14000c12f
000000014000c114  mov        ecx, 0xd
000000014000c119  call       0x14000c6a8
000000014000c11e  mov        ecx, 0xd
000000014000c123  cmp        ax, cx
000000014000c126  jne        0x14000c13e
000000014000c128  inc        esi
000000014000c12a  mov        dword ptr [rbp - 0x2c], esi
000000014000c12d  inc        ebx
000000014000c12f  add        r14, 2
000000014000c133  cmp        r14, r12
000000014000c136  jae        0x14000c1fc
000000014000c13c  jmp        0x14000c0ef
000000014000c13e  call       qword ptr [rip + 0x200c] ; KERNEL32.dll!GetLastError
000000014000c144  mov        dword ptr [rbp - 0x30], eax
000000014000c147  jmp        0x14000c1fc
000000014000c14c  mov        r9d, r14d
000000014000c14f  lea        rcx, [rbp - 0x30]
000000014000c153  mov        r8, rdi
000000014000c156  mov        edx, r12d
000000014000c159  call       0x14000b64c
000000014000c15e  movsd      xmm0, qword ptr [rax]
000000014000c162  mov        ebx, dword ptr [rax + 8]
000000014000c165  jmp        0x14000c201
000000014000c16a  lea        rax, [rip + 0xe6cf]
000000014000c171  mov        rcx, qword ptr [rax + r13*8]
000000014000c175  cmp        byte ptr [rcx + r15*8 + 0x38], bl
000000014000c17a  jge        0x14000c1c9
000000014000c17c  mov        ecx, esi
000000014000c17e  test       sil, sil
000000014000c181  je         0x14000c1b5
000000014000c183  sub        ecx, 1
000000014000c186  je         0x14000c1a1
000000014000c188  cmp        ecx, 1
000000014000c18b  jne        0x14000c206
000000014000c18d  mov        r9d, r14d
000000014000c190  lea        rcx, [rbp - 0x30]
000000014000c194  mov        r8, rdi
000000014000c197  mov        edx, r12d
000000014000c19a  call       0x14000bc3c
000000014000c19f  jmp        0x14000c15e
000000014000c1a1  mov        r9d, r14d
000000014000c1a4  lea        rcx, [rbp - 0x30]
000000014000c1a8  mov        r8, rdi
000000014000c1ab  mov        edx, r12d
000000014000c1ae  call       0x14000bd58
000000014000c1b3  jmp        0x14000c15e
000000014000c1b5  mov        r9d, r14d
000000014000c1b8  lea        rcx, [rbp - 0x30]
000000014000c1bc  mov        r8, rdi
000000014000c1bf  mov        edx, r12d
000000014000c1c2  call       0x14000bb38
000000014000c1c7  jmp        0x14000c15e
000000014000c1c9  mov        rcx, qword ptr [rcx + r15*8 + 0x28]
000000014000c1ce  lea        r9, [rbp - 0x2c]
000000014000c1d2  xor        eax, eax
000000014000c1d4  mov        r8d, r14d
000000014000c1d7  and        qword ptr [rsp + 0x20], rax
000000014000c1dc  mov        rdx, rdi
000000014000c1df  mov        qword ptr [rbp - 0x30], rax
000000014000c1e3  mov        dword ptr [rbp - 0x28], eax
000000014000c1e6  call       qword ptr [rip + 0x1e54] ; KERNEL32.dll!WriteFile
000000014000c1ec  test       eax, eax
000000014000c1ee  jne        0x14000c1f9
000000014000c1f0  call       qword ptr [rip + 0x1f5a] ; KERNEL32.dll!GetLastError
000000014000c1f6  mov        dword ptr [rbp - 0x30], eax
000000014000c1f9  mov        ebx, dword ptr [rbp - 0x28]
000000014000c1fc  movsd      xmm0, qword ptr [rbp - 0x30]
000000014000c201  movsd      qword ptr [rbp - 0x20], xmm0
000000014000c206  mov        rax, qword ptr [rbp - 0x20]
000000014000c20a  shr        rax, 0x20
000000014000c20e  test       eax, eax
000000014000c210  jne        0x14000c276
000000014000c212  mov        eax, dword ptr [rbp - 0x20]
000000014000c215  test       eax, eax
000000014000c217  je         0x14000c246
000000014000c219  cmp        eax, 5
000000014000c21c  jne        0x14000c239
000000014000c21e  call       0x140006ec0
000000014000c223  mov        dword ptr [rax], 9
000000014000c229  call       0x140006ea0
000000014000c22e  mov        dword ptr [rax], 5
000000014000c234  jmp        0x14000bffb
000000014000c239  mov        ecx, dword ptr [rbp - 0x20]
000000014000c23c  call       0x140006e50
000000014000c241  jmp        0x14000bffb
000000014000c246  lea        rax, [rip + 0xe5f3]
000000014000c24d  mov        rax, qword ptr [rax + r13*8]
000000014000c251  test       byte ptr [rax + r15*8 + 0x38], 0x40
000000014000c257  je         0x14000c25e
000000014000c259  cmp        byte ptr [rdi], 0x1a
000000014000c25c  je         0x14000c27d
000000014000c25e  call       0x140006ec0
000000014000c263  mov        dword ptr [rax], 0x1c
000000014000c269  call       0x140006ea0
000000014000c26e  and        dword ptr [rax], 0
000000014000c271  jmp        0x14000bffb
000000014000c276  mov        eax, dword ptr [rbp - 0x1c]
000000014000c279  sub        eax, ebx
000000014000c27b  jmp        0x14000c27f
000000014000c27d  xor        eax, eax
000000014000c27f  mov        rbx, qword ptr [rsp + 0xb8]
000000014000c287  add        rsp, 0x60
000000014000c28b  pop        r15
000000014000c28d  pop        r14
000000014000c28f  pop        r13
000000014000c291  pop        r12
000000014000c293  pop        rdi
000000014000c294  pop        rsi
000000014000c295  pop        rbp
000000014000c296  ret        
000000014000c297  int3       
000000014000c298  mov        qword ptr [rsp + 8], rbx
000000014000c29d  push       rdi
000000014000c29e  sub        rsp, 0x30
000000014000c2a2  and        dword ptr [rsp + 0x20], 0
000000014000c2a7  mov        ecx, 8
000000014000c2ac  call       0x1400089b8
000000014000c2b1  nop        
000000014000c2b2  mov        ebx, 3
000000014000c2b7  mov        dword ptr [rsp + 0x24], ebx
000000014000c2bb  cmp        ebx, dword ptr [rip + 0xeb77]
000000014000c2c1  je         0x14000c330
000000014000c2c3  movsxd     rdi, ebx
000000014000c2c6  mov        rax, qword ptr [rip + 0xeb73]
000000014000c2cd  mov        rcx, qword ptr [rax + rdi*8]
000000014000c2d1  test       rcx, rcx
000000014000c2d4  jne        0x14000c2d8
000000014000c2d6  jmp        0x14000c32c
000000014000c2d8  mov        eax, dword ptr [rcx + 0x14]
000000014000c2db  shr        eax, 0xd
000000014000c2de  test       al, 1
000000014000c2e0  je         0x14000c2fb
000000014000c2e2  mov        rcx, qword ptr [rip + 0xeb57]
000000014000c2e9  mov        rcx, qword ptr [rcx + rdi*8]
000000014000c2ed  call       0x14000c768
000000014000c2f2  cmp        eax, -1
000000014000c2f5  je         0x14000c2fb
000000014000c2f7  inc        dword ptr [rsp + 0x20]
000000014000c2fb  mov        rax, qword ptr [rip + 0xeb3e]
000000014000c302  mov        rcx, qword ptr [rax + rdi*8]
000000014000c306  add        rcx, 0x30
000000014000c30a  call       qword ptr [rip + 0x1e60] ; KERNEL32.dll!DeleteCriticalSection
000000014000c310  mov        rcx, qword ptr [rip + 0xeb29]
000000014000c317  mov        rcx, qword ptr [rcx + rdi*8]
000000014000c31b  call       0x140007770
000000014000c320  mov        rax, qword ptr [rip + 0xeb19]
000000014000c327  and        qword ptr [rax + rdi*8], 0
000000014000c32c  inc        ebx
000000014000c32e  jmp        0x14000c2b7
000000014000c330  mov        ecx, 8
000000014000c335  call       0x140008a18
000000014000c33a  mov        eax, dword ptr [rsp + 0x20]
000000014000c33e  mov        rbx, qword ptr [rsp + 0x40]
000000014000c343  add        rsp, 0x30
000000014000c347  pop        rdi
000000014000c348  ret        
000000014000c349  int3       
000000014000c34a  int3       
000000014000c34b  int3       
000000014000c34c  push       rbx
000000014000c34e  sub        rsp, 0x20
000000014000c352  mov        eax, dword ptr [rcx + 0x14]
000000014000c355  mov        rbx, rcx
000000014000c358  shr        eax, 0xd
000000014000c35b  test       al, 1
000000014000c35d  je         0x14000c386
000000014000c35f  mov        eax, dword ptr [rcx + 0x14]
000000014000c362  shr        eax, 6
000000014000c365  test       al, 1
000000014000c367  je         0x14000c386
000000014000c369  mov        rcx, qword ptr [rcx + 8]
000000014000c36d  call       0x140007770
000000014000c372  lock and   dword ptr [rbx + 0x14], 0xfffffebf
000000014000c37a  xor        eax, eax
000000014000c37c  mov        qword ptr [rbx + 8], rax
000000014000c380  mov        qword ptr [rbx], rax
000000014000c383  mov        dword ptr [rbx + 0x10], eax
000000014000c386  add        rsp, 0x20
000000014000c38a  pop        rbx
000000014000c38b  ret        
000000014000c38c  sub        rsp, 0x28
000000014000c390  cmp        ecx, -2
000000014000c393  jne        0x14000c3a2
000000014000c395  call       0x140006ec0
000000014000c39a  mov        dword ptr [rax], 9
000000014000c3a0  jmp        0x14000c3e4
000000014000c3a2  test       ecx, ecx
000000014000c3a4  js         0x14000c3d4
000000014000c3a6  cmp        ecx, dword ptr [rip + 0xe894]
000000014000c3ac  jae        0x14000c3d4
000000014000c3ae  movsxd     rcx, ecx
000000014000c3b1  lea        rdx, [rip + 0xe488]
000000014000c3b8  mov        rax, rcx
000000014000c3bb  and        ecx, 0x3f
000000014000c3be  sar        rax, 6
000000014000c3c2  lea        rcx, [rcx + rcx*8]
000000014000c3c6  mov        rax, qword ptr [rdx + rax*8]
000000014000c3ca  movzx      eax, byte ptr [rax + rcx*8 + 0x38]
000000014000c3cf  and        eax, 0x40
000000014000c3d2  jmp        0x14000c3e6
000000014000c3d4  call       0x140006ec0
000000014000c3d9  mov        dword ptr [rax], 9
000000014000c3df  call       0x140006ce4
000000014000c3e4  xor        eax, eax
000000014000c3e6  add        rsp, 0x28
000000014000c3ea  ret        
000000014000c3eb  int3       
000000014000c3ec  push       rbx
000000014000c3ee  sub        rsp, 0x40
000000014000c3f2  movsxd     rbx, ecx
000000014000c3f5  lea        rcx, [rsp + 0x20]
000000014000c3fa  call       0x140005474
000000014000c3ff  lea        eax, [rbx + 1]
000000014000c402  cmp        eax, 0x100
000000014000c407  ja         0x14000c41c
000000014000c409  mov        rax, qword ptr [rsp + 0x28]
000000014000c40e  mov        rcx, qword ptr [rax]
000000014000c411  movzx      eax, word ptr [rcx + rbx*2]
000000014000c415  and        eax, 0x8000
000000014000c41a  jmp        0x14000c41e
000000014000c41c  xor        eax, eax
000000014000c41e  cmp        byte ptr [rsp + 0x38], 0
000000014000c423  je         0x14000c431
000000014000c425  mov        rcx, qword ptr [rsp + 0x20]
000000014000c42a  and        dword ptr [rcx + 0x3a8], 0xfffffffd
000000014000c431  add        rsp, 0x40
000000014000c435  pop        rbx
000000014000c436  ret        
000000014000c437  int3       
000000014000c438  push       rbx
000000014000c43a  sub        rsp, 0x30
000000014000c43e  mov        rbx, rcx
000000014000c441  lea        rcx, [rsp + 0x20]
000000014000c446  call       0x14000c7cc
000000014000c44b  cmp        rax, 4
000000014000c44f  ja         0x14000c46b
000000014000c451  mov        edx, dword ptr [rsp + 0x20]
000000014000c455  mov        ecx, 0xfffd
000000014000c45a  cmp        edx, 0xffff
000000014000c460  cmova      edx, ecx
000000014000c463  test       rbx, rbx
000000014000c466  je         0x14000c46b
000000014000c468  mov        word ptr [rbx], dx
000000014000c46b  add        rsp, 0x30
000000014000c46f  pop        rbx
000000014000c470  ret        
000000014000c471  int3       
000000014000c472  int3       
000000014000c473  int3       
000000014000c474  mov        qword ptr [rsp + 0x10], rbx
000000014000c479  mov        qword ptr [rsp + 0x18], rbp
000000014000c47e  push       rdi
000000014000c47f  push       r12
000000014000c481  push       r13
000000014000c483  push       r14
000000014000c485  push       r15
000000014000c487  sub        rsp, 0x20
000000014000c48b  mov        rdi, qword ptr [rdx]
000000014000c48e  xor        r13d, r13d
000000014000c491  mov        r12, r9
000000014000c494  mov        rbp, r8
000000014000c497  mov        r14, rdx
000000014000c49a  mov        r15, rcx
000000014000c49d  test       rcx, rcx
000000014000c4a0  je         0x14000c594
000000014000c4a6  mov        rbx, rcx
000000014000c4a9  test       r8, r8
000000014000c4ac  je         0x14000c553
000000014000c4b2  cmp        byte ptr [rdi], r13b
000000014000c4b5  jne        0x14000c4bf
000000014000c4b7  mov        r8d, 1
000000014000c4bd  jmp        0x14000c4dc
000000014000c4bf  cmp        byte ptr [rdi + 1], r13b
000000014000c4c3  jne        0x14000c4cd
000000014000c4c5  mov        r8d, 2
000000014000c4cb  jmp        0x14000c4dc
000000014000c4cd  mov        al, byte ptr [rdi + 2]
000000014000c4d0  neg        al
000000014000c4d2  sbb        r8, r8
000000014000c4d5  neg        r8
000000014000c4d8  add        r8, 3
000000014000c4dc  mov        r9, r12
000000014000c4df  lea        rcx, [rsp + 0x50]
000000014000c4e4  mov        rdx, rdi
000000014000c4e7  call       0x14000c7cc
000000014000c4ec  mov        rdx, rax
000000014000c4ef  cmp        rax, -1
000000014000c4f3  je         0x14000c56a
000000014000c4f5  test       rax, rax
000000014000c4f8  je         0x14000c561
000000014000c4fa  mov        ecx, dword ptr [rsp + 0x50]
000000014000c4fe  cmp        ecx, 0xffff
000000014000c504  jbe        0x14000c53f
000000014000c506  cmp        rbp, 1
000000014000c50a  jbe        0x14000c553
000000014000c50c  add        ecx, 0xffff0000
000000014000c512  mov        r8d, 0xd800
000000014000c518  mov        eax, ecx
000000014000c51a  mov        dword ptr [rsp + 0x50], ecx
000000014000c51e  shr        eax, 0xa
000000014000c521  dec        rbp
000000014000c524  or         ax, r8w
000000014000c528  mov        word ptr [rbx], ax
000000014000c52b  mov        eax, 0x3ff
000000014000c530  and        cx, ax
000000014000c533  add        rbx, 2
000000014000c537  mov        eax, 0xdc00
000000014000c53c  or         cx, ax
000000014000c53f  mov        word ptr [rbx], cx
000000014000c542  add        rdi, rdx
000000014000c545  add        rbx, 2
000000014000c549  sub        rbp, 1
000000014000c54d  jne        0x14000c4b2
000000014000c553  sub        rbx, r15
000000014000c556  mov        qword ptr [r14], rdi
000000014000c559  sar        rbx, 1
000000014000c55c  mov        rax, rbx
000000014000c55f  jmp        0x14000c57c
000000014000c561  mov        rdi, r13
000000014000c564  mov        word ptr [rbx], r13w
000000014000c568  jmp        0x14000c553
000000014000c56a  mov        qword ptr [r14], rdi
000000014000c56d  call       0x140006ec0
000000014000c572  mov        dword ptr [rax], 0x2a
000000014000c578  or         rax, 0xffffffffffffffff
000000014000c57c  mov        rbx, qword ptr [rsp + 0x58]
000000014000c581  mov        rbp, qword ptr [rsp + 0x60]
000000014000c586  add        rsp, 0x20
000000014000c58a  pop        r15
000000014000c58c  pop        r14
000000014000c58e  pop        r13
000000014000c590  pop        r12
000000014000c592  pop        rdi
000000014000c593  ret        
000000014000c594  mov        rbx, r13
000000014000c597  cmp        byte ptr [rdi], r13b
000000014000c59a  jne        0x14000c5a4
000000014000c59c  mov        r8d, 1
000000014000c5a2  jmp        0x14000c5c1
000000014000c5a4  cmp        byte ptr [rdi + 1], r13b
000000014000c5a8  jne        0x14000c5b2
000000014000c5aa  mov        r8d, 2
000000014000c5b0  jmp        0x14000c5c1
000000014000c5b2  mov        al, byte ptr [rdi + 2]
000000014000c5b5  neg        al
000000014000c5b7  sbb        r8, r8
000000014000c5ba  neg        r8
000000014000c5bd  add        r8, 3
000000014000c5c1  mov        r9, r12
000000014000c5c4  mov        rdx, rdi
000000014000c5c7  xor        ecx, ecx
000000014000c5c9  call       0x14000c7cc
000000014000c5ce  cmp        rax, -1
000000014000c5d2  je         0x14000c56d
000000014000c5d4  test       rax, rax
000000014000c5d7  je         0x14000c55c
000000014000c5d9  cmp        rax, 4
000000014000c5dd  jne        0x14000c5e2
000000014000c5df  inc        rbx
000000014000c5e2  add        rdi, rax
000000014000c5e5  inc        rbx
000000014000c5e8  jmp        0x14000c597
000000014000c5ea  int3       
000000014000c5eb  int3       
000000014000c5ec  xor        eax, eax
000000014000c5ee  cmp        byte ptr [rcx], al
000000014000c5f0  je         0x14000c600
000000014000c5f2  cmp        rax, rdx
000000014000c5f5  je         0x14000c600
000000014000c5f7  inc        rax
000000014000c5fa  cmp        byte ptr [rax + rcx], 0
000000014000c5fe  jne        0x14000c5f2
000000014000c600  ret        
000000014000c601  int3       
000000014000c602  int3       
000000014000c603  int3       
000000014000c604  mov        qword ptr [rsp + 8], rbx
000000014000c609  mov        qword ptr [rsp + 0x10], rsi
000000014000c60e  push       rdi
000000014000c60f  sub        rsp, 0x20
000000014000c613  movsxd     rbx, ecx
000000014000c616  mov        edi, r8d
000000014000c619  mov        ecx, ebx
000000014000c61b  mov        rsi, rdx
000000014000c61e  call       0x140008d1c
000000014000c623  cmp        rax, -1
000000014000c627  jne        0x14000c63a
000000014000c629  call       0x140006ec0
000000014000c62e  mov        dword ptr [rax], 9
000000014000c634  or         rax, 0xffffffffffffffff
000000014000c638  jmp        0x14000c68d
000000014000c63a  mov        r9d, edi
000000014000c63d  lea        r8, [rsp + 0x48]
000000014000c642  mov        rdx, rsi
000000014000c645  mov        rcx, rax
000000014000c648  call       qword ptr [rip + 0x1c12] ; KERNEL32.dll!SetFilePointerEx
000000014000c64e  test       eax, eax
000000014000c650  jne        0x14000c661
000000014000c652  call       qword ptr [rip + 0x1af8] ; KERNEL32.dll!GetLastError
000000014000c658  mov        ecx, eax
000000014000c65a  call       0x140006e50
000000014000c65f  jmp        0x14000c634
000000014000c661  mov        rax, qword ptr [rsp + 0x48]
000000014000c666  cmp        rax, -1
000000014000c66a  je         0x14000c634
000000014000c66c  mov        rdx, rbx
000000014000c66f  lea        r8, [rip + 0xe1ca]
000000014000c676  and        edx, 0x3f
000000014000c679  mov        rcx, rbx
000000014000c67c  sar        rcx, 6
000000014000c680  lea        rdx, [rdx + rdx*8]
000000014000c684  mov        rcx, qword ptr [r8 + rcx*8]
000000014000c688  and        byte ptr [rcx + rdx*8 + 0x38], 0xfd
000000014000c68d  mov        rbx, qword ptr [rsp + 0x30]
000000014000c692  mov        rsi, qword ptr [rsp + 0x38]
000000014000c697  add        rsp, 0x20
000000014000c69b  pop        rdi
000000014000c69c  ret        
000000014000c69d  int3       
000000014000c69e  int3       
000000014000c69f  int3       
000000014000c6a0  jmp        0x14000c604
000000014000c6a5  int3       
000000014000c6a6  int3       
000000014000c6a7  int3       
000000014000c6a8  mov        word ptr [rsp + 8], cx
000000014000c6ad  sub        rsp, 0x28
000000014000c6b1  call       0x14000cf5c
000000014000c6b6  test       eax, eax
000000014000c6b8  je         0x14000c6d9
000000014000c6ba  lea        r8, [rsp + 0x38]
000000014000c6bf  mov        edx, 1
000000014000c6c4  lea        rcx, [rsp + 0x30]
000000014000c6c9  call       0x14000cfcc
000000014000c6ce  test       eax, eax
000000014000c6d0  je         0x14000c6d9
000000014000c6d2  movzx      eax, word ptr [rsp + 0x30]
000000014000c6d7  jmp        0x14000c6de
000000014000c6d9  mov        eax, 0xffff
000000014000c6de  add        rsp, 0x28
000000014000c6e2  ret        
000000014000c6e3  int3       
000000014000c6e4  mov        qword ptr [rsp + 8], rbx
000000014000c6e9  push       rdi
000000014000c6ea  sub        rsp, 0x20
000000014000c6ee  mov        rbx, rcx
000000014000c6f1  test       rcx, rcx
000000014000c6f4  jne        0x14000c70b
000000014000c6f6  call       0x140006ec0
000000014000c6fb  mov        dword ptr [rax], 0x16
000000014000c701  call       0x140006ce4
000000014000c706  or         eax, 0xffffffff
000000014000c709  jmp        0x14000c75c
000000014000c70b  mov        eax, dword ptr [rcx + 0x14]
000000014000c70e  or         edi, 0xffffffff
000000014000c711  shr        eax, 0xd
000000014000c714  test       al, 1
000000014000c716  je         0x14000c752
000000014000c718  call       0x14000a764
000000014000c71d  mov        rcx, rbx
000000014000c720  mov        edi, eax
000000014000c722  call       0x14000c34c
000000014000c727  mov        rcx, rbx
000000014000c72a  call       0x14000ab5c
000000014000c72f  mov        ecx, eax
000000014000c731  call       0x14000d100
000000014000c736  test       eax, eax
000000014000c738  jns        0x14000c73f
000000014000c73a  or         edi, 0xffffffff
000000014000c73d  jmp        0x14000c752
000000014000c73f  mov        rcx, qword ptr [rbx + 0x28]
000000014000c743  test       rcx, rcx
000000014000c746  je         0x14000c752
000000014000c748  call       0x140007770
000000014000c74d  and        qword ptr [rbx + 0x28], 0
000000014000c752  mov        rcx, rbx
000000014000c755  call       0x14000d264
000000014000c75a  mov        eax, edi
000000014000c75c  mov        rbx, qword ptr [rsp + 0x30]
000000014000c761  add        rsp, 0x20
000000014000c765  pop        rdi
000000014000c766  ret        
000000014000c767  int3       
000000014000c768  mov        qword ptr [rsp + 0x10], rbx
000000014000c76d  mov        qword ptr [rsp + 8], rcx
000000014000c772  push       rdi
000000014000c773  sub        rsp, 0x20
000000014000c777  mov        rbx, rcx
000000014000c77a  test       rcx, rcx
000000014000c77d  jne        0x14000c79d
000000014000c77f  call       0x140006ec0
000000014000c784  mov        dword ptr [rax], 0x16
000000014000c78a  call       0x140006ce4
000000014000c78f  or         eax, 0xffffffff
000000014000c792  mov        rbx, qword ptr [rsp + 0x38]
000000014000c797  add        rsp, 0x20
000000014000c79b  pop        rdi
000000014000c79c  ret        
000000014000c79d  mov        eax, dword ptr [rcx + 0x14]
000000014000c7a0  shr        eax, 0xc
000000014000c7a3  test       al, 1
000000014000c7a5  je         0x14000c7ae
000000014000c7a7  call       0x14000d264
000000014000c7ac  jmp        0x14000c78f
000000014000c7ae  call       0x14000a9bc
000000014000c7b3  nop        
000000014000c7b4  mov        rcx, rbx
000000014000c7b7  call       0x14000c6e4
000000014000c7bc  mov        edi, eax
000000014000c7be  mov        rcx, rbx
000000014000c7c1  call       0x14000a9c8
000000014000c7c6  mov        eax, edi
000000014000c7c8  jmp        0x14000c792
000000014000c7ca  int3       
000000014000c7cb  int3       
000000014000c7cc  mov        qword ptr [rsp + 0x10], rbx
000000014000c7d1  push       rbp
000000014000c7d2  push       rsi
000000014000c7d3  push       rdi
000000014000c7d4  push       r14
000000014000c7d6  push       r15
000000014000c7d8  sub        rsp, 0x40
000000014000c7dc  mov        rax, qword ptr [rip + 0xc8e5]
000000014000c7e3  xor        rax, rsp
000000014000c7e6  mov        qword ptr [rsp + 0x30], rax
000000014000c7eb  xor        r10d, r10d
000000014000c7ee  lea        r11, [rip + 0xe66b]
000000014000c7f5  test       r9, r9
000000014000c7f8  lea        rdi, [rip + 0x33e3]
000000014000c7ff  mov        rax, rdx
000000014000c802  mov        r15, rdx
000000014000c805  cmovne     r11, r9
000000014000c809  test       rdx, rdx
000000014000c80c  lea        ebp, [r10 + 1]
000000014000c810  cmovne     rdi, rdx
000000014000c814  mov        r14d, ebp
000000014000c817  cmovne     r14, r8
000000014000c81b  neg        rax
000000014000c81e  sbb        rsi, rsi
000000014000c821  and        rsi, rcx
000000014000c824  test       r14, r14
000000014000c827  jne        0x14000c835
000000014000c829  mov        rax, 0xfffffffffffffffe
000000014000c830  jmp        0x14000c983
000000014000c835  cmp        word ptr [r11 + 6], r10w
000000014000c83a  jne        0x14000c8a4
000000014000c83c  movzx      r9d, byte ptr [rdi]
000000014000c840  inc        rdi
000000014000c843  test       r9b, r9b
000000014000c846  js         0x14000c85f
000000014000c848  test       rsi, rsi
000000014000c84b  je         0x14000c850
000000014000c84d  mov        dword ptr [rsi], r9d
000000014000c850  test       r9b, r9b
000000014000c853  setne      r10b
000000014000c857  mov        rax, r10
000000014000c85a  jmp        0x14000c983
000000014000c85f  mov        al, r9b
000000014000c862  and        al, 0xe0
000000014000c864  cmp        al, 0xc0
000000014000c866  jne        0x14000c86d
000000014000c868  mov        r8b, 2
000000014000c86b  jmp        0x14000c88b
000000014000c86d  mov        al, r9b
000000014000c870  and        al, 0xf0
000000014000c872  cmp        al, 0xe0
000000014000c874  jne        0x14000c87b
000000014000c876  mov        r8b, 3
000000014000c879  jmp        0x14000c88b
000000014000c87b  mov        al, r9b
000000014000c87e  and        al, 0xf8
000000014000c880  cmp        al, 0xf0
000000014000c882  jne        0x14000c971
000000014000c888  mov        r8b, 4
000000014000c88b  movzx      eax, r8b
000000014000c88f  mov        ecx, 7
000000014000c894  sub        ecx, eax
000000014000c896  mov        edx, ebp
000000014000c898  shl        edx, cl
000000014000c89a  mov        bl, r8b
000000014000c89d  sub        edx, ebp
000000014000c89f  and        edx, r9d
000000014000c8a2  jmp        0x14000c8cd
000000014000c8a4  mov        r8b, byte ptr [r11 + 4]
000000014000c8a8  mov        edx, dword ptr [r11]
000000014000c8ab  mov        bl, byte ptr [r11 + 6]
000000014000c8af  lea        eax, [r8 - 2]
000000014000c8b3  cmp        al, 2
000000014000c8b5  ja         0x14000c971
000000014000c8bb  cmp        bl, bpl
000000014000c8be  jb         0x14000c971
000000014000c8c4  cmp        bl, r8b
000000014000c8c7  jae        0x14000c971
000000014000c8cd  movzx      ebp, bl
000000014000c8d0  cmp        rbp, r14
000000014000c8d3  mov        r9d, ebp
000000014000c8d6  cmovae     r9, r14
000000014000c8da  jmp        0x14000c8fa
000000014000c8dc  movzx      ecx, byte ptr [rdi]
000000014000c8df  inc        rdi
000000014000c8e2  mov        al, cl
000000014000c8e4  and        al, 0xc0
000000014000c8e6  cmp        al, 0x80
000000014000c8e8  jne        0x14000c971
000000014000c8ee  mov        eax, edx
000000014000c8f0  and        ecx, 0x3f
000000014000c8f3  shl        eax, 6
000000014000c8f6  mov        edx, ecx
000000014000c8f8  or         edx, eax
000000014000c8fa  mov        rax, rdi
000000014000c8fd  sub        rax, r15
000000014000c900  cmp        rax, r9
000000014000c903  jb         0x14000c8dc
000000014000c905  cmp        r9, rbp
000000014000c908  jae        0x14000c926
000000014000c90a  movzx      eax, r8b
000000014000c90e  sub        bl, r9b
000000014000c911  mov        word ptr [r11 + 4], ax
000000014000c916  movzx      eax, bl
000000014000c919  mov        word ptr [r11 + 6], ax
000000014000c91e  mov        dword ptr [r11], edx
000000014000c921  jmp        0x14000c829
000000014000c926  lea        eax, [rdx - 0xd800]
000000014000c92c  cmp        eax, 0x7ff
000000014000c931  jbe        0x14000c971
000000014000c933  cmp        edx, 0x110000
000000014000c939  jae        0x14000c971
000000014000c93b  movzx      eax, r8b
000000014000c93f  mov        dword ptr [rsp + 0x20], 0x80
000000014000c947  mov        dword ptr [rsp + 0x24], 0x800
000000014000c94f  mov        dword ptr [rsp + 0x28], 0x10000
000000014000c957  cmp        edx, dword ptr [rsp + rax*4 + 0x18]
000000014000c95b  jb         0x14000c971
000000014000c95d  test       rsi, rsi
000000014000c960  je         0x14000c964
000000014000c962  mov        dword ptr [rsi], edx
000000014000c964  neg        edx
000000014000c966  mov        qword ptr [r11], r10
000000014000c969  sbb        rax, rax
000000014000c96c  and        rax, rbp
000000014000c96f  jmp        0x14000c983
000000014000c971  mov        qword ptr [r11], r10
000000014000c974  call       0x140006ec0
000000014000c979  mov        dword ptr [rax], 0x2a
000000014000c97f  or         rax, 0xffffffffffffffff
000000014000c983  mov        rcx, qword ptr [rsp + 0x30]
000000014000c988  xor        rcx, rsp
000000014000c98b  call       0x1400037e0
000000014000c990  mov        rbx, qword ptr [rsp + 0x78]
000000014000c995  add        rsp, 0x40
000000014000c999  pop        r15
000000014000c99b  pop        r14
000000014000c99d  pop        rdi
000000014000c99e  pop        rsi
000000014000c99f  pop        rbp
000000014000c9a0  ret        
000000014000c9a1  int3       
000000014000c9a2  int3       
000000014000c9a3  int3       
000000014000c9a4  int3       
000000014000c9a5  int3       
000000014000c9a6  int3       
000000014000c9a7  int3       
000000014000c9a8  int3       
000000014000c9a9  int3       
000000014000c9aa  int3       
000000014000c9ab  int3       
000000014000c9ac  int3       
000000014000c9ad  int3       
000000014000c9ae  int3       
000000014000c9af  int3       
000000014000c9b0  sub        rsp, 0x58
000000014000c9b4  movdqa     xmmword ptr [rsp + 0x20], xmm6
000000014000c9ba  cmp        dword ptr [rip + 0xe4ab], 0
000000014000c9c1  jne        0x14000ccb0
000000014000c9c7  movapd     xmm3, xmm0
000000014000c9cb  movapd     xmm4, xmm0
000000014000c9cf  psrlq      xmm3, 0x34
000000014000c9d4  movq       rax, xmm0
000000014000c9d9  psubq      xmm3, xmmword ptr [rip + 0x844f]
000000014000c9e1  movapd     xmm5, xmm0
000000014000c9e5  andpd      xmm5, xmmword ptr [rip + 0x8413]
000000014000c9ed  comisd     xmm5, xmmword ptr [rip + 0x840b]
000000014000c9f5  je         0x14000cc80
000000014000c9fb  movapd     xmm2, xmm0
000000014000c9ff  cvtdq2pd   xmm6, xmm3
000000014000ca03  xorpd      xmm5, xmm5
000000014000ca07  comisd     xmm0, xmm5
000000014000ca0b  jbe        0x14000cc40
000000014000ca11  pand       xmm2, xmmword ptr [rip + 0x8437]
000000014000ca19  subsd      xmm4, qword ptr [rip + 0x84bf]
000000014000ca21  comisd     xmm6, xmmword ptr [rip + 0x8547]
000000014000ca29  je         0x14000cc07
000000014000ca2f  andpd      xmm4, xmmword ptr [rip + 0x8599]
000000014000ca37  mov        r9, rax
000000014000ca3a  and        rax, qword ptr [rip + 0x841f]
000000014000ca41  and        r9, qword ptr [rip + 0x8428]
000000014000ca48  shl        r9, 1
000000014000ca4b  add        rax, r9
000000014000ca4e  movq       xmm1, rax
000000014000ca53  comisd     xmm4, xmmword ptr [rip + 0x8535]
000000014000ca5b  jb         0x14000cb40
000000014000ca61  shr        rax, 0x2c
000000014000ca65  por        xmm2, xmmword ptr [rip + 0x8483]
000000014000ca6d  por        xmm1, xmmword ptr [rip + 0x847b]
000000014000ca75  lea        r9, [rip + 0x95f4]
000000014000ca7c  subsd      xmm1, xmm2
000000014000ca80  mulsd      xmm1, qword ptr [r9 + rax*8]
000000014000ca86  movapd     xmm2, xmm1
000000014000ca8a  movapd     xmm0, xmm1
000000014000ca8e  lea        r9, [rip + 0x85bb]
000000014000ca95  movsd      xmm3, qword ptr [rip + 0x84c3] ; UUUUUU
000000014000ca9d  movsd      xmm1, qword ptr [rip + 0x848b] ; UUUUUU
000000014000caa5  mulsd      xmm3, xmm2
000000014000caa9  mulsd      xmm1, xmm2
000000014000caad  mulsd      xmm0, xmm2
000000014000cab1  movapd     xmm4, xmm0
000000014000cab5  addsd      xmm3, qword ptr [rip + 0x8493]
000000014000cabd  addsd      xmm1, qword ptr [rip + 0x845b]
000000014000cac5  mulsd      xmm4, xmm0
000000014000cac9  mulsd      xmm3, xmm2
000000014000cacd  mulsd      xmm1, xmm0
000000014000cad1  addsd      xmm3, qword ptr [rip + 0x8467]
000000014000cad9  addsd      xmm1, xmm2
000000014000cadd  mulsd      xmm3, xmm4
000000014000cae1  addsd      xmm1, xmm3
000000014000cae5  movsd      xmm5, qword ptr [rip + 0x83d3]
000000014000caed  mulsd      xmm1, qword ptr [rip + 0x838b]
000000014000caf5  mulsd      xmm5, xmm6
000000014000caf9  subsd      xmm5, xmm1
000000014000cafd  movsd      xmm0, qword ptr [r9 + rax*8]
000000014000cb03  lea        rdx, [rip + 0x8d56]
000000014000cb0a  movsd      xmm2, qword ptr [rdx + rax*8]
000000014000cb0f  movsd      xmm4, qword ptr [rip + 0x8399]
000000014000cb17  mulsd      xmm4, xmm6
000000014000cb1b  addsd      xmm0, xmm4
000000014000cb1f  addsd      xmm2, xmm5
000000014000cb23  addsd      xmm0, xmm2
000000014000cb27  movdqa     xmm6, xmmword ptr [rsp + 0x20]
000000014000cb2d  add        rsp, 0x58
000000014000cb31  ret        
000000014000cb32  nop        word ptr [rax + rax]
000000014000cb40  movsd      xmm2, qword ptr [rip + 0x8388]
000000014000cb48  subsd      xmm0, qword ptr [rip + 0x8390]
000000014000cb50  addsd      xmm2, xmm0
000000014000cb54  movapd     xmm1, xmm0
000000014000cb58  divsd      xmm1, xmm2
000000014000cb5c  movsd      xmm4, qword ptr [rip + 0x848c]
000000014000cb64  movsd      xmm5, qword ptr [rip + 0x84a4]
000000014000cb6c  movapd     xmm6, xmm0
000000014000cb70  mulsd      xmm6, xmm1
000000014000cb74  addsd      xmm1, xmm1
000000014000cb78  movapd     xmm2, xmm1
000000014000cb7c  mulsd      xmm2, xmm1
000000014000cb80  mulsd      xmm4, xmm2
000000014000cb84  mulsd      xmm5, xmm2
000000014000cb88  addsd      xmm4, qword ptr [rip + 0x8450]
000000014000cb90  addsd      xmm5, qword ptr [rip + 0x8468]
000000014000cb98  mulsd      xmm2, xmm1
000000014000cb9c  mulsd      xmm4, xmm2
000000014000cba0  mulsd      xmm2, xmm2
000000014000cba4  mulsd      xmm2, xmm1
000000014000cba8  mulsd      xmm5, xmm2
000000014000cbac  movsd      xmm2, qword ptr [rip + 0x82ec]
000000014000cbb4  addsd      xmm4, xmm5
000000014000cbb8  subsd      xmm4, xmm6
000000014000cbbc  movsd      xmm6, qword ptr [rip + 0x82cc]
000000014000cbc4  movapd     xmm3, xmm0
000000014000cbc8  pand       xmm3, xmmword ptr [rip + 0x8450]
000000014000cbd0  subsd      xmm0, xmm3
000000014000cbd4  addsd      xmm4, xmm0
000000014000cbd8  movapd     xmm0, xmm3
000000014000cbdc  movapd     xmm1, xmm4
000000014000cbe0  mulsd      xmm4, xmm2
000000014000cbe4  mulsd      xmm0, xmm2
000000014000cbe8  mulsd      xmm1, xmm6
000000014000cbec  mulsd      xmm3, xmm6
000000014000cbf0  addsd      xmm0, xmm4
000000014000cbf4  addsd      xmm0, xmm1
000000014000cbf8  addsd      xmm0, xmm3
000000014000cbfc  movdqa     xmm6, xmmword ptr [rsp + 0x20]
000000014000cc02  add        rsp, 0x58
000000014000cc06  ret        
000000014000cc07  por        xmm2, xmmword ptr [rip + 0x82d1]
000000014000cc0f  subsd      xmm2, qword ptr [rip + 0x82c9]
000000014000cc17  movsd      xmm5, xmm2
000000014000cc1b  pand       xmm2, xmmword ptr [rip + 0x822d]
000000014000cc23  movq       rax, xmm2
000000014000cc28  psrlq      xmm5, 0x34
000000014000cc2d  psubd      xmm5, xmmword ptr [rip + 0x834b]
000000014000cc35  cvtdq2pd   xmm6, xmm5
000000014000cc39  jmp        0x14000ca2f
000000014000cc3e  nop        
000000014000cc40  jne        0x14000cc60
000000014000cc42  movsd      xmm1, qword ptr [rip + 0x81a6]
000000014000cc4a  mov        r8d, dword ptr [rip + 0x83df]
000000014000cc51  call       0x14000d540
000000014000cc56  jmp        0x14000cca0
000000014000cc58  nop        dword ptr [rax + rax]
000000014000cc60  movsd      xmm1, qword ptr [rip + 0x81a8]
000000014000cc68  mov        r8d, dword ptr [rip + 0x83c5]
000000014000cc6f  call       0x14000d540
000000014000cc74  jmp        0x14000cca0
000000014000cc76  nop        word ptr [rax + rax]
000000014000cc80  cmp        rax, qword ptr [rip + 0x8179]
000000014000cc87  je         0x14000cca0
000000014000cc89  cmp        rax, qword ptr [rip + 0x8160]
000000014000cc90  je         0x14000cc60
000000014000cc92  or         rax, qword ptr [rip + 0x8187]
000000014000cc99  movq       xmm0, rax
000000014000cc9e  nop        
000000014000cca0  movdqa     xmm6, xmmword ptr [rsp + 0x20]
000000014000cca6  add        rsp, 0x58
000000014000ccaa  ret        
000000014000ccab  nop        dword ptr [rax + rax]
000000014000ccb0  xor        rax, rax
000000014000ccb3  vpsrlq     xmm3, xmm0, 0x34
000000014000ccb8  vmovq      rax, xmm0
000000014000ccbd  vpsubq     xmm3, xmm3, xmmword ptr [rip + 0x816b]
000000014000ccc5  vcvtdq2pd  xmm6, xmm3
000000014000ccc9  vpand      xmm5, xmm0, xmmword ptr [rip + 0x812f]
000000014000ccd1  vcomisd    xmm5, qword ptr [rip + 0x8127]
000000014000ccd9  je         0x14000cf20
000000014000ccdf  vpxor      xmm5, xmm5, xmm5
000000014000cce3  vcomisd    xmm0, xmm5
000000014000cce7  jbe        0x14000ced0
000000014000cced  vpand      xmm2, xmm0, xmmword ptr [rip + 0x815b]
000000014000ccf5  vsubsd     xmm4, xmm0, qword ptr [rip + 0x81e3]
000000014000ccfd  vcomisd    xmm6, qword ptr [rip + 0x826b]
000000014000cd05  je         0x14000ce99
000000014000cd0b  vpand      xmm1, xmm0, xmmword ptr [rip + 0x814d]
000000014000cd13  vpand      xmm3, xmm0, xmmword ptr [rip + 0x8155]
000000014000cd1b  vpsllq     xmm3, xmm3, 1
000000014000cd20  vpaddq     xmm1, xmm3, xmm1
000000014000cd24  vmovq      rax, xmm1
000000014000cd29  vpand      xmm4, xmm4, xmmword ptr [rip + 0x829f]
000000014000cd31  vcomisd    xmm4, qword ptr [rip + 0x8257]
000000014000cd39  jb         0x14000cdf0
000000014000cd3f  shr        rax, 0x2c
000000014000cd43  vpor       xmm2, xmm2, xmmword ptr [rip + 0x81a5]
000000014000cd4b  vpor       xmm1, xmm1, xmmword ptr [rip + 0x819d]
000000014000cd53  lea        r9, [rip + 0x9316]
000000014000cd5a  vsubsd     xmm1, xmm1, xmm2
000000014000cd5e  vmulsd     xmm1, xmm1, qword ptr [r9 + rax*8]
000000014000cd64  lea        r9, [rip + 0x82e5]
000000014000cd6b  vmulsd     xmm0, xmm1, xmm1
000000014000cd6f  vmovsd     xmm3, qword ptr [rip + 0x81e9] ; UUUUUU
000000014000cd77  vmovsd     xmm5, qword ptr [rip + 0x81b1] ; UUUUUU
000000014000cd7f  vfmadd213sd xmm3, xmm1, qword ptr [rip + 0x81c8]
000000014000cd88  vfmadd213sd xmm5, xmm1, qword ptr [rip + 0x815f]
000000014000cd91  movsd      xmm4, xmm0
000000014000cd95  vfmadd213sd xmm3, xmm1, qword ptr [rip + 0x81a2]
000000014000cd9e  vmulsd     xmm4, xmm0, xmm0
000000014000cda2  vfmadd231sd xmm1, xmm5, xmm0
000000014000cda7  vfmadd231sd xmm1, xmm3, xmm4
000000014000cdac  vmulsd     xmm1, xmm1, qword ptr [rip + 0x80cc]
000000014000cdb4  vmovsd     xmm5, qword ptr [rip + 0x8104]
000000014000cdbc  vfmsub213sd xmm5, xmm6, xmm1
000000014000cdc1  movsd      xmm0, qword ptr [r9 + rax*8]
000000014000cdc7  lea        rdx, [rip + 0x8a92]
000000014000cdce  movsd      xmm2, qword ptr [rdx + rax*8]
000000014000cdd3  vaddsd     xmm2, xmm2, xmm5
000000014000cdd7  vfmadd231sd xmm0, xmm6, qword ptr [rip + 0x80d0]
000000014000cde0  vaddsd     xmm0, xmm0, xmm2
000000014000cde4  vmovdqa    xmm6, xmmword ptr [rsp + 0x20]
000000014000cdea  add        rsp, 0x58
000000014000cdee  ret        
000000014000cdef  nop        
000000014000cdf0  vmovsd     xmm2, qword ptr [rip + 0x80d8]
000000014000cdf8  vsubsd     xmm0, xmm0, qword ptr [rip + 0x80e0]
000000014000ce00  vaddsd     xmm2, xmm2, xmm0
000000014000ce04  vdivsd     xmm1, xmm0, xmm2
000000014000ce08  vmovsd     xmm4, qword ptr [rip + 0x81e0]
000000014000ce10  vmovsd     xmm5, qword ptr [rip + 0x81f8]
000000014000ce18  vmulsd     xmm6, xmm0, xmm1
000000014000ce1c  vaddsd     xmm1, xmm1, xmm1
000000014000ce20  vmulsd     xmm2, xmm1, xmm1
000000014000ce24  vfmadd213sd xmm4, xmm2, qword ptr [rip + 0x81b3]
000000014000ce2d  vfmadd213sd xmm5, xmm2, qword ptr [rip + 0x81ca]
000000014000ce36  vmulsd     xmm2, xmm2, xmm1
000000014000ce3a  vmulsd     xmm4, xmm4, xmm2
000000014000ce3e  vmulsd     xmm2, xmm2, xmm2
000000014000ce42  vmulsd     xmm2, xmm2, xmm1
000000014000ce46  vmulsd     xmm5, xmm5, xmm2
000000014000ce4a  vaddsd     xmm4, xmm4, xmm5
000000014000ce4e  vsubsd     xmm4, xmm4, xmm6
000000014000ce52  vpand      xmm3, xmm0, xmmword ptr [rip + 0x81c6]
000000014000ce5a  vsubsd     xmm0, xmm0, xmm3
000000014000ce5e  vaddsd     xmm4, xmm4, xmm0
000000014000ce62  vmulsd     xmm1, xmm4, qword ptr [rip + 0x8026]
000000014000ce6a  vmulsd     xmm4, xmm4, qword ptr [rip + 0x802e]
000000014000ce72  vmulsd     xmm0, xmm3, qword ptr [rip + 0x8026]
000000014000ce7a  vmulsd     xmm3, xmm3, qword ptr [rip + 0x800e]
000000014000ce82  vaddsd     xmm0, xmm0, xmm4
000000014000ce86  vaddsd     xmm0, xmm0, xmm1
000000014000ce8a  vaddsd     xmm0, xmm0, xmm3
000000014000ce8e  vmovdqa    xmm6, xmmword ptr [rsp + 0x20]
000000014000ce94  add        rsp, 0x58
000000014000ce98  ret        
000000014000ce99  vpor       xmm2, xmm2, xmmword ptr [rip + 0x803f]
000000014000cea1  vsubsd     xmm2, xmm2, qword ptr [rip + 0x8037]
000000014000cea9  vpsrlq     xmm5, xmm2, 0x34
000000014000ceae  vpand      xmm2, xmm2, xmmword ptr [rip + 0x7f9a]
000000014000ceb6  vmovapd    xmm0, xmm2
000000014000ceba  vpsubd     xmm5, xmm5, xmmword ptr [rip + 0x80be]
000000014000cec2  vcvtdq2pd  xmm6, xmm5
000000014000cec6  jmp        0x14000cd0b
000000014000cecb  nop        dword ptr [rax + rax]
000000014000ced0  jne        0x14000cf00
000000014000ced2  vmovsd     xmm1, qword ptr [rip + 0x7f16]
000000014000ceda  mov        r8d, dword ptr [rip + 0x814f]
000000014000cee1  call       0x14000d540
000000014000cee6  vmovdqa    xmm6, xmmword ptr [rsp + 0x20]
000000014000ceec  add        rsp, 0x58
000000014000cef0  ret        
000000014000cef1  nop        word ptr [rax + rax]
000000014000cf00  vmovsd     xmm1, qword ptr [rip + 0x7f08]
000000014000cf08  mov        r8d, dword ptr [rip + 0x8125]
000000014000cf0f  call       0x14000d540
000000014000cf14  vmovdqa    xmm6, xmmword ptr [rsp + 0x20]
000000014000cf1a  add        rsp, 0x58
000000014000cf1e  ret        
000000014000cf1f  nop        
000000014000cf20  cmp        rax, qword ptr [rip + 0x7ed9]
000000014000cf27  je         0x14000cf50
000000014000cf29  cmp        rax, qword ptr [rip + 0x7ec0]
000000014000cf30  je         0x14000cf00
000000014000cf32  or         rax, qword ptr [rip + 0x7ee7]
000000014000cf39  movq       xmm1, rax
000000014000cf3e  mov        r8d, dword ptr [rip + 0x80f3]
000000014000cf45  call       0x14000d540
000000014000cf4a  jmp        0x14000cf50
000000014000cf4c  nop        dword ptr [rax]
000000014000cf50  vmovdqa    xmm6, xmmword ptr [rsp + 0x20]
000000014000cf56  add        rsp, 0x58
000000014000cf5a  ret        
000000014000cf5b  int3       
000000014000cf5c  push       rbx
000000014000cf5e  sub        rsp, 0x40
000000014000cf62  mov        rax, qword ptr [rip + 0xcb37]
000000014000cf69  xor        ebx, ebx
000000014000cf6b  cmp        rax, -2
000000014000cf6f  jne        0x14000cf9f
000000014000cf71  mov        qword ptr [rsp + 0x30], rbx
000000014000cf76  lea        r8d, [rbx + 3]
000000014000cf7a  mov        dword ptr [rsp + 0x28], ebx
000000014000cf7e  lea        rcx, [rip + 0x80bb] ; CONOUT$
000000014000cf85  xor        r9d, r9d
000000014000cf88  mov        dword ptr [rsp + 0x20], r8d
000000014000cf8d  mov        edx, 0x40000000
000000014000cf92  call       qword ptr [rip + 0x1078] ; KERNEL32.dll!CreateFileW
000000014000cf98  mov        qword ptr [rip + 0xcb01], rax
000000014000cf9f  cmp        rax, -1
000000014000cfa3  setne      bl
000000014000cfa6  mov        eax, ebx
000000014000cfa8  add        rsp, 0x40
000000014000cfac  pop        rbx
000000014000cfad  ret        
000000014000cfae  int3       
000000014000cfaf  int3       
000000014000cfb0  sub        rsp, 0x28
000000014000cfb4  mov        rcx, qword ptr [rip + 0xcae5]
000000014000cfbb  cmp        rcx, -3
000000014000cfbf  ja         0x14000cfc7
000000014000cfc1  call       qword ptr [rip + 0x1081] ; KERNEL32.dll!CloseHandle
000000014000cfc7  add        rsp, 0x28
000000014000cfcb  ret        
000000014000cfcc  mov        rax, rsp
000000014000cfcf  mov        qword ptr [rax + 8], rbx
000000014000cfd3  mov        qword ptr [rax + 0x10], rbp
000000014000cfd7  mov        qword ptr [rax + 0x18], rsi
000000014000cfdb  push       rdi
000000014000cfdc  sub        rsp, 0x40
000000014000cfe0  and        qword ptr [rax - 0x28], 0
000000014000cfe5  mov        rdi, r8
000000014000cfe8  mov        r9, r8
000000014000cfeb  mov        esi, edx
000000014000cfed  mov        r8d, edx
000000014000cff0  mov        rbp, rcx
000000014000cff3  mov        rdx, rcx
000000014000cff6  mov        rcx, qword ptr [rip + 0xcaa3]
000000014000cffd  call       qword ptr [rip + 0x10bd] ; KERNEL32.dll!WriteConsoleW
000000014000d003  mov        ebx, eax
000000014000d005  test       eax, eax
000000014000d007  jne        0x14000d073
000000014000d009  call       qword ptr [rip + 0x1141] ; KERNEL32.dll!GetLastError
000000014000d00f  cmp        eax, 6
000000014000d012  jne        0x14000d073
000000014000d014  mov        rcx, qword ptr [rip + 0xca85]
000000014000d01b  cmp        rcx, -3
000000014000d01f  ja         0x14000d027
000000014000d021  call       qword ptr [rip + 0x1021] ; KERNEL32.dll!CloseHandle
000000014000d027  and        qword ptr [rsp + 0x30], 0
000000014000d02d  lea        rcx, [rip + 0x800c] ; CONOUT$
000000014000d034  and        dword ptr [rsp + 0x28], 0
000000014000d039  mov        r8d, 3
000000014000d03f  xor        r9d, r9d
000000014000d042  mov        dword ptr [rsp + 0x20], r8d
000000014000d047  mov        edx, 0x40000000
000000014000d04c  call       qword ptr [rip + 0xfbe] ; KERNEL32.dll!CreateFileW
000000014000d052  and        qword ptr [rsp + 0x20], 0
000000014000d058  mov        r9, rdi
000000014000d05b  mov        rcx, rax
000000014000d05e  mov        qword ptr [rip + 0xca3b], rax
000000014000d065  mov        r8d, esi
000000014000d068  mov        rdx, rbp
000000014000d06b  call       qword ptr [rip + 0x104f] ; KERNEL32.dll!WriteConsoleW
000000014000d071  mov        ebx, eax
000000014000d073  mov        rbp, qword ptr [rsp + 0x58]
000000014000d078  mov        eax, ebx
000000014000d07a  mov        rbx, qword ptr [rsp + 0x50]
000000014000d07f  mov        rsi, qword ptr [rsp + 0x60]
000000014000d084  add        rsp, 0x40
000000014000d088  pop        rdi
000000014000d089  ret        
000000014000d08a  int3       
000000014000d08b  int3       
000000014000d08c  mov        qword ptr [rsp + 8], rbx
000000014000d091  mov        qword ptr [rsp + 0x20], r9
000000014000d096  push       rdi
000000014000d097  sub        rsp, 0x20
000000014000d09b  mov        rdi, r9
000000014000d09e  mov        rbx, r8
000000014000d0a1  mov        ecx, dword ptr [rdx]
000000014000d0a3  call       0x140008c10
000000014000d0a8  nop        
000000014000d0a9  mov        rax, qword ptr [rbx]
000000014000d0ac  movsxd     rcx, dword ptr [rax]
000000014000d0af  mov        rdx, rcx
000000014000d0b2  mov        rax, rcx
000000014000d0b5  sar        rax, 6
000000014000d0b9  lea        r8, [rip + 0xd780]
000000014000d0c0  and        edx, 0x3f
000000014000d0c3  lea        rdx, [rdx + rdx*8]
000000014000d0c7  mov        rax, qword ptr [r8 + rax*8]
000000014000d0cb  test       byte ptr [rax + rdx*8 + 0x38], 1
000000014000d0d0  je         0x14000d0db
000000014000d0d2  call       0x14000d1a4
000000014000d0d7  mov        ebx, eax
000000014000d0d9  jmp        0x14000d0e9
000000014000d0db  call       0x140006ec0
000000014000d0e0  mov        dword ptr [rax], 9
000000014000d0e6  or         ebx, 0xffffffff
000000014000d0e9  mov        ecx, dword ptr [rdi]
000000014000d0eb  call       0x140008c38
000000014000d0f0  mov        eax, ebx
000000014000d0f2  mov        rbx, qword ptr [rsp + 0x30]
000000014000d0f7  add        rsp, 0x20
000000014000d0fb  pop        rdi
000000014000d0fc  ret        
000000014000d0fd  int3       
000000014000d0fe  int3       
000000014000d0ff  int3       
000000014000d100  mov        dword ptr [rsp + 8], ecx
000000014000d104  sub        rsp, 0x38
000000014000d108  movsxd     rdx, ecx
000000014000d10b  cmp        edx, -2
000000014000d10e  jne        0x14000d125
000000014000d110  call       0x140006ea0
000000014000d115  and        dword ptr [rax], 0
000000014000d118  call       0x140006ec0
000000014000d11d  mov        dword ptr [rax], 9
000000014000d123  jmp        0x14000d199
000000014000d125  test       ecx, ecx
000000014000d127  js         0x14000d181
000000014000d129  cmp        edx, dword ptr [rip + 0xdb11]
000000014000d12f  jae        0x14000d181
000000014000d131  mov        rcx, rdx
000000014000d134  lea        r8, [rip + 0xd705]
000000014000d13b  and        ecx, 0x3f
000000014000d13e  mov        rax, rdx
000000014000d141  sar        rax, 6
000000014000d145  lea        rcx, [rcx + rcx*8]
000000014000d149  mov        rax, qword ptr [r8 + rax*8]
000000014000d14d  test       byte ptr [rax + rcx*8 + 0x38], 1
000000014000d152  je         0x14000d181
000000014000d154  lea        rax, [rsp + 0x40]
000000014000d159  mov        dword ptr [rsp + 0x50], edx
000000014000d15d  mov        dword ptr [rsp + 0x58], edx
000000014000d161  lea        r9, [rsp + 0x50]
000000014000d166  lea        rdx, [rsp + 0x58]
000000014000d16b  mov        qword ptr [rsp + 0x20], rax
000000014000d170  lea        r8, [rsp + 0x20]
000000014000d175  lea        rcx, [rsp + 0x48]
000000014000d17a  call       0x14000d08c
000000014000d17f  jmp        0x14000d19c
000000014000d181  call       0x140006ea0
000000014000d186  and        dword ptr [rax], 0
000000014000d189  call       0x140006ec0
000000014000d18e  mov        dword ptr [rax], 9
000000014000d194  call       0x140006ce4
000000014000d199  or         eax, 0xffffffff
000000014000d19c  add        rsp, 0x38
000000014000d1a0  ret        
000000014000d1a1  int3       
000000014000d1a2  int3       
000000014000d1a3  int3       
000000014000d1a4  mov        qword ptr [rsp + 8], rbx
000000014000d1a9  push       rdi
000000014000d1aa  sub        rsp, 0x20
000000014000d1ae  movsxd     rdi, ecx
000000014000d1b1  mov        ecx, edi
000000014000d1b3  call       0x140008d1c
000000014000d1b8  cmp        rax, -1
000000014000d1bc  jne        0x14000d1c2
000000014000d1be  xor        ebx, ebx
000000014000d1c0  jmp        0x14000d21c
000000014000d1c2  mov        rax, qword ptr [rip + 0xd677]
000000014000d1c9  mov        ecx, 2
000000014000d1ce  cmp        edi, 1
000000014000d1d1  jne        0x14000d1dc
000000014000d1d3  test       byte ptr [rax + 0xc8], dil
000000014000d1da  jne        0x14000d1e9
000000014000d1dc  cmp        edi, ecx
000000014000d1de  jne        0x14000d200
000000014000d1e0  test       byte ptr [rax + 0x80], 1
000000014000d1e7  je         0x14000d200
000000014000d1e9  call       0x140008d1c
000000014000d1ee  mov        ecx, 1
000000014000d1f3  mov        rbx, rax
000000014000d1f6  call       0x140008d1c
000000014000d1fb  cmp        rax, rbx
000000014000d1fe  je         0x14000d1be
000000014000d200  mov        ecx, edi
000000014000d202  call       0x140008d1c
000000014000d207  mov        rcx, rax
000000014000d20a  call       qword ptr [rip + 0xe38] ; KERNEL32.dll!CloseHandle
000000014000d210  test       eax, eax
000000014000d212  jne        0x14000d1be
000000014000d214  call       qword ptr [rip + 0xf36] ; KERNEL32.dll!GetLastError
000000014000d21a  mov        ebx, eax
000000014000d21c  mov        ecx, edi
000000014000d21e  call       0x140008c60
000000014000d223  mov        rdx, rdi
000000014000d226  lea        r8, [rip + 0xd613]
000000014000d22d  and        edx, 0x3f
000000014000d230  mov        rcx, rdi
000000014000d233  sar        rcx, 6
000000014000d237  lea        rdx, [rdx + rdx*8]
000000014000d23b  mov        rcx, qword ptr [r8 + rcx*8]
000000014000d23f  mov        byte ptr [rcx + rdx*8 + 0x38], 0
000000014000d244  test       ebx, ebx
000000014000d246  je         0x14000d254
000000014000d248  mov        ecx, ebx
000000014000d24a  call       0x140006e50
000000014000d24f  or         eax, 0xffffffff
000000014000d252  jmp        0x14000d256
000000014000d254  xor        eax, eax
000000014000d256  mov        rbx, qword ptr [rsp + 0x30]
000000014000d25b  add        rsp, 0x20
000000014000d25f  pop        rdi
000000014000d260  ret        
000000014000d261  int3       
000000014000d262  int3       
000000014000d263  int3       
000000014000d264  or         dword ptr [rcx + 0x18], 0xffffffff
000000014000d268  xor        eax, eax
000000014000d26a  mov        qword ptr [rcx], rax
000000014000d26d  mov        qword ptr [rcx + 8], rax
000000014000d271  mov        dword ptr [rcx + 0x10], eax
000000014000d274  mov        qword ptr [rcx + 0x1c], rax
000000014000d278  mov        qword ptr [rcx + 0x28], rax
000000014000d27c  xchg       dword ptr [rcx + 0x14], eax
000000014000d27f  ret        
000000014000d280  mov        rax, rsp
000000014000d283  push       rbx
000000014000d284  sub        rsp, 0x50
000000014000d288  movsd      xmm0, qword ptr [rsp + 0x80]
000000014000d291  mov        ebx, ecx
000000014000d293  movsd      xmm1, qword ptr [rsp + 0x88]
000000014000d29c  mov        edx, 0xffc0
000000014000d2a1  mov        dword ptr [rax - 0x38], ecx
000000014000d2a4  mov        rcx, qword ptr [rsp + 0x90]
000000014000d2ac  movsd      qword ptr [rax - 0x20], xmm0
000000014000d2b1  movsd      qword ptr [rax - 0x18], xmm1
000000014000d2b6  movsd      qword ptr [rax - 0x28], xmm3
000000014000d2bb  mov        qword ptr [rax - 0x30], r8
000000014000d2bf  call       0x14000d9e8
000000014000d2c4  lea        rcx, [rsp + 0x20]
000000014000d2c9  call       0x14000587c
000000014000d2ce  test       eax, eax
000000014000d2d0  jne        0x14000d2d9
000000014000d2d2  mov        ecx, ebx
000000014000d2d4  call       0x14000d998
000000014000d2d9  movsd      xmm0, qword ptr [rsp + 0x40]
000000014000d2df  add        rsp, 0x50
000000014000d2e3  pop        rbx
000000014000d2e4  ret        
000000014000d2e5  int3       
000000014000d2e6  int3       
000000014000d2e7  int3       
000000014000d2e8  mov        qword ptr [rsp + 8], rbx
000000014000d2ed  mov        qword ptr [rsp + 0x10], rsi
000000014000d2f2  push       rdi
000000014000d2f3  sub        rsp, 0x20
000000014000d2f7  mov        ebx, ecx
000000014000d2f9  mov        rsi, rdx
000000014000d2fc  and        ebx, 0x1f
000000014000d2ff  mov        edi, ecx
000000014000d301  test       cl, 8
000000014000d304  je         0x14000d31a
000000014000d306  test       sil, sil
000000014000d309  jns        0x14000d31a
000000014000d30b  mov        ecx, 1
000000014000d310  call       0x14000da64
000000014000d315  and        ebx, 0xfffffff7
000000014000d318  jmp        0x14000d371
000000014000d31a  mov        ecx, 4
000000014000d31f  test       cl, dil
000000014000d322  je         0x14000d335
000000014000d324  bt         rsi, 9
000000014000d329  jae        0x14000d335
000000014000d32b  call       0x14000da64
000000014000d330  and        ebx, 0xfffffffb
000000014000d333  jmp        0x14000d371
000000014000d335  test       dil, 1
000000014000d339  je         0x14000d351
000000014000d33b  bt         rsi, 0xa
000000014000d340  jae        0x14000d351
000000014000d342  mov        ecx, 8
000000014000d347  call       0x14000da64
000000014000d34c  and        ebx, 0xfffffffe
000000014000d34f  jmp        0x14000d371
000000014000d351  test       dil, 2
000000014000d355  je         0x14000d371
000000014000d357  bt         rsi, 0xb
000000014000d35c  jae        0x14000d371
000000014000d35e  test       dil, 0x10
000000014000d362  je         0x14000d36e
000000014000d364  mov        ecx, 0x10
000000014000d369  call       0x14000da64
000000014000d36e  and        ebx, 0xfffffffd
000000014000d371  test       dil, 0x10
000000014000d375  je         0x14000d38b
000000014000d377  bt         rsi, 0xc
000000014000d37c  jae        0x14000d38b
000000014000d37e  mov        ecx, 0x20
000000014000d383  call       0x14000da64
000000014000d388  and        ebx, 0xffffffef
000000014000d38b  mov        rsi, qword ptr [rsp + 0x38]
000000014000d390  xor        eax, eax
000000014000d392  test       ebx, ebx
000000014000d394  mov        rbx, qword ptr [rsp + 0x30]
000000014000d399  sete       al
000000014000d39c  add        rsp, 0x20
000000014000d3a0  pop        rdi
000000014000d3a1  ret        
000000014000d3a2  int3       
000000014000d3a3  int3       
000000014000d3a4  mov        rax, rsp
000000014000d3a7  push       rbp
000000014000d3a8  push       rbx
000000014000d3a9  push       rsi
000000014000d3aa  push       rdi
000000014000d3ab  push       r14
000000014000d3ad  lea        rbp, [rax - 0x37]
000000014000d3b1  sub        rsp, 0xf0
000000014000d3b8  movaps     xmmword ptr [rax - 0x38], xmm6
000000014000d3bc  mov        rax, qword ptr [rip + 0xbd05]
000000014000d3c3  xor        rax, rsp
000000014000d3c6  mov        qword ptr [rbp - 0x11], rax
000000014000d3ca  mov        esi, edx
000000014000d3cc  mov        r14, rcx
000000014000d3cf  mov        edx, 0xffc0
000000014000d3d4  mov        ecx, 0x1f80
000000014000d3d9  mov        edi, r9d
000000014000d3dc  mov        rbx, r8
000000014000d3df  call       0x14000d9e8
000000014000d3e4  mov        ecx, dword ptr [rbp + 0x5f]
000000014000d3e7  mov        qword ptr [rsp + 0x40], rax
000000014000d3ec  mov        qword ptr [rsp + 0x50], rbx
000000014000d3f1  movsd      xmm0, qword ptr [rsp + 0x50]
000000014000d3f7  mov        rdx, qword ptr [rsp + 0x40]
000000014000d3fc  movsd      qword ptr [rsp + 0x48], xmm0
000000014000d402  call       0x14000d2e8
000000014000d407  movsd      xmm6, qword ptr [rbp + 0x77]
000000014000d40c  test       eax, eax
000000014000d40e  jne        0x14000d450
000000014000d410  cmp        dword ptr [rbp + 0x7f], 2
000000014000d414  jne        0x14000d427
000000014000d416  mov        eax, dword ptr [rbp - 0x41]
000000014000d419  and        eax, 0xffffffe3
000000014000d41c  movsd      qword ptr [rbp - 0x51], xmm6
000000014000d421  or         eax, 3
000000014000d424  mov        dword ptr [rbp - 0x41], eax
000000014000d427  mov        r8d, dword ptr [rbp + 0x5f]
000000014000d42b  lea        rax, [rsp + 0x48]
000000014000d430  mov        qword ptr [rsp + 0x28], rax
000000014000d435  lea        rdx, [rsp + 0x40]
000000014000d43a  lea        rax, [rbp + 0x6f]
000000014000d43e  mov        r9d, esi
000000014000d441  lea        rcx, [rsp + 0x60]
000000014000d446  mov        qword ptr [rsp + 0x20], rax
000000014000d44b  call       0x14000d660
000000014000d450  call       0x140005854
000000014000d455  test       al, al
000000014000d457  je         0x14000d48d
000000014000d459  test       edi, edi
000000014000d45b  je         0x14000d48d
000000014000d45d  mov        rax, qword ptr [rsp + 0x40]
000000014000d462  mov        r8, r14
000000014000d465  movsd      xmm0, qword ptr [rsp + 0x48]
000000014000d46b  mov        ecx, edi
000000014000d46d  movsd      xmm3, qword ptr [rbp + 0x6f]
000000014000d472  mov        edx, dword ptr [rbp + 0x67]
000000014000d475  mov        qword ptr [rsp + 0x30], rax
000000014000d47a  movsd      qword ptr [rsp + 0x28], xmm0
000000014000d480  movsd      qword ptr [rsp + 0x20], xmm6
000000014000d486  call       0x14000d280
000000014000d48b  jmp        0x14000d4a9
000000014000d48d  mov        ecx, edi
000000014000d48f  call       0x14000d998
000000014000d494  mov        rcx, qword ptr [rsp + 0x40]
000000014000d499  mov        edx, 0xffc0
000000014000d49e  call       0x14000d9e8
000000014000d4a3  movsd      xmm0, qword ptr [rsp + 0x48]
000000014000d4a9  mov        rcx, qword ptr [rbp - 0x11]
000000014000d4ad  xor        rcx, rsp
000000014000d4b0  call       0x1400037e0
000000014000d4b5  movaps     xmm6, xmmword ptr [rsp + 0xe0]
000000014000d4bd  add        rsp, 0xf0
000000014000d4c4  pop        r14
000000014000d4c6  pop        rdi
000000014000d4c7  pop        rsi
000000014000d4c8  pop        rbx
000000014000d4c9  pop        rbp
000000014000d4ca  ret        
000000014000d4cb  int3       
000000014000d4cc  int3       
000000014000d4cd  int3       
000000014000d4ce  int3       
000000014000d4cf  int3       
000000014000d4d0  push       rbx
000000014000d4d2  sub        rsp, 0x10
000000014000d4d6  xor        r8d, r8d
000000014000d4d9  xor        ecx, ecx
000000014000d4db  mov        dword ptr [rip + 0xd986], r8d
000000014000d4e2  lea        r9d, [r8 + 1]
000000014000d4e6  mov        eax, r9d
000000014000d4e9  cpuid      
000000014000d4eb  mov        dword ptr [rsp], eax
000000014000d4ee  mov        eax, 0x18001000
000000014000d4f3  mov        dword ptr [rsp + 8], ecx
000000014000d4f7  and        ecx, eax
000000014000d4f9  mov        dword ptr [rsp + 4], ebx
000000014000d4fd  mov        dword ptr [rsp + 0xc], edx
000000014000d501  cmp        ecx, eax
000000014000d503  jne        0x14000d531
000000014000d505  xor        ecx, ecx
000000014000d507  xgetbv     
000000014000d50a  shl        rdx, 0x20
000000014000d50e  or         rdx, rax
000000014000d511  mov        qword ptr [rsp + 0x20], rdx
000000014000d516  mov        rax, qword ptr [rsp + 0x20]
000000014000d51b  mov        r8d, dword ptr [rip + 0xd946]
000000014000d522  and        al, 6
000000014000d524  cmp        al, 6
000000014000d526  cmove      r8d, r9d
000000014000d52a  mov        dword ptr [rip + 0xd937], r8d
000000014000d531  mov        dword ptr [rip + 0xd934], r8d
000000014000d538  xor        eax, eax
000000014000d53a  add        rsp, 0x10
000000014000d53e  pop        rbx
000000014000d53f  ret        
000000014000d540  sub        rsp, 0x38
000000014000d544  lea        rax, [rip + 0x9335] ; log10
000000014000d54b  mov        r9d, 0x1b
000000014000d551  mov        qword ptr [rsp + 0x20], rax
000000014000d556  call       0x14000d560
000000014000d55b  add        rsp, 0x38
000000014000d55f  ret        
000000014000d560  mov        rax, rsp
000000014000d563  sub        rsp, 0x68
000000014000d567  movaps     xmmword ptr [rax - 0x18], xmm6
000000014000d56b  movaps     xmm6, xmm1
000000014000d56e  mov        edx, r9d
000000014000d571  movaps     xmm3, xmm0
000000014000d574  sub        r8d, 1
000000014000d578  je         0x14000d5a4
000000014000d57a  cmp        r8d, 1
000000014000d57e  jne        0x14000d5e9
000000014000d580  mov        dword ptr [rax - 0x28], r8d
000000014000d584  xorps      xmm2, xmm2
000000014000d587  movsd      qword ptr [rax - 0x30], xmm2
000000014000d58c  mov        r9d, r8d
000000014000d58f  movsd      qword ptr [rax - 0x38], xmm0
000000014000d594  mov        dword ptr [rax - 0x40], 0x21
000000014000d59b  mov        dword ptr [rax - 0x48], 8
000000014000d5a2  jmp        0x14000d5d1
000000014000d5a4  mov        dword ptr [rsp + 0x40], 1
000000014000d5ac  xorps      xmm0, xmm0
000000014000d5af  movsd      qword ptr [rsp + 0x38], xmm0
000000014000d5b5  mov        r9d, 2
000000014000d5bb  movsd      qword ptr [rsp + 0x30], xmm3
000000014000d5c1  mov        dword ptr [rsp + 0x28], 0x22
000000014000d5c9  mov        dword ptr [rsp + 0x20], 4
000000014000d5d1  mov        rcx, qword ptr [rsp + 0x90]
000000014000d5d9  movsd      qword ptr [rsp + 0x78], xmm6
000000014000d5df  mov        r8, qword ptr [rsp + 0x78]
000000014000d5e4  call       0x14000d3a4
000000014000d5e9  movaps     xmm0, xmm6
000000014000d5ec  movaps     xmm6, xmmword ptr [rsp + 0x50]
000000014000d5f1  add        rsp, 0x68
000000014000d5f5  ret        
000000014000d5f6  int3       
000000014000d5f7  int3       
000000014000d5f8  int3       
000000014000d5f9  int3       
000000014000d5fa  int3       
000000014000d5fb  int3       
000000014000d5fc  int3       
000000014000d5fd  int3       
000000014000d5fe  int3       
000000014000d5ff  int3       
000000014000d600  int3       
000000014000d601  int3       
000000014000d602  int3       
000000014000d603  int3       
000000014000d604  int3       
000000014000d605  int3       
000000014000d606  nop        word ptr [rax + rax]
000000014000d610  sub        rsp, 8
000000014000d614  stmxcsr    dword ptr [rsp]
000000014000d618  mov        eax, dword ptr [rsp]
000000014000d61b  add        rsp, 8
000000014000d61f  ret        
000000014000d620  mov        dword ptr [rsp + 8], ecx
000000014000d624  ldmxcsr    dword ptr [rsp + 8]
000000014000d629  ret        
000000014000d62a  stmxcsr    dword ptr [rsp + 8]
000000014000d62f  mov        ecx, 0xffffffc0
000000014000d634  and        dword ptr [rsp + 8], ecx
000000014000d638  ldmxcsr    dword ptr [rsp + 8]
000000014000d63d  ret        
000000014000d63e  ucomisd    xmm0, qword ptr [rip + 0x924a]
000000014000d646  jae        0x14000d65c
000000014000d648  ucomisd    xmm0, qword ptr [rip + 0x9248]
000000014000d650  jbe        0x14000d65c
000000014000d652  cvtsd2si   rcx, xmm0
000000014000d657  cvtsi2sd   xmm0, rcx
000000014000d65c  ret        
000000014000d65d  int3       
000000014000d65e  int3       
000000014000d65f  int3       
000000014000d660  sub        rsp, 0x48
000000014000d664  and        dword ptr [rsp + 0x30], 0
000000014000d669  mov        rax, qword ptr [rsp + 0x78]
000000014000d66e  mov        qword ptr [rsp + 0x28], rax
000000014000d673  mov        rax, qword ptr [rsp + 0x70]
000000014000d678  mov        qword ptr [rsp + 0x20], rax
000000014000d67d  call       0x14000d688
000000014000d682  add        rsp, 0x48
000000014000d686  ret        
000000014000d687  int3       
000000014000d688  mov        rax, rsp
000000014000d68b  mov        qword ptr [rax + 0x10], rbx
000000014000d68f  mov        qword ptr [rax + 0x18], rsi
000000014000d693  mov        qword ptr [rax + 0x20], rdi
000000014000d697  mov        qword ptr [rax + 8], rcx
000000014000d69b  push       rbp
000000014000d69c  mov        rbp, rsp
000000014000d69f  sub        rsp, 0x20
000000014000d6a3  mov        rbx, rdx
000000014000d6a6  mov        esi, r9d
000000014000d6a9  xor        edx, edx
000000014000d6ab  mov        edi, 0xc000000d
000000014000d6b0  mov        dword ptr [rcx + 4], edx
000000014000d6b3  mov        rax, qword ptr [rbp + 0x10]
000000014000d6b7  mov        dword ptr [rax + 8], edx
000000014000d6ba  mov        rax, qword ptr [rbp + 0x10]
000000014000d6be  mov        dword ptr [rax + 0xc], edx
000000014000d6c1  test       r8b, 0x10
000000014000d6c5  je         0x14000d6d4
000000014000d6c7  mov        rax, qword ptr [rbp + 0x10]
000000014000d6cb  mov        edi, 0xc000008f
000000014000d6d0  or         dword ptr [rax + 4], 1
000000014000d6d4  test       r8b, 2
000000014000d6d8  je         0x14000d6e7
000000014000d6da  mov        rax, qword ptr [rbp + 0x10]
000000014000d6de  mov        edi, 0xc0000093
000000014000d6e3  or         dword ptr [rax + 4], 2
000000014000d6e7  test       r8b, 1
000000014000d6eb  je         0x14000d6fa
000000014000d6ed  mov        rax, qword ptr [rbp + 0x10]
000000014000d6f1  mov        edi, 0xc0000091
000000014000d6f6  or         dword ptr [rax + 4], 4
000000014000d6fa  test       r8b, 4
000000014000d6fe  je         0x14000d70d
000000014000d700  mov        rax, qword ptr [rbp + 0x10]
000000014000d704  mov        edi, 0xc000008e
000000014000d709  or         dword ptr [rax + 4], 8
000000014000d70d  test       r8b, 8
000000014000d711  je         0x14000d720
000000014000d713  mov        rax, qword ptr [rbp + 0x10]
000000014000d717  mov        edi, 0xc0000090
000000014000d71c  or         dword ptr [rax + 4], 0x10
000000014000d720  mov        rcx, qword ptr [rbp + 0x10]
000000014000d724  mov        rax, qword ptr [rbx]
000000014000d727  shr        rax, 7
000000014000d72b  shl        eax, 4
000000014000d72e  not        eax
000000014000d730  xor        eax, dword ptr [rcx + 8]
000000014000d733  and        eax, 0x10
000000014000d736  xor        dword ptr [rcx + 8], eax
000000014000d739  mov        rcx, qword ptr [rbp + 0x10]
000000014000d73d  mov        rax, qword ptr [rbx]
000000014000d740  shr        rax, 9
000000014000d744  shl        eax, 3
000000014000d747  not        eax
000000014000d749  xor        eax, dword ptr [rcx + 8]
000000014000d74c  and        eax, 8
000000014000d74f  xor        dword ptr [rcx + 8], eax
000000014000d752  mov        rcx, qword ptr [rbp + 0x10]
000000014000d756  mov        rax, qword ptr [rbx]
000000014000d759  shr        rax, 0xa
000000014000d75d  shl        eax, 2
000000014000d760  not        eax
000000014000d762  xor        eax, dword ptr [rcx + 8]
000000014000d765  and        eax, 4
000000014000d768  xor        dword ptr [rcx + 8], eax
000000014000d76b  mov        rcx, qword ptr [rbp + 0x10]
000000014000d76f  mov        rax, qword ptr [rbx]
000000014000d772  shr        rax, 0xb
000000014000d776  add        eax, eax
000000014000d778  not        eax
000000014000d77a  xor        eax, dword ptr [rcx + 8]
000000014000d77d  and        eax, 2
000000014000d780  xor        dword ptr [rcx + 8], eax
000000014000d783  mov        eax, dword ptr [rbx]
000000014000d785  mov        rcx, qword ptr [rbp + 0x10]
000000014000d789  shr        rax, 0xc
000000014000d78d  not        eax
000000014000d78f  xor        eax, dword ptr [rcx + 8]
000000014000d792  and        eax, 1
000000014000d795  xor        dword ptr [rcx + 8], eax
000000014000d798  call       0x14000da84
000000014000d79d  mov        rdx, rax
000000014000d7a0  test       al, 1
000000014000d7a2  je         0x14000d7ac
000000014000d7a4  mov        rcx, qword ptr [rbp + 0x10]
000000014000d7a8  or         dword ptr [rcx + 0xc], 0x10
000000014000d7ac  test       dl, 4
000000014000d7af  je         0x14000d7b9
000000014000d7b1  mov        rcx, qword ptr [rbp + 0x10]
000000014000d7b5  or         dword ptr [rcx + 0xc], 8
000000014000d7b9  test       dl, 8
000000014000d7bc  je         0x14000d7c6
000000014000d7be  mov        rax, qword ptr [rbp + 0x10]
000000014000d7c2  or         dword ptr [rax + 0xc], 4
000000014000d7c6  test       dl, 0x10
000000014000d7c9  je         0x14000d7d3
000000014000d7cb  mov        rax, qword ptr [rbp + 0x10]
000000014000d7cf  or         dword ptr [rax + 0xc], 2
000000014000d7d3  test       dl, 0x20
000000014000d7d6  je         0x14000d7e0
000000014000d7d8  mov        rax, qword ptr [rbp + 0x10]
000000014000d7dc  or         dword ptr [rax + 0xc], 1
000000014000d7e0  mov        eax, dword ptr [rbx]
000000014000d7e2  mov        ecx, 0x6000
000000014000d7e7  and        rax, rcx
000000014000d7ea  je         0x14000d82a
000000014000d7ec  cmp        rax, 0x2000
000000014000d7f2  je         0x14000d81a
000000014000d7f4  cmp        rax, 0x4000
000000014000d7fa  je         0x14000d80a
000000014000d7fc  cmp        rax, rcx
000000014000d7ff  jne        0x14000d831
000000014000d801  mov        rax, qword ptr [rbp + 0x10]
000000014000d805  or         dword ptr [rax], 3
000000014000d808  jmp        0x14000d831
000000014000d80a  mov        rax, qword ptr [rbp + 0x10]
000000014000d80e  and        dword ptr [rax], 0xfffffffe
000000014000d811  mov        rax, qword ptr [rbp + 0x10]
000000014000d815  or         dword ptr [rax], 2
000000014000d818  jmp        0x14000d831
000000014000d81a  mov        rax, qword ptr [rbp + 0x10]
000000014000d81e  and        dword ptr [rax], 0xfffffffd
000000014000d821  mov        rax, qword ptr [rbp + 0x10]
000000014000d825  or         dword ptr [rax], 1
000000014000d828  jmp        0x14000d831
000000014000d82a  mov        rax, qword ptr [rbp + 0x10]
000000014000d82e  and        dword ptr [rax], 0xfffffffc
000000014000d831  mov        rax, qword ptr [rbp + 0x10]
000000014000d835  and        esi, 0xfff
000000014000d83b  shl        esi, 5
000000014000d83e  and        dword ptr [rax], 0xfffe001f
000000014000d844  mov        rax, qword ptr [rbp + 0x10]
000000014000d848  or         dword ptr [rax], esi
000000014000d84a  mov        rax, qword ptr [rbp + 0x10]
000000014000d84e  mov        rsi, qword ptr [rbp + 0x38]
000000014000d852  or         dword ptr [rax + 0x20], 1
000000014000d856  cmp        dword ptr [rbp + 0x40], 0
000000014000d85a  je         0x14000d88f
000000014000d85c  mov        rax, qword ptr [rbp + 0x10]
000000014000d860  mov        edx, 0xffffffe1
000000014000d865  and        dword ptr [rax + 0x20], edx
000000014000d868  mov        rax, qword ptr [rbp + 0x30]
000000014000d86c  mov        ecx, dword ptr [rax]
000000014000d86e  mov        rax, qword ptr [rbp + 0x10]
000000014000d872  mov        dword ptr [rax + 0x10], ecx
000000014000d875  mov        rax, qword ptr [rbp + 0x10]
000000014000d879  or         dword ptr [rax + 0x60], 1
000000014000d87d  mov        rax, qword ptr [rbp + 0x10]
000000014000d881  and        dword ptr [rax + 0x60], edx
000000014000d884  mov        rax, qword ptr [rbp + 0x10]
000000014000d888  mov        ecx, dword ptr [rsi]
000000014000d88a  mov        dword ptr [rax + 0x50], ecx
000000014000d88d  jmp        0x14000d8d7
000000014000d88f  mov        rcx, qword ptr [rbp + 0x10]
000000014000d893  mov        r8d, 0xffffffe3
000000014000d899  mov        eax, dword ptr [rcx + 0x20]
000000014000d89c  and        eax, r8d
000000014000d89f  or         eax, 2
000000014000d8a2  mov        dword ptr [rcx + 0x20], eax
000000014000d8a5  mov        rax, qword ptr [rbp + 0x30]
000000014000d8a9  mov        rcx, qword ptr [rax]
000000014000d8ac  mov        rax, qword ptr [rbp + 0x10]
000000014000d8b0  mov        qword ptr [rax + 0x10], rcx
000000014000d8b4  mov        rax, qword ptr [rbp + 0x10]
000000014000d8b8  or         dword ptr [rax + 0x60], 1
000000014000d8bc  mov        rdx, qword ptr [rbp + 0x10]
000000014000d8c0  mov        eax, dword ptr [rdx + 0x60]
000000014000d8c3  and        eax, r8d
000000014000d8c6  or         eax, 2
000000014000d8c9  mov        dword ptr [rdx + 0x60], eax
000000014000d8cc  mov        rax, qword ptr [rbp + 0x10]
000000014000d8d0  mov        rdx, qword ptr [rsi]
000000014000d8d3  mov        qword ptr [rax + 0x50], rdx
000000014000d8d7  call       0x14000d9c8
000000014000d8dc  xor        edx, edx
000000014000d8de  lea        r9, [rbp + 0x10]
000000014000d8e2  mov        ecx, edi
000000014000d8e4  lea        r8d, [rdx + 1]
000000014000d8e8  call       qword ptr [rip + 0x8b2] ; KERNEL32.dll!RaiseException
000000014000d8ee  mov        rcx, qword ptr [rbp + 0x10]
000000014000d8f2  mov        eax, dword ptr [rcx + 8]
000000014000d8f5  test       al, 0x10
000000014000d8f7  je         0x14000d901
000000014000d8f9  btr        qword ptr [rbx], 7
000000014000d8fe  mov        eax, dword ptr [rcx + 8]
000000014000d901  test       al, 8
000000014000d903  je         0x14000d90d
000000014000d905  btr        qword ptr [rbx], 9
000000014000d90a  mov        eax, dword ptr [rcx + 8]
000000014000d90d  test       al, 4
000000014000d90f  je         0x14000d919
000000014000d911  btr        qword ptr [rbx], 0xa
000000014000d916  mov        eax, dword ptr [rcx + 8]
000000014000d919  test       al, 2
000000014000d91b  je         0x14000d925
000000014000d91d  btr        qword ptr [rbx], 0xb
000000014000d922  mov        eax, dword ptr [rcx + 8]
000000014000d925  test       al, 1
000000014000d927  je         0x14000d92e
000000014000d929  btr        qword ptr [rbx], 0xc
000000014000d92e  mov        eax, dword ptr [rcx]
000000014000d930  and        eax, 3
000000014000d933  je         0x14000d965
000000014000d935  sub        eax, 1
000000014000d938  je         0x14000d959
000000014000d93a  sub        eax, 1
000000014000d93d  je         0x14000d94d
000000014000d93f  cmp        eax, 1
000000014000d942  jne        0x14000d96c
000000014000d944  or         qword ptr [rbx], 0x6000
000000014000d94b  jmp        0x14000d96c
000000014000d94d  btr        qword ptr [rbx], 0xd
000000014000d952  bts        qword ptr [rbx], 0xe
000000014000d957  jmp        0x14000d96c
000000014000d959  btr        qword ptr [rbx], 0xe
000000014000d95e  bts        qword ptr [rbx], 0xd
000000014000d963  jmp        0x14000d96c
000000014000d965  and        qword ptr [rbx], 0xffffffffffff9fff
000000014000d96c  cmp        dword ptr [rbp + 0x40], 0
000000014000d970  je         0x14000d979
000000014000d972  mov        eax, dword ptr [rcx + 0x50]
000000014000d975  mov        dword ptr [rsi], eax
000000014000d977  jmp        0x14000d980
000000014000d979  mov        rax, qword ptr [rcx + 0x50]
000000014000d97d  mov        qword ptr [rsi], rax
000000014000d980  mov        rbx, qword ptr [rsp + 0x38]
000000014000d985  mov        rsi, qword ptr [rsp + 0x40]
000000014000d98a  mov        rdi, qword ptr [rsp + 0x48]
000000014000d98f  add        rsp, 0x20
000000014000d993  pop        rbp
000000014000d994  ret        
000000014000d995  int3       
000000014000d996  int3       
000000014000d997  int3       
000000014000d998  sub        rsp, 0x28
000000014000d99c  cmp        ecx, 1
000000014000d99f  je         0x14000d9b6
000000014000d9a1  lea        eax, [rcx - 2]
000000014000d9a4  cmp        eax, 1
000000014000d9a7  ja         0x14000d9c1
000000014000d9a9  call       0x140006ec0
000000014000d9ae  mov        dword ptr [rax], 0x22
000000014000d9b4  jmp        0x14000d9c1
000000014000d9b6  call       0x140006ec0
000000014000d9bb  mov        dword ptr [rax], 0x21
000000014000d9c1  add        rsp, 0x28
000000014000d9c5  ret        
000000014000d9c6  int3       
000000014000d9c7  int3       
000000014000d9c8  push       rbx
000000014000d9ca  sub        rsp, 0x20
000000014000d9ce  call       0x14000d610
000000014000d9d3  mov        ebx, eax
000000014000d9d5  and        ebx, 0x3f
000000014000d9d8  call       0x14000d62a
000000014000d9dd  mov        eax, ebx
000000014000d9df  add        rsp, 0x20
000000014000d9e3  pop        rbx
000000014000d9e4  ret        
000000014000d9e5  int3       
000000014000d9e6  int3       
000000014000d9e7  int3       
000000014000d9e8  mov        qword ptr [rsp + 0x18], rbx
000000014000d9ed  mov        qword ptr [rsp + 0x20], rsi
000000014000d9f2  push       rdi
000000014000d9f3  sub        rsp, 0x20
000000014000d9f7  mov        rbx, rdx
000000014000d9fa  mov        rdi, rcx
000000014000d9fd  call       0x14000d610
000000014000da02  mov        esi, eax
000000014000da04  mov        dword ptr [rsp + 0x38], eax
000000014000da08  mov        ecx, ebx
000000014000da0a  not        ecx
000000014000da0c  or         ecx, 0xffff807f
000000014000da12  and        ecx, eax
000000014000da14  and        edi, ebx
000000014000da16  or         ecx, edi
000000014000da18  mov        dword ptr [rsp + 0x30], ecx
000000014000da1c  cmp        byte ptr [rip + 0xc08d], 0
000000014000da23  je         0x14000da4a
000000014000da25  test       cl, 0x40
000000014000da28  je         0x14000da4a
000000014000da2a  call       0x14000d620
000000014000da2f  jmp        0x14000da52
000000014000da31  mov        byte ptr [rip + 0xc078], 0
000000014000da38  mov        ecx, dword ptr [rsp + 0x30]
000000014000da3c  and        ecx, 0xffffffbf
000000014000da3f  call       0x14000d620
000000014000da44  mov        esi, dword ptr [rsp + 0x38]
000000014000da48  jmp        0x14000da52
000000014000da4a  and        ecx, 0xffffffbf
000000014000da4d  call       0x14000d620
000000014000da52  mov        eax, esi
000000014000da54  mov        rbx, qword ptr [rsp + 0x40]
000000014000da59  mov        rsi, qword ptr [rsp + 0x48]
000000014000da5e  add        rsp, 0x20
000000014000da62  pop        rdi
000000014000da63  ret        
000000014000da64  push       rbx
000000014000da66  sub        rsp, 0x20
000000014000da6a  mov        rbx, rcx
000000014000da6d  call       0x14000d610
000000014000da72  and        ebx, 0x3f
000000014000da75  or         eax, ebx
000000014000da77  mov        ecx, eax
000000014000da79  add        rsp, 0x20
000000014000da7d  pop        rbx
000000014000da7e  jmp        0x14000d620
000000014000da83  int3       
000000014000da84  sub        rsp, 0x28
000000014000da88  call       0x14000d610
000000014000da8d  and        eax, 0x3f
000000014000da90  add        rsp, 0x28
000000014000da94  ret        
000000014000da95  int3       
000000014000da96  int3       
000000014000da97  int3       
000000014000da98  int3       
000000014000da99  int3       
000000014000da9a  int3       
000000014000da9b  int3       
000000014000da9c  int3       
000000014000da9d  int3       
000000014000da9e  int3       
000000014000da9f  int3       
000000014000daa0  movsxd     r8, dword ptr [rcx + 0x3c]
000000014000daa4  xor        r9d, r9d
000000014000daa7  add        r8, rcx
000000014000daaa  mov        r10, rdx
000000014000daad  movzx      eax, word ptr [r8 + 0x14]
000000014000dab2  movzx      r11d, word ptr [r8 + 6]
000000014000dab7  add        rax, 0x18
000000014000dabb  add        rax, r8
000000014000dabe  test       r11d, r11d
000000014000dac1  je         0x14000dae1
000000014000dac3  mov        edx, dword ptr [rax + 0xc]
000000014000dac6  cmp        r10, rdx
000000014000dac9  jb         0x14000dad5
000000014000dacb  mov        ecx, dword ptr [rax + 8]
000000014000dace  add        ecx, edx
000000014000dad0  cmp        r10, rcx
000000014000dad3  jb         0x14000dae3
000000014000dad5  inc        r9d
000000014000dad8  add        rax, 0x28
000000014000dadc  cmp        r9d, r11d
000000014000dadf  jb         0x14000dac3
000000014000dae1  xor        eax, eax
000000014000dae3  ret        
000000014000dae4  int3       
000000014000dae5  int3       
000000014000dae6  int3       
000000014000dae7  int3       
000000014000dae8  int3       
000000014000dae9  int3       
000000014000daea  int3       
000000014000daeb  int3       
000000014000daec  int3       
000000014000daed  int3       
000000014000daee  int3       
000000014000daef  int3       
000000014000daf0  mov        qword ptr [rsp + 8], rbx
000000014000daf5  push       rdi
000000014000daf6  sub        rsp, 0x20
000000014000dafa  mov        rbx, rcx
000000014000dafd  lea        rdi, [rip - 0xdb04]
000000014000db04  mov        rcx, rdi
000000014000db07  call       0x14000db40
000000014000db0c  test       eax, eax
000000014000db0e  je         0x14000db32
000000014000db10  sub        rbx, rdi
000000014000db13  mov        rdx, rbx
000000014000db16  mov        rcx, rdi
000000014000db19  call       0x14000daa0 ; LcA<E3
000000014000db1e  test       rax, rax
000000014000db21  je         0x14000db32
000000014000db23  mov        eax, dword ptr [rax + 0x24]
000000014000db26  shr        eax, 0x1f
000000014000db29  not        eax
000000014000db2b  and        eax, 1
000000014000db2e  jmp        0x14000db32
000000014000db30  xor        eax, eax
000000014000db32  mov        rbx, qword ptr [rsp + 0x30]
000000014000db37  add        rsp, 0x20
000000014000db3b  pop        rdi
000000014000db3c  ret        
000000014000db3d  int3       
000000014000db3e  int3       
000000014000db3f  int3       
000000014000db40  mov        eax, 0x5a4d
000000014000db45  cmp        word ptr [rcx], ax
000000014000db48  jne        0x14000db6a
000000014000db4a  movsxd     rax, dword ptr [rcx + 0x3c]
000000014000db4e  add        rax, rcx
000000014000db51  cmp        dword ptr [rax], 0x4550
000000014000db57  jne        0x14000db6a
000000014000db59  mov        ecx, 0x20b
000000014000db5e  cmp        word ptr [rax + 0x18], cx
000000014000db62  jne        0x14000db6a
000000014000db64  mov        eax, 1
000000014000db69  ret        
000000014000db6a  xor        eax, eax
000000014000db6c  ret        
000000014000db6d  int3       
000000014000db6e  int3       
000000014000db6f  int3       
000000014000db70  int3       
000000014000db71  int3       
000000014000db72  int3       
000000014000db73  int3       
000000014000db74  int3       
000000014000db75  int3       
000000014000db76  nop        word ptr [rax + rax]
000000014000db80  sub        rdx, rcx
000000014000db83  cmp        r8, 8
000000014000db87  jb         0x14000dbab
000000014000db89  test       cl, 7
000000014000db8c  je         0x14000dba2
000000014000db8e  nop        
000000014000db90  mov        al, byte ptr [rcx]
000000014000db92  cmp        al, byte ptr [rcx + rdx]
000000014000db95  jne        0x14000dbc3
000000014000db97  inc        rcx
000000014000db9a  dec        r8
000000014000db9d  test       cl, 7
000000014000dba0  jne        0x14000db90
000000014000dba2  mov        r9, r8
000000014000dba5  shr        r9, 3
000000014000dba9  jne        0x14000dbca
000000014000dbab  test       r8, r8
000000014000dbae  je         0x14000dbbf
000000014000dbb0  mov        al, byte ptr [rcx]
000000014000dbb2  cmp        al, byte ptr [rcx + rdx]
000000014000dbb5  jne        0x14000dbc3
000000014000dbb7  inc        rcx
000000014000dbba  dec        r8
000000014000dbbd  jne        0x14000dbb0
000000014000dbbf  xor        rax, rax
000000014000dbc2  ret        
000000014000dbc3  sbb        eax, eax
000000014000dbc5  sbb        eax, -1
000000014000dbc8  ret        
000000014000dbc9  nop        
000000014000dbca  shr        r9, 2
000000014000dbce  je         0x14000dc07
000000014000dbd0  mov        rax, qword ptr [rcx]
000000014000dbd3  cmp        rax, qword ptr [rcx + rdx]
000000014000dbd7  jne        0x14000dc34
000000014000dbd9  mov        rax, qword ptr [rcx + 8]
000000014000dbdd  cmp        rax, qword ptr [rcx + rdx + 8]
000000014000dbe2  jne        0x14000dc30
000000014000dbe4  mov        rax, qword ptr [rcx + 0x10]
000000014000dbe8  cmp        rax, qword ptr [rcx + rdx + 0x10]
000000014000dbed  jne        0x14000dc2c
000000014000dbef  mov        rax, qword ptr [rcx + 0x18]
000000014000dbf3  cmp        rax, qword ptr [rcx + rdx + 0x18]
000000014000dbf8  jne        0x14000dc28
000000014000dbfa  add        rcx, 0x20
000000014000dbfe  dec        r9
000000014000dc01  jne        0x14000dbd0
000000014000dc03  and        r8, 0x1f
000000014000dc07  mov        r9, r8
000000014000dc0a  shr        r9, 3
000000014000dc0e  je         0x14000dbab
000000014000dc10  mov        rax, qword ptr [rcx]
000000014000dc13  cmp        rax, qword ptr [rcx + rdx]
000000014000dc17  jne        0x14000dc34
000000014000dc19  add        rcx, 8
000000014000dc1d  dec        r9
000000014000dc20  jne        0x14000dc10
000000014000dc22  and        r8, 7
000000014000dc26  jmp        0x14000dbab
000000014000dc28  add        rcx, 8
000000014000dc2c  add        rcx, 8
000000014000dc30  add        rcx, 8
000000014000dc34  mov        rcx, qword ptr [rdx + rcx]
000000014000dc38  bswap      rax
000000014000dc3b  bswap      rcx
000000014000dc3e  cmp        rax, rcx
000000014000dc41  sbb        eax, eax
000000014000dc43  sbb        eax, -1
000000014000dc46  ret        
000000014000dc47  int3       
000000014000dc48  int3       
000000014000dc49  int3       
000000014000dc4a  int3       
000000014000dc4b  int3       
000000014000dc4c  int3       
000000014000dc4d  int3       
000000014000dc4e  int3       
000000014000dc4f  int3       
000000014000dc50  int3       
000000014000dc51  int3       
000000014000dc52  int3       
000000014000dc53  int3       
000000014000dc54  int3       
000000014000dc55  int3       
000000014000dc56  nop        word ptr [rax + rax]
000000014000dc60  jmp        rax
000000014000dc62  int3       
000000014000dc63  int3       
000000014000dc64  int3       
000000014000dc65  int3       
000000014000dc66  int3       
000000014000dc67  int3       
000000014000dc68  int3       
000000014000dc69  int3       
000000014000dc6a  int3       
000000014000dc6b  int3       
000000014000dc6c  int3       
000000014000dc6d  int3       
000000014000dc6e  int3       
000000014000dc6f  int3       
000000014000dc70  int3       
000000014000dc71  int3       
000000014000dc72  int3       
000000014000dc73  int3       
000000014000dc74  int3       
000000014000dc75  int3       
000000014000dc76  nop        word ptr [rax + rax]
000000014000dc80  jmp        qword ptr [rip + 0x60a]
000000014000dc86  int3       
000000014000dc87  int3       
000000014000dc88  int3       
000000014000dc89  int3       
000000014000dc8a  int3       
000000014000dc8b  int3       
000000014000dc8c  int3       
000000014000dc8d  int3       
000000014000dc8e  int3       
000000014000dc8f  int3       
000000014000dc90  push       rbp
000000014000dc92  sub        rsp, 0x20
000000014000dc96  mov        rbp, rdx
000000014000dc99  mov        rax, qword ptr [rcx]
000000014000dc9c  mov        rdx, rcx
000000014000dc9f  mov        ecx, dword ptr [rax]
000000014000dca1  call       0x1400056c0
000000014000dca6  nop        
000000014000dca7  add        rsp, 0x20
000000014000dcab  pop        rbp
000000014000dcac  ret        
000000014000dcad  int3       
000000014000dcae  push       rbp
000000014000dcb0  mov        rbp, rdx
000000014000dcb3  mov        rax, qword ptr [rcx]
000000014000dcb6  xor        ecx, ecx
000000014000dcb8  cmp        dword ptr [rax], 0xc0000005
000000014000dcbe  sete       cl
000000014000dcc1  mov        eax, ecx
000000014000dcc3  pop        rbp
000000014000dcc4  ret        
000000014000dcc5  int3       
000000014000dcc6  push       rbx
000000014000dcc8  push       rbp
000000014000dcc9  sub        rsp, 0x28
000000014000dccd  mov        rbp, rdx
000000014000dcd0  mov        qword ptr [rbp + 0x38], rcx
000000014000dcd4  mov        qword ptr [rbp + 0x30], rcx
000000014000dcd8  cmp        byte ptr [rbp + 0x58], 0
000000014000dcdc  je         0x14000dd4a
000000014000dcde  mov        rax, qword ptr [rbp + 0x30]
000000014000dce2  mov        rcx, qword ptr [rax]
000000014000dce5  mov        qword ptr [rbp + 0x28], rcx
000000014000dce9  mov        rax, qword ptr [rbp + 0x28]
000000014000dced  cmp        dword ptr [rax], 0xe06d7363
000000014000dcf3  jne        0x14000dd4a
000000014000dcf5  mov        rax, qword ptr [rbp + 0x28]
000000014000dcf9  cmp        dword ptr [rax + 0x18], 4
000000014000dcfd  jne        0x14000dd4a
000000014000dcff  mov        rax, qword ptr [rbp + 0x28]
000000014000dd03  cmp        dword ptr [rax + 0x20], 0x19930520
000000014000dd0a  je         0x14000dd26
000000014000dd0c  mov        rax, qword ptr [rbp + 0x28]
000000014000dd10  cmp        dword ptr [rax + 0x20], 0x19930521
000000014000dd17  je         0x14000dd26
000000014000dd19  mov        rax, qword ptr [rbp + 0x28]
000000014000dd1d  cmp        dword ptr [rax + 0x20], 0x19930522
000000014000dd24  jne        0x14000dd4a
000000014000dd26  call       0x140004ea0
000000014000dd2b  mov        rcx, qword ptr [rbp + 0x28]
000000014000dd2f  mov        qword ptr [rax + 0x20], rcx
000000014000dd33  mov        rax, qword ptr [rbp + 0x30]
000000014000dd37  mov        rbx, qword ptr [rax + 8]
000000014000dd3b  call       0x140004ea0
000000014000dd40  mov        qword ptr [rax + 0x28], rbx
000000014000dd44  call       0x1400069a8
000000014000dd49  nop        
000000014000dd4a  mov        dword ptr [rbp + 0x20], 0
000000014000dd51  mov        eax, dword ptr [rbp + 0x20]
000000014000dd54  add        rsp, 0x28
000000014000dd58  pop        rbp
000000014000dd59  pop        rbx
000000014000dd5a  ret        
000000014000dd5b  int3       
000000014000dd5c  push       rbp
000000014000dd5e  sub        rsp, 0x20
000000014000dd62  mov        rbp, rdx
000000014000dd65  mov        rax, qword ptr [rbp + 0x48]
000000014000dd69  mov        ecx, dword ptr [rax]
000000014000dd6b  add        rsp, 0x20
000000014000dd6f  pop        rbp
000000014000dd70  jmp        0x140008a18
000000014000dd75  int3       
000000014000dd76  push       rbp
000000014000dd78  sub        rsp, 0x20
000000014000dd7c  mov        rbp, rdx
000000014000dd7f  mov        rax, qword ptr [rcx]
000000014000dd82  mov        ecx, dword ptr [rax]
000000014000dd84  call       0x140006084
000000014000dd89  nop        
000000014000dd8a  add        rsp, 0x20
000000014000dd8e  pop        rbp
000000014000dd8f  ret        
000000014000dd90  int3       
000000014000dd91  push       rbp
000000014000dd93  sub        rsp, 0x20
000000014000dd97  mov        rbp, rdx
000000014000dd9a  mov        rax, qword ptr [rbp + 0x58]
000000014000dd9e  mov        ecx, dword ptr [rax]
000000014000dda0  add        rsp, 0x20
000000014000dda4  pop        rbp
000000014000dda5  jmp        0x140008a18
000000014000ddaa  int3       
000000014000ddab  push       rbp
000000014000ddad  sub        rsp, 0x20
000000014000ddb1  mov        rbp, rdx
000000014000ddb4  mov        ecx, 5
000000014000ddb9  add        rsp, 0x20
000000014000ddbd  pop        rbp
000000014000ddbe  jmp        0x140008a18
000000014000ddc3  int3       
000000014000ddc4  push       rbp
000000014000ddc6  sub        rsp, 0x20
000000014000ddca  mov        rbp, rdx
000000014000ddcd  mov        ecx, 7
000000014000ddd2  add        rsp, 0x20
000000014000ddd6  pop        rbp
000000014000ddd7  jmp        0x140008a18
000000014000dddc  int3       
000000014000dddd  push       rbp
000000014000dddf  sub        rsp, 0x20
000000014000dde3  mov        rbp, rdx
000000014000dde6  mov        ecx, 4
000000014000ddeb  add        rsp, 0x20
000000014000ddef  pop        rbp
000000014000ddf0  jmp        0x140008a18
000000014000ddf5  int3       
000000014000ddf6  push       rbp
000000014000ddf8  sub        rsp, 0x20
000000014000ddfc  mov        rbp, rdx
000000014000ddff  xor        ecx, ecx
000000014000de01  add        rsp, 0x20
000000014000de05  pop        rbp
000000014000de06  jmp        0x140008a18
000000014000de0b  int3       
000000014000de0c  push       rbp
000000014000de0e  sub        rsp, 0x20
000000014000de12  mov        rbp, rdx
000000014000de15  cmp        byte ptr [rbp + 0x70], 0
000000014000de19  je         0x14000de26
000000014000de1b  mov        ecx, 3
000000014000de20  call       0x140008a18
000000014000de25  nop        
000000014000de26  add        rsp, 0x20
000000014000de2a  pop        rbp
000000014000de2b  ret        
000000014000de2c  int3       
000000014000de2d  push       rbp
000000014000de2f  sub        rsp, 0x20
000000014000de33  mov        rbp, rdx
000000014000de36  mov        rcx, qword ptr [rbp + 0x48]
000000014000de3a  mov        rcx, qword ptr [rcx]
000000014000de3d  add        rsp, 0x20
000000014000de41  pop        rbp
000000014000de42  jmp        0x14000a9c8
000000014000de47  int3       
000000014000de48  push       rbp
000000014000de4a  sub        rsp, 0x20
000000014000de4e  mov        rbp, rdx
000000014000de51  mov        rax, qword ptr [rbp + 0x98]
000000014000de58  mov        ecx, dword ptr [rax]
000000014000de5a  add        rsp, 0x20
000000014000de5e  pop        rbp
000000014000de5f  jmp        0x140008a18
000000014000de64  int3       
000000014000de65  push       rbp
000000014000de67  sub        rsp, 0x20
000000014000de6b  mov        rbp, rdx
000000014000de6e  mov        rax, qword ptr [rbp + 0x48]
000000014000de72  mov        ecx, dword ptr [rax]
000000014000de74  add        rsp, 0x20
000000014000de78  pop        rbp
000000014000de79  jmp        0x140008c38
000000014000de7e  int3       
000000014000de7f  push       rbp
000000014000de81  sub        rsp, 0x20
000000014000de85  mov        rbp, rdx
000000014000de88  mov        ecx, dword ptr [rbp + 0x50]
000000014000de8b  add        rsp, 0x20
000000014000de8f  pop        rbp
000000014000de90  jmp        0x140008c38
000000014000de95  int3       
000000014000de96  push       rbp
000000014000de98  sub        rsp, 0x20
000000014000de9c  mov        rbp, rdx
000000014000de9f  mov        ecx, 8
000000014000dea4  add        rsp, 0x20
000000014000dea8  pop        rbp
000000014000dea9  jmp        0x140008a18
000000014000deae  int3       
000000014000deaf  push       rbp
000000014000deb1  sub        rsp, 0x20
000000014000deb5  mov        rbp, rdx
000000014000deb8  mov        rcx, qword ptr [rbp + 0x30]
000000014000debc  add        rsp, 0x20
000000014000dec0  pop        rbp
000000014000dec1  jmp        0x14000a9c8
000000014000dec6  int3       
000000014000dec7  push       rbp
000000014000dec9  sub        rsp, 0x20
000000014000decd  mov        rbp, rdx
000000014000ded0  mov        rax, qword ptr [rcx]
000000014000ded3  cmp        dword ptr [rax], 0xc0000005
000000014000ded9  je         0x14000dee7
000000014000dedb  cmp        dword ptr [rax], 0xc000001d
000000014000dee1  je         0x14000dee7
000000014000dee3  xor        eax, eax
000000014000dee5  jmp        0x14000deec
000000014000dee7  mov        eax, 1
000000014000deec  add        rsp, 0x20
000000014000def0  pop        rbp
000000014000def1  ret        
000000014000def2  int3       
000000014000def3  int3       
000000014000def4  int3       
000000014000def5  int3       
000000014000def6  int3       
000000014000def7  int3       
000000014000def8  int3       
000000014000def9  int3       
000000014000defa  int3       
000000014000defb  int3       
000000014000defc  int3       
000000014000defd  int3       
000000014000defe  int3       
000000014000deff  int3       
000000014000df00  push       rbp
000000014000df02  sub        rsp, 0x20
000000014000df06  mov        rbp, rdx
000000014000df09  mov        rax, qword ptr [rcx]
000000014000df0c  xor        ecx, ecx
000000014000df0e  cmp        dword ptr [rax], 0xc0000005
000000014000df14  sete       cl
000000014000df17  mov        eax, ecx
000000014000df19  add        rsp, 0x20
000000014000df1d  pop        rbp
000000014000df1e  ret        
000000014000df1f  int3       
000000014000df20  add        byte ptr [rax], al
000000014000df22  add        byte ptr [rax], al
000000014000df24  add        byte ptr [rax], al
000000014000df26  add        byte ptr [rax], al
000000014000df28  add        byte ptr [rax], al
000000014000df2a  add        byte ptr [rax], al
000000014000df2c  add        byte ptr [rax], al
000000014000df2e  add        byte ptr [rax], al
000000014000df30  add        byte ptr [rax], al
000000014000df32  add        byte ptr [rax], al
000000014000df34  add        byte ptr [rax], al
000000014000df36  add        byte ptr [rax], al
000000014000df38  add        byte ptr [rax], al
000000014000df3a  add        byte ptr [rax], al
000000014000df3c  add        byte ptr [rax], al
000000014000df3e  add        byte ptr [rax], al
000000014000df40  add        byte ptr [rax], al
000000014000df42  add        byte ptr [rax], al
000000014000df44  add        byte ptr [rax], al
000000014000df46  add        byte ptr [rax], al
000000014000df48  add        byte ptr [rax], al
000000014000df4a  add        byte ptr [rax], al
000000014000df4c  add        byte ptr [rax], al
000000014000df4e  add        byte ptr [rax], al
000000014000df50  add        byte ptr [rax], al
000000014000df52  add        byte ptr [rax], al
000000014000df54  add        byte ptr [rax], al
000000014000df56  add        byte ptr [rax], al
000000014000df58  add        byte ptr [rax], al
000000014000df5a  add        byte ptr [rax], al
000000014000df5c  add        byte ptr [rax], al
000000014000df5e  add        byte ptr [rax], al
000000014000df60  add        byte ptr [rax], al
000000014000df62  add        byte ptr [rax], al
000000014000df64  add        byte ptr [rax], al
000000014000df66  add        byte ptr [rax], al
000000014000df68  add        byte ptr [rax], al
000000014000df6a  add        byte ptr [rax], al
000000014000df6c  add        byte ptr [rax], al
000000014000df6e  add        byte ptr [rax], al
000000014000df70  add        byte ptr [rax], al
000000014000df72  add        byte ptr [rax], al
000000014000df74  add        byte ptr [rax], al
000000014000df76  add        byte ptr [rax], al
000000014000df78  add        byte ptr [rax], al
000000014000df7a  add        byte ptr [rax], al
000000014000df7c  add        byte ptr [rax], al
000000014000df7e  add        byte ptr [rax], al
000000014000df80  add        byte ptr [rax], al
000000014000df82  add        byte ptr [rax], al
000000014000df84  add        byte ptr [rax], al
000000014000df86  add        byte ptr [rax], al
000000014000df88  add        byte ptr [rax], al
000000014000df8a  add        byte ptr [rax], al
000000014000df8c  add        byte ptr [rax], al
000000014000df8e  add        byte ptr [rax], al
000000014000df90  add        byte ptr [rax], al
000000014000df92  add        byte ptr [rax], al
000000014000df94  add        byte ptr [rax], al
000000014000df96  add        byte ptr [rax], al
000000014000df98  add        byte ptr [rax], al
000000014000df9a  add        byte ptr [rax], al
000000014000df9c  add        byte ptr [rax], al
000000014000df9e  add        byte ptr [rax], al
000000014000dfa0  add        byte ptr [rax], al
000000014000dfa2  add        byte ptr [rax], al
000000014000dfa4  add        byte ptr [rax], al
000000014000dfa6  add        byte ptr [rax], al
000000014000dfa8  add        byte ptr [rax], al
000000014000dfaa  add        byte ptr [rax], al
000000014000dfac  add        byte ptr [rax], al
000000014000dfae  add        byte ptr [rax], al
000000014000dfb0  add        byte ptr [rax], al
000000014000dfb2  add        byte ptr [rax], al
000000014000dfb4  add        byte ptr [rax], al
000000014000dfb6  add        byte ptr [rax], al
000000014000dfb8  add        byte ptr [rax], al
000000014000dfba  add        byte ptr [rax], al
000000014000dfbc  add        byte ptr [rax], al
000000014000dfbe  add        byte ptr [rax], al
000000014000dfc0  add        byte ptr [rax], al
000000014000dfc2  add        byte ptr [rax], al
000000014000dfc4  add        byte ptr [rax], al
000000014000dfc6  add        byte ptr [rax], al
000000014000dfc8  add        byte ptr [rax], al
000000014000dfca  add        byte ptr [rax], al
000000014000dfcc  add        byte ptr [rax], al
000000014000dfce  add        byte ptr [rax], al
000000014000dfd0  add        byte ptr [rax], al
000000014000dfd2  add        byte ptr [rax], al
000000014000dfd4  add        byte ptr [rax], al
000000014000dfd6  add        byte ptr [rax], al
000000014000dfd8  add        byte ptr [rax], al
000000014000dfda  add        byte ptr [rax], al
000000014000dfdc  add        byte ptr [rax], al
000000014000dfde  add        byte ptr [rax], al
000000014000dfe0  add        byte ptr [rax], al
000000014000dfe2  add        byte ptr [rax], al
000000014000dfe4  add        byte ptr [rax], al
000000014000dfe6  add        byte ptr [rax], al
000000014000dfe8  add        byte ptr [rax], al
000000014000dfea  add        byte ptr [rax], al
000000014000dfec  add        byte ptr [rax], al
000000014000dfee  add        byte ptr [rax], al
000000014000dff0  add        byte ptr [rax], al
000000014000dff2  add        byte ptr [rax], al
000000014000dff4  add        byte ptr [rax], al
000000014000dff6  add        byte ptr [rax], al
000000014000dff8  add        byte ptr [rax], al
000000014000dffa  add        byte ptr [rax], al
000000014000dffc  add        byte ptr [rax], al
000000014000dffe  add        byte ptr [rax], al