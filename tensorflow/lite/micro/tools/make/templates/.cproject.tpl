<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<?fileVersion 4.0.0?><cproject storage_type_id="org.eclipse.cdt.core.XmlProjectDescriptionStorage">
	<storageModule configRelations="2" moduleId="org.eclipse.cdt.core.settings">
		<cconfiguration id="com.ti.ccstudio.buildDefinitions.MSP430.Debug.1580311049">
			<storageModule buildSystemId="org.eclipse.cdt.managedbuilder.core.configurationDataProvider" id="com.ti.ccstudio.buildDefinitions.MSP430.Debug.1580311049" moduleId="org.eclipse.cdt.core.settings" name="Debug">
				<externalSettings/>
				<extensions>
					<extension id="com.ti.ccstudio.binaryparser.CoffParser" point="org.eclipse.cdt.core.BinaryParser"/>
					<extension id="org.eclipse.cdt.core.GmakeErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
					<extension id="org.eclipse.cdt.core.GASErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
					<extension id="org.eclipse.cdt.core.GLDErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
					<extension id="org.eclipse.cdt.core.GCCErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
				</extensions>
			</storageModule>
			<storageModule moduleId="cdtBuildSystem" version="4.0.0">
				<configuration artifactExtension="out" artifactName="${ProjName}" buildProperties="" cleanCommand="${CG_CLEAN_CMD}" description="" id="com.ti.ccstudio.buildDefinitions.MSP430.Debug.1580311049" name="Debug" parent="com.ti.ccstudio.buildDefinitions.MSP430.Debug">
					<folderInfo id="com.ti.ccstudio.buildDefinitions.MSP430.Debug.1580311049." name="/" resourcePath="">
						<toolChain id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.DebugToolchain.417927477" name="TI Build Tools" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.DebugToolchain" targetTool="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.linkerDebug.1261893026">
							<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.core.OPT_TAGS.1016803489" superClass="com.ti.ccstudio.buildDefinitions.core.OPT_TAGS" valueType="stringList">
								<listOptionValue builtIn="false" value="DEVICE_CONFIGURATION_ID=MSP430FR5994"/>
								<listOptionValue builtIn="false" value="DEVICE_ENDIANNESS=little"/>
								<listOptionValue builtIn="false" value="OUTPUT_FORMAT=ELF"/>
								<listOptionValue builtIn="false" value="LINKER_COMMAND_FILE=msp430fr5994.ld"/>
								<listOptionValue builtIn="false" value="RUNTIME_SUPPORT_LIBRARY=libstdc++.a"/>
								<listOptionValue builtIn="false" value="CCS_MBS_VERSION=6.1.3"/>
								<listOptionValue builtIn="false" value="OUTPUT_TYPE=executable"/>
							</option>
							<option id="com.ti.ccstudio.buildDefinitions.core.OPT_CODEGEN_VERSION.646572277" name="Compiler version" superClass="com.ti.ccstudio.buildDefinitions.core.OPT_CODEGEN_VERSION" value="GNU_8.3.0.16:Mitto Systems Limited" valueType="string"/>
							<targetPlatform id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.targetPlatformDebug.1024373107" name="Platform" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.targetPlatformDebug"/>
							<builder buildPath="${BuildDirectory}" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.builderDebug.1227304732" keepEnvironmentInBuildfile="false" name="GNU Make" parallelBuildOn="true" parallelizationNumber="optimal" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.builderDebug"/>
							<tool id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.compilerDebug.1215434735" name="GNU Compiler" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.compilerDebug">
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MMCU.1591335677" name="Target MCU (-mmcu)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MMCU" value="msp430fr5994" valueType="string"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MHWMULT.1662655751" name="Hardware multiply (-mhwmult)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MHWMULT" value="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MHWMULT.F5SERIES" valueType="enumerated"/>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.INCLUDE_PATH.1764290335" name="Include paths (-I)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.INCLUDE_PATH" valueType="includePath">
									<listOptionValue builtIn="false" value="${CCS_BASE_ROOT}/msp430/include_gcc"/>
									<listOptionValue builtIn="false" value="${workspace_loc:/${ProjName}/third_party/kissfft}"/>
									<listOptionValue builtIn="false" value="${workspace_loc:/${ProjName}/third_party/flatbuffers/include}"/>
									<listOptionValue builtIn="false" value="${workspace_loc:/${ProjName}/third_party/gemmlowp}"/>
									<listOptionValue builtIn="false" value="${PROJECT_ROOT}"/>
									<listOptionValue builtIn="false" value="${CG_TOOL_INCLUDE_PATH}"/>
								</option>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OTHER_FLAGS.1871838461" name="Miscellaneous flags" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OTHER_FLAGS" valueType="stringList">
									<listOptionValue builtIn="false" value="-mlarge"/>
									<listOptionValue builtIn="false" value="-fno-inline"/>
									<listOptionValue builtIn="false" value="-lm"/>
									<listOptionValue builtIn="false" value="-mdata-region=none"/>
									<listOptionValue builtIn="false" value="-mcode-region=upper"/>
								</option>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.STD_C.1033311266" name="C Language standard (-std)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.STD_C" value="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.STD_C.C17" valueType="enumerated"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.STD_CPP.908463198" name="C++ Language standard (-std)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.STD_CPP" value="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.STD_CPP.CPP14" valueType="enumerated"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OPT_LEVEL.295943311" name="Optimization Level" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OPT_LEVEL" value="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OPT_LEVEL.OPT_FOR_DEBUG" valueType="enumerated"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.DEBUG.1009531898" name="Generate debug information (-g)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.DEBUG" value="true" valueType="boolean"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.DWARF_VERSION.648243326" name="Generate debug information in DWARF version (-gdwarf-)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.DWARF_VERSION" value="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.DWARF_VERSION.3" valueType="enumerated"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.STRICT_DWARF.1249125099" name="Do not emit DWARF additions beyond selected version (-gstrict-dwarf)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.STRICT_DWARF" value="true" valueType="boolean"/>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.ASM_SPECIFIC_FLAGS.951880971" name="Miscellaneous assembly source specific flags" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.ASM_SPECIFIC_FLAGS" valueType="stringList">
									<listOptionValue builtIn="false" value="-x assembler-with-cpp"/>
								</option>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.PROF.1652931628" name="Enable function profiling (-p)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.PROF" value="false" valueType="boolean"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.TINY_PRINTF.666882124" name="Use non-reentrant printf to reduce code size (-mtiny-printf)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.TINY_PRINTF" value="true" valueType="boolean"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.SINGLE_PRECISION_CONSTANT.989647006" name="Convert floating point constants to single precision constants (-fsingle-precision-constant)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.SINGLE_PRECISION_CONSTANT" value="false" valueType="boolean"/>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.DEFINE.1565801239" name="Define symbols (-D)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.DEFINE" valueType="definedSymbols">
									<listOptionValue builtIn="false" value="TF_LITE_STATIC_MEMORY"/>
									<listOptionValue builtIn="false" value="TFLITE_EMULATE_FLOAT"/>
								</option>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__C_SRCS.1753611917" name="C Sources" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__C_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__CPP_SRCS.734600769" name="C++ Sources" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__CPP_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__ASM_SRCS.1545012817" name="Assembly Sources" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__ASM_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__ASM2_SRCS.1010217728" name="Assembly Sources" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__ASM2_SRCS"/>
							</tool>
							<tool id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.linkerDebug.1261893026" name="GNU Linker" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.linkerDebug">
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.OTHER_FLAGS.1363978555" name="Miscellaneous flags" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.OTHER_FLAGS" valueType="stringList">
									<listOptionValue builtIn="false" value="-mmcu=msp430fr5994"/>
								</option>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.LIBRARY.2122307148" name="Libraries (-l, --library)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.LIBRARY" valueType="libs">
									<listOptionValue builtIn="false" value="gcc"/>
									<listOptionValue builtIn="false" value="stdc++"/>
									<listOptionValue builtIn="false" value="m"/>
									<listOptionValue builtIn="false" value="c"/>
								</option>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.GC_SECTIONS.738223547" name="Remove unused sections (--gc-sections)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.GC_SECTIONS" value="true" valueType="boolean"/>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.SEARCH_PATH.1512970041" name="Library search path (-L, --library-path)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.SEARCH_PATH" valueType="libPaths">
									<listOptionValue builtIn="false" value="${CCS_BASE_ROOT}/msp430/include_gcc"/>
								</option>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.OUTPUT_FILE.827235002" name="Output file (-o)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.OUTPUT_FILE" value="${ProjName}.out" valueType="string"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.MAP_FILE.997631841" name="Write a map file (-Map)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.MAP_FILE" value="${ProjName}.map" valueType="string"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__CMD_SRCS.323791984" name="Linker Command Files" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__CMD_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__CMD2_SRCS.1214908475" name="Linker Command Files" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__CMD2_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__GEN_CMDS.1513079242" name="Generated Linker Command Files" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__GEN_CMDS"/>
							</tool>
							<tool id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.hex.369956145" name="GNU Objcopy Utility" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.hex"/>
						</toolChain>
					</folderInfo>
					<sourceEntries>
						<entry flags="VALUE_WORKSPACE_PATH|RESOLVED" kind="sourcePath" name=""/>
					</sourceEntries>
				</configuration>
			</storageModule>
			<storageModule moduleId="org.eclipse.cdt.core.externalSettings"/>
		</cconfiguration>
		<cconfiguration id="com.ti.ccstudio.buildDefinitions.MSP430.Release.1893582649">
			<storageModule buildSystemId="org.eclipse.cdt.managedbuilder.core.configurationDataProvider" id="com.ti.ccstudio.buildDefinitions.MSP430.Release.1893582649" moduleId="org.eclipse.cdt.core.settings" name="Release">
				<externalSettings/>
				<extensions>
					<extension id="com.ti.ccstudio.binaryparser.CoffParser" point="org.eclipse.cdt.core.BinaryParser"/>
					<extension id="org.eclipse.cdt.core.GmakeErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
					<extension id="org.eclipse.cdt.core.GASErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
					<extension id="org.eclipse.cdt.core.GLDErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
					<extension id="org.eclipse.cdt.core.GCCErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
				</extensions>
			</storageModule>
			<storageModule moduleId="cdtBuildSystem" version="4.0.0">
				<configuration artifactExtension="out" artifactName="${ProjName}" buildProperties="" cleanCommand="${CG_CLEAN_CMD}" description="" id="com.ti.ccstudio.buildDefinitions.MSP430.Release.1893582649" name="Release" parent="com.ti.ccstudio.buildDefinitions.MSP430.Release">
					<folderInfo id="com.ti.ccstudio.buildDefinitions.MSP430.Release.1893582649." name="/" resourcePath="">
						<toolChain id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.ReleaseToolchain.1157121273" name="TI Build Tools" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.ReleaseToolchain" targetTool="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.linkerRelease.740575464">
							<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.core.OPT_TAGS.723212755" superClass="com.ti.ccstudio.buildDefinitions.core.OPT_TAGS" valueType="stringList">
								<listOptionValue builtIn="false" value="DEVICE_CONFIGURATION_ID=MSP430FR5994"/>
								<listOptionValue builtIn="false" value="DEVICE_ENDIANNESS=little"/>
								<listOptionValue builtIn="false" value="OUTPUT_FORMAT=ELF"/>
								<listOptionValue builtIn="false" value="CCS_MBS_VERSION=6.1.3"/>
								<listOptionValue builtIn="false" value="LINKER_COMMAND_FILE=msp430fr5994.ld"/>
								<listOptionValue builtIn="false" value="RUNTIME_SUPPORT_LIBRARY=libc.a"/>
								<listOptionValue builtIn="false" value="OUTPUT_TYPE=executable"/>
							</option>
							<option id="com.ti.ccstudio.buildDefinitions.core.OPT_CODEGEN_VERSION.409107431" name="Compiler version" superClass="com.ti.ccstudio.buildDefinitions.core.OPT_CODEGEN_VERSION" value="GNU_8.3.0.16:Mitto Systems Limited" valueType="string"/>
							<targetPlatform id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.targetPlatformRelease.72010440" name="Platform" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.targetPlatformRelease"/>
							<builder buildPath="${BuildDirectory}" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.builderRelease.463888947" keepEnvironmentInBuildfile="false" name="GNU Make" parallelBuildOn="true" parallelizationNumber="optimal" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.builderRelease"/>
							<tool id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.compilerRelease.1507826342" name="GNU Compiler" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.compilerRelease">
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MMCU.790034488" name="Target MCU (-mmcu)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MMCU" useByScannerDiscovery="false" value="msp430fr5994" valueType="string"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MHWMULT.1665106161" name="Hardware multiply (-mhwmult)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MHWMULT" useByScannerDiscovery="false" value="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.MHWMULT.F5SERIES" valueType="enumerated"/>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.INCLUDE_PATH.942659656" name="Include paths (-I)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.INCLUDE_PATH" valueType="includePath">
									<listOptionValue builtIn="false" value="${CCS_BASE_ROOT}/msp430/include_gcc"/>
									<listOptionValue builtIn="false" value="${PROJECT_ROOT}"/>
									<listOptionValue builtIn="false" value="${CG_TOOL_INCLUDE_PATH}"/>
								</option>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OTHER_FLAGS.2019816290" name="Miscellaneous flags" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OTHER_FLAGS" useByScannerDiscovery="false" valueType="stringList">
									<listOptionValue builtIn="false" value="-mlarge"/>
									<listOptionValue builtIn="false" value="-mcode-region=none"/>
									<listOptionValue builtIn="false" value="-mdata-region=lower"/>
								</option>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OPT_LEVEL.release.1556608282" name="Optimization Level" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OPT_LEVEL.release" useByScannerDiscovery="false" value="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.OPT_LEVEL.OPT_FOR_SPACE" valueType="enumerated"/>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.ASM_SPECIFIC_FLAGS.1684464405" name="Miscellaneous assembly source specific flags" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compilerID.ASM_SPECIFIC_FLAGS" useByScannerDiscovery="false" valueType="stringList">
									<listOptionValue builtIn="false" value="-x assembler-with-cpp"/>
								</option>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__C_SRCS.1422709616" name="C Sources" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__C_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__CPP_SRCS.1332249375" name="C++ Sources" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__CPP_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__ASM_SRCS.1599536279" name="Assembly Sources" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__ASM_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__ASM2_SRCS.1466890223" name="Assembly Sources" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.compiler.inputType__ASM2_SRCS"/>
							</tool>
							<tool id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.linkerRelease.740575464" name="GNU Linker" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exe.linkerRelease">
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.OTHER_FLAGS.2072701571" name="Miscellaneous flags" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.OTHER_FLAGS" useByScannerDiscovery="false" valueType="stringList">
									<listOptionValue builtIn="false" value="-mmcu=msp430fr5994"/>
								</option>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.LIBRARY.534532427" name="Libraries (-l, --library)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.LIBRARY" useByScannerDiscovery="false" valueType="libs">
									<listOptionValue builtIn="false" value="gcc"/>
									<listOptionValue builtIn="false" value="c"/>
								</option>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.GC_SECTIONS.1605888689" name="Remove unused sections (--gc-sections)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.GC_SECTIONS" useByScannerDiscovery="false" value="true" valueType="boolean"/>
								<option IS_BUILTIN_EMPTY="false" IS_VALUE_EMPTY="false" id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.SEARCH_PATH.1515006676" name="Library search path (-L, --library-path)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.SEARCH_PATH" valueType="libPaths">
									<listOptionValue builtIn="false" value="${CCS_BASE_ROOT}/msp430/include_gcc"/>
								</option>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.OUTPUT_FILE.550453576" name="Output file (-o)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.OUTPUT_FILE" useByScannerDiscovery="false" value="${ProjName}.out" valueType="string"/>
								<option id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.MAP_FILE.1161871240" name="Write a map file (-Map)" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.linkerID.MAP_FILE" useByScannerDiscovery="false" value="${ProjName}.map" valueType="string"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__CMD_SRCS.548254837" name="Linker Command Files" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__CMD_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__CMD2_SRCS.531628620" name="Linker Command Files" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__CMD2_SRCS"/>
								<inputType id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__GEN_CMDS.83308340" name="Generated Linker Command Files" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.exeLinker.inputType__GEN_CMDS"/>
							</tool>
							<tool id="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.hex.1244078758" name="GNU Objcopy Utility" superClass="com.ti.ccstudio.buildDefinitions.MSP430_GNU_8.2.hex"/>
						</toolChain>
					</folderInfo>
				</configuration>
			</storageModule>
			<storageModule moduleId="org.eclipse.cdt.core.externalSettings"/>
		</cconfiguration>
	</storageModule>
	<storageModule moduleId="org.eclipse.cdt.core.LanguageSettingsProviders"/>
	<storageModule moduleId="cdtBuildSystem" version="4.0.0">
		<project id="simple.com.ti.ccstudio.buildDefinitions.MSP430.ProjectType.255568251" name="MSP430" projectType="com.ti.ccstudio.buildDefinitions.MSP430.ProjectType"/>
	</storageModule>
	<storageModule moduleId="scannerConfiguration"/>
	<storageModule moduleId="org.eclipse.cdt.make.core.buildtargets"/>
</cproject>
