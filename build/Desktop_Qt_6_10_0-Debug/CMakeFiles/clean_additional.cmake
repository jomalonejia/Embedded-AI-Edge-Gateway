# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "src/capture/CMakeFiles/capture_autogen.dir/AutogenUsed.txt"
  "src/capture/CMakeFiles/capture_autogen.dir/ParseCache.txt"
  "src/capture/capture_autogen"
  "src/control/CMakeFiles/control_autogen.dir/AutogenUsed.txt"
  "src/control/CMakeFiles/control_autogen.dir/ParseCache.txt"
  "src/control/control_autogen"
  "src/core/CMakeFiles/core_autogen.dir/AutogenUsed.txt"
  "src/core/CMakeFiles/core_autogen.dir/ParseCache.txt"
  "src/core/core_autogen"
  "src/dispatcher/CMakeFiles/dispatcher_autogen.dir/AutogenUsed.txt"
  "src/dispatcher/CMakeFiles/dispatcher_autogen.dir/ParseCache.txt"
  "src/dispatcher/dispatcher_autogen"
  "src/inference/CMakeFiles/inference_autogen.dir/AutogenUsed.txt"
  "src/inference/CMakeFiles/inference_autogen.dir/ParseCache.txt"
  "src/inference/inference_autogen"
  "src/main/CMakeFiles/EmbeddedAIEdgeGateway_autogen.dir/AutogenUsed.txt"
  "src/main/CMakeFiles/EmbeddedAIEdgeGateway_autogen.dir/ParseCache.txt"
  "src/main/EmbeddedAIEdgeGateway_autogen"
  "src/plugins/CMakeFiles/plugins_autogen.dir/AutogenUsed.txt"
  "src/plugins/CMakeFiles/plugins_autogen.dir/ParseCache.txt"
  "src/plugins/plugins_autogen"
  "src/speech/CMakeFiles/speech_autogen.dir/AutogenUsed.txt"
  "src/speech/CMakeFiles/speech_autogen.dir/ParseCache.txt"
  "src/speech/speech_autogen"
  )
endif()
