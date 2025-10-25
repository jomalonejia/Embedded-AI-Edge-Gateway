## 🧩 模块详情
1️⃣ Capture 模块

支持 V4L2、FFmpeg、OpenCV 视频采集后端

提供统一 FrameBuffer 管理接口

可通过信号/回调向 Inference 模块发送帧数据

支持多路摄像头与音频并发采集

2️⃣ Inference 模块

封装 ONNXRuntime、TFLite、TensorRT 等推理框架

支持插件式模型加载接口

输出统一格式的推理结果（bounding boxes, scores, labels）

3️⃣ Behavior Analysis 模块

基于 Inference 结果执行行为识别

跌倒检测

打架识别

区域入侵检测

支持规则引擎 + AI 模型混合判定

4️⃣ Speech 模块

提供语音唤醒、ASR、TTS

可与行为分析联动，实现语音提示

支持离线/在线识别模式

5️⃣ Dispatcher 模块

封装结果上报机制

支持 MQTT/HTTP/WebSocket

可配置多目标推送（云端 / 本地 Dashboard）

6️⃣ Plugins 模块

提供插件注册与生命周期管理接口

支持动态加载 (.so)

可订阅系统事件或扩展采集/推理任务

7️⃣ Core 模块

配置管理：统一加载 JSON / YAML / INI

日志中心：Qt / spdlog 输出多级别日志

事件总线：模块间异步通信机制

系统控制：启动/停止服务、健康监控、统计信息
