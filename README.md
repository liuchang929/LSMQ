# LSMQ
IOS组件化解耦之消息队列
组件化解耦神器，基于订阅者模式的消息队列


使用方式:

添加消息监听:

[[LSMQMessageListManager shareInstance] addMsg:text topic:@"testwTopic"];

发送消息:

[[LSMQMessageListManager shareInstance] addTopic:(id<LSMQTopicReceiveProtocol>)self topic:@"testwTopic"];
