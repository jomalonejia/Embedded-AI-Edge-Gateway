# Embedded AI Edge Gateway

> 一款融合音视频采集、AI 推理、外设控制与边缘计算能力的智能嵌入式网关系统。

---

## 🧱 项目概述

**Embedded AI Edge Gateway** 是一套运行在嵌入式 Linux / ARM 平台上的边缘智能系统，  
集成了音视频采集、AI 分析、语音交互、远程管理与模块化框架设计。

系统支持多任务并行、模块动态加载、云端同步、设备间协作，  
可广泛应用于智能监控、工业边缘计算、语音识别终端、IoT 边缘节点等场景。

---

## ⚙️ 系统架构图

```mermaid
flowchart TD
    A[Sensor / Camera / Mic] --> B[Data Capture Service]
    B --> C[FFmpeg Engine / Media Codec]
    C --> D["AI Inference Engine<br>(ONNX / TFLite / TensorRT)"]
    D --> E[Result Dispatcher]
    E --> F[MQTT / HTTP / WebSocket]
    F --> G[Cloud Platform / Dashboard]

    D -->|Voice Wakeup| H[Speech Interaction Module]
    B -->|Event Bus| I[Plugin Manager]
    I -->|Lifecycle| J[Device Control & Config Service]
    J --> K[System Monitor / Log Center]
