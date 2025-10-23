cl /std:c++latest /c /interface /EHsc /nologo /O2 "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.44.35207\modules\std.ixx"
cl /std:c++latest /c /interface /EHsc /nologo /O2 /TP nob++.mxx /Fo:nob_module.obj
cl /std:c++latest /EHsc /nologo /O2 nob++.cxx nob_module.obj std.obj
rm nob.ifc, nob_module.obj, std.ifc, std.obj, nob++.obj
