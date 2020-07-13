/*
 Navicat MySQL Data Transfer

 Source Server         : orange
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : shiro

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 13/07/2020 14:06:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for completion
-- ----------------------------
DROP TABLE IF EXISTS `completion`;
CREATE TABLE `completion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目ID',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题目类型',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目',
  `stem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '填空题题干',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '填空题答案',
  `createtime` datetime(0) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '填空题信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of completion
-- ----------------------------
INSERT INTO `completion` VALUES (1, '填空题', 'MS Office', '你好吗', '123', '2020-03-23 14:46:00');
INSERT INTO `completion` VALUES (4, '填空题', 'Java语言', '嘎嘎嘎', '谷歌', '2020-03-23 17:18:50');
INSERT INTO `completion` VALUES (6, '填空题', 'Java语言', '法国发过', '呈现出', '2020-04-24 15:23:23');

-- ----------------------------
-- Table structure for curriculum
-- ----------------------------
DROP TABLE IF EXISTS `curriculum`;
CREATE TABLE `curriculum`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `teacherid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师id',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目',
  `classid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级id',
  `classsize` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级人数',
  `addtime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of curriculum
-- ----------------------------
INSERT INTO `curriculum` VALUES (2, 'qwe', 'Web语言', '2', '24', '2020-03-29 13:22:46');
INSERT INTO `curriculum` VALUES (3, 'qwe', 'VB语言', '1', '43', '2020-03-29 13:27:28');

-- ----------------------------
-- Table structure for device_project_relevance
-- ----------------------------
DROP TABLE IF EXISTS `device_project_relevance`;
CREATE TABLE `device_project_relevance`  (
  `id` int(11) NOT NULL COMMENT '设备项目关联id',
  `device_id` int(11) NULL DEFAULT NULL COMMENT '设备id',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '项目id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备项目关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for device_types
-- ----------------------------
DROP TABLE IF EXISTS `device_types`;
CREATE TABLE `device_types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备类型id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备类型名',
  `buildtimes` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `edittime` datetime(0) NULL DEFAULT NULL COMMENT '修改日期',
  `editby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device_types
-- ----------------------------
INSERT INTO `device_types` VALUES (1, 'RTU', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (2, '视频监控', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (3, 'LED大屏', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (4, '视频会议', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (5, '水位计', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (6, '闸站自动化', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (7, '墒情', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (8, '自备井', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (9, '流量计', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (10, '雨量计', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (11, 'PLC', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (12, '水质检测', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (13, '电源设备', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (14, '机房建设', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (15, '无人机', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (16, '施工', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (17, '空调', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');
INSERT INTO `device_types` VALUES (18, 'UPS', '2020-05-13 00:00:00', '2020-05-13 00:00:00', 'admin');

-- ----------------------------
-- Table structure for error
-- ----------------------------
DROP TABLE IF EXISTS `error`;
CREATE TABLE `error`  (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `problemid` int(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of error
-- ----------------------------
INSERT INTO `error` VALUES (17, '123', 8);
INSERT INTO `error` VALUES (19, '123', 9);
INSERT INTO `error` VALUES (21, '123', 34);

-- ----------------------------
-- Table structure for grades
-- ----------------------------
DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `classid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级id',
  `studentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生id',
  `addtime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO `grades` VALUES (2, '1', '242', '2020-03-29 13:59:41');
INSERT INTO `grades` VALUES (3, '2', '456', '2020-03-29 13:59:25');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单地址',
  `parent_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级ID',
  `order` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单顺序',
  `icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单图标',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单类型',
  `addtime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '用户管理', '#', '0', '1', '#', '1', '2020-05-19 16:24:18');
INSERT INTO `menu` VALUES (2, '用户信息', '/User/list', '1', '1', '#', '2', '2020-05-07 16:25:45');
INSERT INTO `menu` VALUES (3, '在线用户', '/User/online', '1', '3', '#', '2', '2020-05-07 16:26:31');
INSERT INTO `menu` VALUES (4, '角色管理', '/Role/list', '1', '2', '#', '2', '2020-05-09 13:09:08');
INSERT INTO `menu` VALUES (5, '题库管理', '#', '0', '3', '#', '1', '2020-05-09 13:10:52');
INSERT INTO `menu` VALUES (6, '选择题', '/Test/list', '5', '1', '#', '2', '2020-05-09 13:12:44');
INSERT INTO `menu` VALUES (7, '填空题', '/Completion/list', '5', '2', '#', '2', '2020-05-09 13:13:35');
INSERT INTO `menu` VALUES (8, '选课管理', '#', '0', '4', '#', '1', '2020-05-09 13:14:59');
INSERT INTO `menu` VALUES (9, '课程信息', '/Curriculum/list', '8', '1', '#', '2', '2020-05-09 13:15:42');
INSERT INTO `menu` VALUES (10, '班级信息', '/Grades/list', '8', '2', '#', '2', '2020-05-09 13:16:34');
INSERT INTO `menu` VALUES (11, '代码管理', '#', '0', '5', '#', '1', '2020-05-07 16:34:57');
INSERT INTO `menu` VALUES (12, '代码生成', '/generate', '11', '1', '#', '2', '2020-05-07 16:35:44');
INSERT INTO `menu` VALUES (13, '菜单管理', '#', '0', '2', '#', '1', '2020-05-11 13:09:37');
INSERT INTO `menu` VALUES (14, '菜单信息', '/Menu/lists', '13', '1', '#', '2', '2020-05-11 13:10:21');

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单角色关联表id',
  `menuid` int(11) NULL DEFAULT NULL COMMENT '菜单id',
  `roleid` int(11) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (1, 1, 1);
INSERT INTO `menu_role` VALUES (2, 2, 1);
INSERT INTO `menu_role` VALUES (3, 3, 1);
INSERT INTO `menu_role` VALUES (4, 4, 1);
INSERT INTO `menu_role` VALUES (5, 5, 1);
INSERT INTO `menu_role` VALUES (6, 6, 1);
INSERT INTO `menu_role` VALUES (7, 7, 1);
INSERT INTO `menu_role` VALUES (8, 8, 1);
INSERT INTO `menu_role` VALUES (9, 9, 1);
INSERT INTO `menu_role` VALUES (10, 10, 1);
INSERT INTO `menu_role` VALUES (11, 11, 1);
INSERT INTO `menu_role` VALUES (12, 12, 1);
INSERT INTO `menu_role` VALUES (20, 13, 1);
INSERT INTO `menu_role` VALUES (21, 14, 1);

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '试卷ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试卷名称',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目',
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出题教师',
  `addtime` datetime(0) NOT NULL COMMENT '出题时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试卷信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (1, '2018年-2019年java下学期测试', 'Java语言', '123', '2020-04-02 13:18:08');

-- ----------------------------
-- Table structure for paperx
-- ----------------------------
DROP TABLE IF EXISTS `paperx`;
CREATE TABLE `paperx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `paperid` int(11) NOT NULL COMMENT '试题ID',
  `chooseid` int(11) NOT NULL COMMENT '选择题ID',
  `score` int(11) NOT NULL COMMENT '每题分值',
  `addtime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试卷选择题信息关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paperx
-- ----------------------------
INSERT INTO `paperx` VALUES (1, 1, 3, 2, '2020-04-02 13:57:08');

-- ----------------------------
-- Table structure for problems
-- ----------------------------
DROP TABLE IF EXISTS `problems`;
CREATE TABLE `problems`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stem` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problems
-- ----------------------------
INSERT INTO `problems` VALUES (3, '选择题', '队的 出入方式?( )', 'Java语言', 'A.先进先出', 'B.先进后出', 'C.不出队', 'D.无规定,随意进出', 'A');
INSERT INTO `problems` VALUES (6, '选择题', 'JAVA所定义的版本中不包括:( )', 'Java语言', 'A.JAVA2 EE', 'B.JAVA2 Card', 'C.JAVA2 ME', 'D. JAVA2 HE', 'D');
INSERT INTO `problems` VALUES (7, '选择题', '数据的存储结构是指（ ）。', 'Java语言', 'A．存储在外存中的数据 ', 'B．数据所占的存储空间量 ', 'C．数据在计算机中的顺序存储方式 ', 'D．数据的逻辑结构在计算机中的表示 ', 'D');
INSERT INTO `problems` VALUES (8, '选择题', '下列关于栈的描述中错误的是（ ）。', 'Java语言', 'A． 栈是先进后出的线性表', 'B． 栈只能顺序存储 ', 'C． 栈具有记忆作用 ', 'D． 对栈的插入与删除操作中，不需要改变栈底指针 ', 'B');
INSERT INTO `problems` VALUES (9, '选择题', '对于长度为 n 的线性表，在最坏情况下，下列各排序法所对应的比较次数中正确的是（ ）。', 'Java语言', 'A．冒泡排序为 n/2', 'B．冒泡排序为 n ', 'C．快速排序为 n ', 'D．快速排序为 n(n-1)/2 ', 'D');
INSERT INTO `problems` VALUES (10, '选择题', '对长度为 n 的线性表进行顺序查找，在最坏情况下所需要的比较次数为（ ）。', 'Java语言', 'A．log2n ', 'B．n/2 ', 'C．n ', 'D．n+1', 'C');
INSERT INTO `problems` VALUES (11, '选择题', '下列对于线性链表的描述中正确的是（ ）。', 'Java语言', 'A． 存储空间不一定是连续，且各元素的存储顺序是任意的 ', 'B． 存储空间不一定是连续，且前件元素一定存储在后件元素的前面 ', 'C． 存储空间必须连续，且前件元素一定存储在后件元素的前面', 'D． 存储空间必须连续，且各元素的存储顺序是任意的', 'A');
INSERT INTO `problems` VALUES (12, '选择题', '下列对于软件测试的描述中正确的是（ ）。', 'Java语言', 'A． 软件测试的目的是证明程序是否正确', 'B． 软件测试的目的是使程序运行结果正确 ', 'C． 软件测试的目的是尽可能多地发现程序中的错误', 'D． 软件测试的目的是使程序符合结构化原则', 'C');
INSERT INTO `problems` VALUES (13, '选择题', '为了使模块尽可能独立，要求（ ）。', 'Java语言', 'A． 模块的内聚程度要尽量高，且各模块间的耦合程度要尽量强 ', 'B． 模块的内聚程度要尽量高，且各模块间的耦合程度要尽量弱', 'C． 模块的内聚程度要尽量低，且各模块间的耦合程度要尽量弱 ', 'D． 模块的内聚程度要尽量低，且各模块间的耦合程度要尽量强 ', 'B');
INSERT INTO `problems` VALUES (14, '选择题', '下列描述中正确的是（ ）。', 'Java语言', 'A．程序就是软件', 'B．软件开发不受计算机系统的限制 ', 'C．软件既是逻辑实体，又是物理实体 ', 'D．软件是程序、数据与相关文档的集合', 'D');
INSERT INTO `problems` VALUES (15, '选择题', '数据独立性是数据库技术的重要特点之一，所谓数据独立性是指（ ）。', 'Java语言', 'A．数据与程序独立存放 ', 'B．不同的数据被存放在不同的文件中 ', 'C．不同的数据只能被对应的应用程序所使用 ', 'D．以上三种说法都不对 ', 'D');
INSERT INTO `problems` VALUES (16, '选择题', '用树形结构表示实体之间联系的模型是（ ）。 ', 'Java语言', 'A．关系模型 ', 'B．网状模型', 'C．层次模型 ', 'D．以上三个都是 ', 'C');
INSERT INTO `problems` VALUES (17, '选择题', '在 Java 中，负责对字节代码解释执行的是（ ）。', 'Java语言', 'A．垃圾回收器', 'B．虚拟机 ', 'C．编译器 ', 'D．多线程机制 ', 'B');
INSERT INTO `problems` VALUES (18, '选择题', '下列叙述中，正确的是 ( ).', 'Java语言', 'A．Java 语言的标识符是区分大小写的', 'B．源文件名与 public 类名可以不相同', 'C．源文件扩展名为.jar', 'D．源文件中 public 类的数目不限 ', 'A');
INSERT INTO `problems` VALUES (19, '选择题', '下列属于合法的 Java 标识符是', 'Java语言', 'A．_cat ', 'B．5books ', 'C．+static', 'D．-3.14159', 'A');
INSERT INTO `problems` VALUES (20, '选择题', '在 Java 中，表示换行符的转义字符是', 'Java语言', 'A．\\n ', 'B．\\f', 'C．\'n\' ', 'D．\\dd ', 'A');
INSERT INTO `problems` VALUES (21, '选择题', '在 Java 中，由 Java 编译器自动导入，而无需在程序中用 import 导入的包是', 'Java语言', 'A．java.applet', 'B．java.awt', 'C．java.util', 'D．java.lang ', 'D');
INSERT INTO `problems` VALUES (22, '选择题', '在 Java 中，所有类的根类是 ', 'Java语言', 'A．java.lang.Object ', 'B．java.lang.Class ', 'C．java.applet.Applet ', 'D．java.awt.Frame ', 'A');
INSERT INTO `problems` VALUES (23, '选择题', '在 Java 中，用 Package 语句说明一个包时，该包的层次结构必须是', 'Java语言', 'A．与文件的结构相同', 'B．与文件目录的层次相同 ', 'C．与文件类型相同', 'D．与文件大小相同', 'B');
INSERT INTO `problems` VALUES (24, '选择题', '在读字符文件 Employee.dat 时，使用该文件作为参数的类是', 'Java语言', 'A．BufferReader', 'B．DataInputStream', 'C．DataOutoutStream', 'D．FileInputStream', 'D');
INSERT INTO `problems` VALUES (25, '选择题', '下列构造方法的调用方式中，正确的是', 'Java语言', 'A．按照一般方法调用 ', 'B．由用户直接调用', 'C．只能通过 new 自动调用', 'D．被系统调用', 'C');
INSERT INTO `problems` VALUES (26, '选择题', '类 Panel 默认的布局管理器是', 'Java语言', 'A．GridLayout ', 'B．BorderLayout', 'C．FlowLayout', 'D．CardLayout', 'C');
INSERT INTO `problems` VALUES (27, '选择题', '在 Java 中，能实现多重继承效果的方式是 ', 'Java语言', 'A．内部类', 'B．适配器', 'C．接口', 'D．同步', 'C');
INSERT INTO `problems` VALUES (28, '选择题', 'char 类型的取值范围是 ', 'Java语言', 'A．2-7 ~27 -1 ', 'B．0~216-1', 'B．0~216-1', 'D．0~28-1 ', 'B');
INSERT INTO `problems` VALUES (29, '选择题', '能够支持 javadoc 命令的注释语句是', 'Java语言', 'A．/**...// ', 'B．/*...*/ ', 'C．//', 'D．/**...*/', 'D');
INSERT INTO `problems` VALUES (30, '选择题', '十进制数 16 的 16 进制表示格式是', 'Java语言', 'A．0x10', 'B．0x16', 'C．0xA ', 'D．16 ', 'A');
INSERT INTO `problems` VALUES (31, '选择题', 'int 型 public 成员变量 MAX_LENGTH，该值保持为常数 100，则定义这个变量的语句是', 'Java语言', 'A．public int MAX_LENGTH=100', 'B．final int MAX_LENGTH=100 ', 'C．public const int MAX_LENGTH=100', 'D．public final int MAX_LENGTH=100 ', 'D');
INSERT INTO `problems` VALUES (32, '选择题', '下列不是 InputStream 子类的是 ', 'Java语言', 'A．文件输入流 FileInputStream', 'B．final int MAX_LENGTH=100 ', 'C．public const int MAX_LENGTH=100', 'D．public final int MAX_LENGTH=100', 'C');
INSERT INTO `problems` VALUES (33, '选择题', '下列方法中可以用来创建一个新线程的是 ', 'Java语言', 'A．实现 java.lang.Runnable 接口并重写 start()方法', 'B．实现 java.lang.Runnable 接口并重写 run()方法', 'C．实现 java.lang.Thread 类并重写 run()方法 ', 'D．实现 java.lang.Thread 类并重写 start()方法', 'C');
INSERT INTO `problems` VALUES (34, '选择题', '下列关于 Java Application 与 Applet 的说法中，正确的是 ', 'Java语言', 'A．都包含 main()方法', 'B．都通过“appletviewer”命令执行', 'C．都通过“javac”命令编译 ', 'D．都嵌入在 HTML 文件中执行 ', 'C');
INSERT INTO `problems` VALUES (35, '选择题', '当启动 Applet 程序时，首先调用的方法是 ', 'Java语言', 'A．stop() ', 'B．init() ', 'C．start() ', 'C．start() ', 'B');
INSERT INTO `problems` VALUES (36, '选择题', '下列关于线程优先级的说法中，正确的是 ', 'Java语言', 'A．线程的优先级是不能改变的', 'B．线程的优先级是在创建线程时设置的', 'C．在创建线程后的任何时候都可以设置', 'D．B 和 C', 'C');
INSERT INTO `problems` VALUES (37, '选择题', '当浏览器重新返回 Applet 所在页面时，将调用Applet 类的方法是', 'Java语言', 'A．start() ', 'B．init() ', 'C．stop() ', 'D．destroy()', 'A');
INSERT INTO `problems` VALUES (38, '选择题', '按照 Java 的标识符命名规范，下列表示一个类的标识符正确的是 ', 'Java语言', 'A．Helloworld', 'B．HelloWorld ', 'C．helloworld', 'D．helloWorld ', 'B');
INSERT INTO `problems` VALUES (39, '选择题', '下列代码中，将引起一个编译错误的行是 1）public class Test{ 2） int m,n; 3） public Test() {} 4） public Test(int a) {m=a;} 5） public static void main(String args[]){ 6） Test t1,t2; 7） int j,k; 8） j=0;k=0; 9） t1=new Test(); 10） t2=new Test(j,k); 11） } 12）} ', 'Java语言', 'A．第 3 行 ', 'B．第 5 行 ', 'C．第 6 行 ', 'D．第 10 行 ', 'D');
INSERT INTO `problems` VALUES (40, '选择题', '下列程序的功能是在监控台上每隔一秒钟显示一个字符串“Hello”,能够填写在程序中下划线位 置，使程序完整并能正确运行的语句是 public class Test implements Runnable{ public static void main(String args[]){ Test t=new Test(); Thread tt=new Thread(t); tt.start(); } public void run(){ for(;;){ try{ ; }catch( e){} System.put.println(\"Hello\"); } } } ', 'Java语言', 'A． sleep(1000) InterruptedException', 'B． sleep(1000) InterruptedException', 'C． Thread.sleep(1000) RuntimeException ', 'D． Thread.sleep(1000) InterruptedException ', 'D');
INSERT INTO `problems` VALUES (41, '选择题', '阅读下列代码后 public class Person{ int arr[]=new int[10]; public static void main(String args[]){ System.out.println(arr[1]); } } 正确的说法是 ', 'Java语言', 'A． 编译时将产生错误', 'B． 编译时正确，运行时将产生错误 ', 'C． 输出零 ', 'D． 输出空', 'A');

-- ----------------------------
-- Table structure for project_info
-- ----------------------------
DROP TABLE IF EXISTS `project_info`;
CREATE TABLE `project_info`  (
  `project_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `project_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目类型',
  `project_money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目金额',
  `project_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目负责人',
  `buildtimes` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `edittime` datetime(0) NULL DEFAULT NULL COMMENT '最近修改日期',
  `editby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_info
-- ----------------------------
INSERT INTO `project_info` VALUES (1, '寻乌项目', '灰色', '100万', 'admin', '2020-05-13 00:00:00', '2020-05-14 00:00:00', 'admin');

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_roles_permissions`(`rolename`, `permission`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES (13, 'admin', 'test:add');
INSERT INTO `roles_permissions` VALUES (14, 'admin', 'test:del');
INSERT INTO `roles_permissions` VALUES (15, 'admin', 'test:edit');
INSERT INTO `roles_permissions` VALUES (16, 'admin', 'test:list');
INSERT INTO `roles_permissions` VALUES (1, 'admin', 'user:add');
INSERT INTO `roles_permissions` VALUES (4, 'admin', 'user:del');
INSERT INTO `roles_permissions` VALUES (2, 'admin', 'user:edit');
INSERT INTO `roles_permissions` VALUES (3, 'admin', 'user:list');
INSERT INTO `roles_permissions` VALUES (5, 'teacher', 'test:add');
INSERT INTO `roles_permissions` VALUES (6, 'teacher', 'test:del');
INSERT INTO `roles_permissions` VALUES (7, 'teacher', 'test:edit');
INSERT INTO `roles_permissions` VALUES (8, 'teacher', 'test:list');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`, `userid`, `subject`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, 'asd', 'Java语言', '100');
INSERT INTO `score` VALUES (3, '123', 'Java语言', '100');

-- ----------------------------
-- Table structure for testusers
-- ----------------------------
DROP TABLE IF EXISTS `testusers`;
CREATE TABLE `testusers`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `face` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_users_username`(`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testusers
-- ----------------------------
INSERT INTO `testusers` VALUES (28, 'qwe', '6b60b9e2d48f8ac5ecbceb5a69cb267f', '45', '女', 'img/d.jpg', '2@qq.com', '停用', '13576957527', 'common', '2019-12-11 09:19:29', '8b2fc39d27840352c062a6d983bd8314');
INSERT INTO `testusers` VALUES (40, 'zxc', '44253bd5855c771ed8d8e9fced630125', '86', '女', 'img/d.jpg', '4@qq.com', '停用', '16756845374', 'common', '2019-12-11 09:21:39', 'e45f0a18589adfd91c9b7ca26fec9a5f');
INSERT INTO `testusers` VALUES (41, '123456', '3b805b20ff7f3c1411e535de716d3e6e', '578', '女', 'img/d.jpg', '54@qq.com', '停用', '13579657840', 'common', '2019-12-11 10:21:46', '138a541645636d489ca03decab6b1eb7');
INSERT INTO `testusers` VALUES (42, 'asd', '854a061c3c79300f256c0e92081fb329', 'orange', '男', '5420322a-9071-4e71-9a8c-15607fec1922.png', '7955@qq.com', '停用', '13579583574', 'common', '2019-12-25 18:04:10', 'c463963d3d2c23e6ae454ff88e69bf51');
INSERT INTO `testusers` VALUES (43, '123', '71c5bededf4c374c6569c1698568cc16', '哈哈', '男', 'e4a19faf-a548-45e7-96aa-92114d90294c.jpg', '5@qq.com', '停用', '13576958575', 'common', '2020-04-25 12:02:34', '7a84464e7023baf5408b5318fa1ccb5b');
INSERT INTO `testusers` VALUES (50, 'czq2', '72047d276485a315d2b1593d43686324', 'czq', '男', 'img/d.jpg', '128@qq.com', '停用', '16845785246', 'common', '2020-04-14 08:28:10', '94e887a2998207d029526e996ee31f41');
INSERT INTO `testusers` VALUES (51, 'czq3', '62f8c25adde0490f7bb1872b16e1192e', 'czq', '男', 'img/d.jpg', '128@qq.com', '停用', '16845785246', 'common', '2020-04-14 08:28:10', 'acd265158ad914b455d881d0a0cacc81');
INSERT INTO `testusers` VALUES (52, 'czq4', '0cb7c9742e1b0e2ac4cce8592979665f', 'czq', '男', 'img/d.jpg', '128@qq.com', '停用', '16845785246', 'common', '2020-04-14 08:28:10', '5d996592c10723157845f2894dc6f861');

-- ----------------------------
-- Table structure for th_product_equipment_info
-- ----------------------------
DROP TABLE IF EXISTS `th_product_equipment_info`;
CREATE TABLE `th_product_equipment_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `equipment_type_id` int(11) NULL DEFAULT NULL COMMENT '设备类型id',
  `brand` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `linkmen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `other_telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他联系方式',
  `equipment_param` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备参数',
  `bz` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `file` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `update_by` varchar(61) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司产品设备信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of th_product_equipment_info
-- ----------------------------
INSERT INTO `th_product_equipment_info` VALUES (1, 'RTU设备(含DTU、避雷模块、天线) ', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', 'WRU-2000', 6685.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (2, 'RTU设备(含DTU、避雷模块、天线) ', NULL, '唐山柳林MGTR-W4040', '唐山柳林MGTR-W4040', 5000.00, NULL, NULL, NULL, '1、RTU生产厂家要求有质量管理体系认证，环境管理体系认证，职业健康安全管理体系。\n2、RTU同时通过《水资源监测数据传输规约》V1.2(SZY206-2016)规约符合性测试\n全项通过SL651-2014《水文监测数据通讯规约》规约符合性测试\nSL/T180-2015《水文自动测报系统设备  遥测终端机》\n3、获得CE证书\n4、连续三年入选全国水利重点推荐名录 \n5、RTU采集控制器获得计算机软件著作权\n6、品牌获得无线通讯设备管理嵌入式软件\n7、本项目需要提供成产厂家的授权及售后服务承诺函\n8、参数要求：\n①　高集成度：CPU 、WIFI、蓝牙、定位、4G通讯于一体\n②　采用linux操作系统，嵌入式数据库，处理器不低于ARM9。\n③　支持HTTP、HTTPS（GET POST）*方式将采集的各类仪表数据提交至指定服务器数据库，无需软件平台解码，避免一切对接障碍。\n④　支持MQTT即时通讯协议。\n⑤　支持采集标准USB口协议和RS485总线的图像采集设备。\n⑥　支持水资源和水文应用协议。\n⑦　既可以DC12V_24V供电，也可以采取AC220V供电，电源为全隔离电源。\n⑧　4路485通讯口\n⑨　2路继电器输出\n⑩　8路开关量输出（光电隔离）\n⑪　8路开关量输入（光电隔离，高速脉冲计量）\n⑫　7路4~20mA输入\n⑬　1路0~15V输入，便于监测现场蓄电池电压\n⑭　1路4~20mA 模拟量输出\n⑮　1路100M 网络口\n⑯　1路USB接口\n⑰　嵌入GPS定位模块，蓝牙模块，WIFI模块\n⑱　内部存储：8GB EMMC+8GB LPDDR3 \n⑲　拓展存储卡功能：实测支持32GB容量SD卡扩展，可保存图像采集历史数据与数据库数据。\n⑳　Wifi功能：支持智能手机通过Wifi热点连接设备，并推送实时监测界面和巡检签到界面。\n21　支持LORA扩频传输功能，可以和仪表设备进行短距离无线通讯。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (3, '智能型星光球摄像机', NULL, '海康威视DS-2DF8225INC-AD', 'AXIS Q6155-E', 5300.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (4, '硬盘录像机', NULL, '海康威视DS-7708N-E4/GLE', 'AXISN8-Z MK2', 1680.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (5, '监控级硬盘', NULL, '海康', '希捷ST4000VX000-520', 800.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (6, '4G通讯费（1年）', NULL, '移动通讯', '#', 1200.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (7, '市电供电系统', NULL, '泰豪定制', '#', 10000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (8, '立杆、机箱', NULL, '康达', '凯雷', 3800.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (9, '监控基座', NULL, '康达', '#', 2000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (10, '电源避雷', NULL, '普天湘宜防雷DXH10-F/3', '普天湘宜防雷DXH10-FA/2W30', 150.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (11, '信号避雷', NULL, '普天湘宜防雷QFL10-CH4/24L', '普天湘宜防雷QFL10-CH4/24L', 150.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (12, '避雷接地', NULL, '康达', '#', 200.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (13, '安装辅材', NULL, '康达', '#', 500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (14, '200W红外球机', NULL, '大华', 'DH-SD-6C3223UE-HN', 1850.00, NULL, NULL, NULL, '23倍光学变倍，16倍数字变倍，支持H.265编码，实现超低码流传输，信噪比达到55dB，实现宽动态范围监控，室外球达到IP66防护等级，6000V防雷、防浪涌和防突波保护', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (15, '接入交换机', NULL, '大华', 'DH-IS3100-2GT1GF-DC', 390.00, NULL, NULL, NULL, '非网管二层千兆安防工业交换机，2*100/1000Mbps RJ45，1*1000Mbps SFP，工作宽温：-30至+75°，DC12-36V供电（双冗余），IP40，导轨&壁装', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (16, '核心交换机', NULL, '大华', 'DH-S5500-24GF4XF', 4500.00, NULL, NULL, NULL, 'L3企业级路由交换机，24*100/1000Base-X SFP光口，8*10/100/1000 Base-T RJ45电口(Combo)4*1000/10000Base-X SFP+光口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (17, '企业级硬盘', NULL, '希捷', 'ST4000VM000', 780.00, NULL, NULL, NULL, '4000G；5900RPM；64M；SATA ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (18, 'NVR', NULL, '大华', 'DH-NVR608-32-4KS2', 2780.00, NULL, NULL, NULL, '工业级嵌入式微控制器；嵌入式Linux实时操作系统；网络协议IPv4、IPv6、HTTP、UPnP、NTP、SNMP、PPPoE、DNS、FTP、ONVIF；网络视频接入32路；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (19, '固定杆', NULL, '#', '#', 2000.00, NULL, NULL, NULL, '3米', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (20, '信号避雷器', NULL, '#', '#', 290.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (21, '箱体、设备配件', NULL, '#', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (22, '端子、空开等辅料', NULL, '#', '#', 1500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (23, '防雷接地装置', NULL, '#', '#', 650.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (24, '基础制作 包含水泥沙子等', NULL, '#', '#', 1730.00, NULL, NULL, NULL, '1200*1200*1200mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (25, '摄像头', NULL, '#', '200W红外球机', 3900.00, NULL, NULL, NULL, '200W红外球通讯方式：485总线通讯；\n工作电压：5V-12V；\n工作电流：不大于120mA；\n图像有效像素：不小于200万；\n图像格式：JPEG格式；\n分辨率：640*480，800*600，1024*768，1280*800可选；\n环境：工作温度：-10℃～50℃，储存温度：-40℃～60℃，工作湿度：不大于95%RH(40℃凝露)；\n符合《水文仪器基本参数及通用技术条件》（GBT 15966-2007）中的相关要求；\n夜视距离不小于50m（以可识别水位标尺为准）；\n防护等级达到IP66。\n支持IP地址获取、IP地址搜索功能。           \n支持RS485通信口实现图像抓拍功能，并保存至SD卡内。机', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (26, '太阳能板', NULL, '#', '#', 500.00, NULL, NULL, NULL, '单晶硅，100Wp', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (27, '蓄电池', NULL, '#', '#', 300.00, NULL, NULL, NULL, '12V，100Ah,免维护铅酸电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (28, '太阳能充电控制器', NULL, '#', '#', 260.00, NULL, NULL, NULL, '输出直流10-48V ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (29, '通讯流量卡', NULL, '#', '#', 600.00, NULL, NULL, NULL, 'SIM卡等含1年通讯费用', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (30, '监控球机', NULL, '大华', 'DH-SD-6C32A3U-HN-DG', 3340.00, NULL, NULL, NULL, '23倍光学变倍，16倍数字变倍 \n支持H.265编码，实现超低码流传输 \n信噪比达到55dB \n支持隐私遮挡，最多24块区域,同时最多有8块区域在同一个画面 \n宽动态效果，加上图像降噪功能，完美的白天/夜晚图像展现 \n内置150米红外灯补光，采用倍率与红外灯功率匹配算法，补光效果更均匀 \n支持4G无线传输，可以适应各种安装环境 \n支持DC12V±10%输入 \n室外球达到IP66防护等级，6000V防雷、防浪涌和防突波保护 \n支持软件集成的开放式API，支持标准协议(Onvif、CGI、GB/T28181)、支持第三方管理平台接入 \n支持三码流技术 \n支持绊线入侵、区域入侵、穿越围栏、徘徊检测、物品遗留、物品搬移、快速移动等多种行为检测；支持多种触发规则联动动作；支持目标过滤 \n支持人脸检测 \n支持人数统计；支持热度图 \n水平方向360°连续旋转，垂直方向-15°～90°自动翻转180°后连续监视,无监视盲区 \n水平键控速度0.1°～160°/s ，垂直键控速度0.1°～120°/s，云台定位可精确到0.1° \n支持300个预置位 \n可以按照所设置的预置位完成8条巡航路径 \n可设置5条巡迹路径，每条路径的记录时间大于15分钟', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (31, '监控枪机', NULL, '大华', 'DH-IPC-HFW52A8M-I1', 620.00, NULL, NULL, NULL, '1、具有200W像素 CMOS传感器。  \n2、最大分辨率1920x1080。  \n3、在1920x1080 @25fps下，码率设定为1Mbps，RJ45输出，清晰度不小于1100TVL。\n4、最低照度彩色：0.002 lx，黑白：0.0002 lx。  \n5、支持H.265、H.264、MJPEG视频编码格式，其中H.264支持Baseline/Main/High Profile。\n6、支持三码流技术，主码流最高1920x1080@25fps，第三码流最大1920x1080 @25fps，子码流704x576@25fps。   \n7、图像传输延时≤85ms。  \n8、信噪比不小于58dB。   \n9、需具不小于105dB宽动态且宽动态能力综合评价得分应不小于107分。 \n10、设备与客户端之间用100米网线进行传输，数据包丢包率不大于0.3%。 \n11、支持在10%丢包率的网络环境下，可正常显示监视画面。 \n12、红外补光距离不小于80米。 \n13、支持最多同时开启20个视频窗口进行画面浏览。   \n14、在IE浏览器下，具有亮度，对比度，饱和度，锐度，gamma设置选项 \n15、支持10行字符叠加，字体对齐方式和叠加位置可设，具有图片叠加到视频画面功能。\n16、支持区域遮盖功能，并能支持8块区域。  \n17、摄像机在非法访问、网络断开、IP冲突时可给出报警提示。\n18、具有黑白名单功能，黑白名单最多可添加48个IP地址，支持MAC地址过滤功能。 \n19、具备区域入侵，绊线入侵，物品遗留，物品搬移，场景变更，人脸检测，人员聚集，徘徊检测，快速移动，停车检测等智能行为分析功能。    \n20、具有走廊模式，宽动态，3D降噪，强光抑制，背光补偿，数字水印、ROI区域增强，SVC自适应编码等功能。\n\n21、摄像机能够在-40~70摄氏度，湿度小于93%环境下稳定工作。 \n22、支持IP67防护等级。 \n23、具有1个RJ-45网络接口。  \n24、支持电源电压在DC12V±30%范围内变化时设备可以正常工作。\n25、设备工作状态时，支持空气放电8kV，接触放电6kV，电源输入端和网络接口端均支持6kV峰值电压。\n26、★支持帧率动态控制功能，当触发报警时，视频录像帧率应自动调整至设定值。支持区域裁剪功能，裁剪后的视频图像分辨率可设置为704x480等8种分辨率。（提供公安部有效检测报告复印件加盖厂商公章佐证） \n27、★支持场景参数设置，可设置4套场景参数，不同场景参数可按时间自动切换。支持自动维护功能，摄像机可自动重启系统或删除旧文件。支持NAT穿越功能，在广域网环境下，支持主动发包动作以实现NAT穿越。（提供公安部有效检测报告复印件加盖厂商公章佐证）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (32, '监控球机（含4G模块）', NULL, '大华', 'DH-SD-6C32A3U-HN-DG', 4590.00, NULL, NULL, NULL, '23倍光学变倍，16倍数字变倍 \n支持H.265编码，实现超低码流传输 \n信噪比达到55dB \n支持隐私遮挡，最多24块区域,同时最多有8块区域在同一个画面 \n宽动态效果，加上图像降噪功能，完美的白天/夜晚图像展现 \n内置150米红外灯补光，采用倍率与红外灯功率匹配算法，补光效果更均匀 \n支持4G无线传输，可以适应各种安装环境 \n支持DC12V±10%输入 \n室外球达到IP66防护等级，6000V防雷、防浪涌和防突波保护 \n支持软件集成的开放式API，支持标准协议(Onvif、CGI、GB/T28181)、支持第三方管理平台接入 \n支持三码流技术 \n支持绊线入侵、区域入侵、穿越围栏、徘徊检测、物品遗留、物品搬移、快速移动等多种行为检测；支持多种触发规则联动动作；支持目标过滤 \n支持人脸检测 \n支持人数统计；支持热度图 \n水平方向360°连续旋转，垂直方向-15°～90°自动翻转180°后连续监视,无监视盲区 \n水平键控速度0.1°～160°/s ，垂直键控速度0.1°～120°/s，云台定位可精确到0.1° \n支持300个预置位 \n可以按照所设置的预置位完成8条巡航路径 \n可设置5条巡迹路径，每条路径的记录时间大于15分钟', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (33, '监控枪机（含4G模块）', NULL, '大华', 'DH-IPC-HFW72A5M-W4G-AS-I2', 1600.00, NULL, NULL, NULL, '23倍光学变倍，16倍数字变倍 \n支持H.265编码，实现超低码流传输 \n信噪比达到55dB \n支持隐私遮挡，最多24块区域,同时最多有8块区域在同一个画面 \n宽动态效果，加上图像降噪功能，完美的白天/夜晚图像展现 \n内置150米红外灯补光，采用倍率与红外灯功率匹配算法，补光效果更均匀 \n支持4G无线传输，可以适应各种安装环境 \n支持DC12V±10%输入 \n室外球达到IP66防护等级，6000V防雷、防浪涌和防突波保护 \n支持软件集成的开放式API，支持标准协议(Onvif、CGI、GB/T28181)、支持第三方管理平台接入 \n支持三码流技术 \n支持绊线入侵、区域入侵、穿越围栏、徘徊检测、物品遗留、物品搬移、快速移动等多种行为检测；支持多种触发规则联动动作；支持目标过滤 \n支持人脸检测 \n支持人数统计；支持热度图 \n水平方向360°连续旋转，垂直方向-15°～90°自动翻转180°后连续监视,无监视盲区 \n水平键控速度0.1°～160°/s ，垂直键控速度0.1°～120°/s，云台定位可精确到0.1° \n支持300个预置位 \n可以按照所设置的预置位完成8条巡航路径 \n可设置5条巡迹路径，每条路径的记录时间大于15分钟', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (34, '二合一防雷器', NULL, '定制', '定制', 750.00, NULL, NULL, NULL, '采用高性能两百万像素1/2.9英寸CMOS图像传感器，低照度效果好，图像清晰度高\n可输出200万(1920×1080)@25fps\n支持H.265编码，压缩比高，超低码流\n最大红外监控距离80米\n支持走廊模式，宽动态，3D降噪，强光抑制，背光补偿，数字水印，适用不同监控环境\n支持ROI，SVC，SMART H.264/H.265，灵活编码，适用不同带宽和存储环境\n支持报警2进2出，音频1进1出)，128G SD卡\n支持DC12V供电方式，方便工程安装\n支持IP67，防护等级\n支持轻存储，根据场景调整码流值，同样存储空间存储更长时间录像\n支持wifi （默认Soft AP）\n支持全网通4G模块（电信、移动、联通）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (35, '立杆', NULL, '定制', '#', 2300.00, NULL, NULL, NULL, '4米监控立杆', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (36, '地笼及接地', NULL, '定制', '#', 600.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (37, '室外箱', NULL, '定制', '#', 300.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (38, '立杆基础', NULL, '定制', '#', 300.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (39, '电源线（RVV3*1.5）', NULL, '贝斯通', 'RVV3*1.5mm²', 3.68, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (40, '网线', NULL, '#', '#', 500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (41, '架空线路', NULL, '#', '#', 28.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (42, '太阳能供电设备', NULL, '定制', '20W', 4000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (43, '水雨情监测站（含太阳能供电设备）', NULL, '南水、捷尔', 'JDZ05-1、JERD813', 30000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (44, 'SD6A9中文大华200W网络机芯高速红外智能球', NULL, '大华', 'DH-SD-6A9230UA-HNI', 3900.00, NULL, NULL, NULL, '1/1.9英寸 CMOS；水平解析度≥1000TVL；信噪比≥55dB；焦距6mm～180mm；光学变倍30倍；补光方式红外；补光距离≥220m；垂直范围 -20°～90° 自动翻转180°后连续监视；H.265/H.264BaselineProfile/H.264MainProfile/H.264HighProfile/M-JPEG；人脸智能检测；网络接口；报警输入7 路开关量输入(0～5V DC)；报警输出2 路，支持报警联动；RS485控制接口；音频输入；音频输出；电源AC24V/3A±25%（含红外控制电路）；功耗24W/36W(红外灯开启）；温度-45～70℃； 湿度＜95% ；IP67，TVS 8000V防雷、防浪涌和防突波保护，符合GB/T 17626.5 4级标准；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (45, 'DH-PFB303W-球机壁装支架-DH816W2-中文大华', NULL, '大华', 'DH-PFB303W', 35.00, NULL, NULL, NULL, '壁装；铝合金', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (46, '工业级千兆SFP光模块GSFP-1310-20-SMF 单模双纤 20km 1310nm发送 1310nm接收 LC接口', NULL, '大华', 'GSFP-1310-20-SMF', 222.00, NULL, NULL, NULL, '单模 双纤双向,1.25G, 1310nm,20km, -40~85度,3.3V,LC 接口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (47, '非管理安防工业交换机-DH-IS3100-2GT1GF-DC-2个10/100/1000Base-T以太网端口，1个1000Base-X SFP端口', NULL, '大华', 'DH-IS3100-2GT1GF-DC', 390.00, NULL, NULL, NULL, '非网管二层千兆安防工业交换机，2*100/1000Mbps RJ45，1*1000Mbps SFP，工作宽温：-30至+75°，DC12-36V供电（双冗余），IP40，导轨&壁装', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (48, '国内大华网络硬盘录像机DH-NVR608-32-4KS2（主板V1.00）', NULL, '大华', 'DH-NVR608-32-4KS2', 2775.00, NULL, NULL, NULL, '工业级嵌入式微控制器；嵌入式Linux实时操作系统；网络协议IPv4、IPv6、HTTP、UPnP、NTP、SNMP、PPPoE、DNS、FTP、ONVIF；前智能支持；后智能支持；网络带宽接入384Mbps,储存384Mbps,转发384Mbps；网络视频接入32路；IPC分辨率12M/4K/5M/3M/1080P/UXGA/1.3M/720P，支持1080P@60帧；解码能力2×12M/4×4K/6×5M/8×4M/11×3M/16×1080P/32×720P；1路VGA输出，2路HDMI输出，支持VGA和HDMI 1同源输出，双HDMI 异源输出；最大支持16路回放；视频压缩标准H.265/H.264/MPEG4/MJPEG；8 个SATA接口，单盘容量支持8TB，支持Raid0、Raid1、Raid5、Raid6、Raid10、JBOD等多种数据模式；2个RJ45 10/100/1000Mbps自适应以太网口；2个前置USB2.0接口/2个后置USB3.0接口；1路，支持IPC复合音频输入/1路，支持语音对讲输出；报警接口16进8出；1个RS-232/1个RS-485；1个外置eSATA接口；1个电源接口，AC100～240V 50+2% Hz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (49, '硬盘-ST4000VM000-4000G-64M缓存-3.5英寸-SATA3.0接口', NULL, '希捷', 'ST4000VM000', 780.00, NULL, NULL, NULL, '4000G；5900RPM；64M；SATA ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (50, 'L3万兆以太网交换机-DH-S5500-24GF4XF-24个100/1000BASE-X SFP端口，其中8个10/100/1000BASE-T Combo 口；4个10G BASE-X SFP+端', NULL, '大华', 'DH-S5500-24GF4XF', 4500.00, NULL, NULL, NULL, 'L3企业级路由交换机，24*100/1000Base-X SFP光口，8*10/100/1000 Base-T RJ45电口(Combo)4*1000/10000Base-X SFP+光口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (51, '1080P红外球机', NULL, '海康威视', 'DS-2DE7220IH-CA', 3550.00, NULL, NULL, NULL, '200万6寸红外4G；1920×1080@30fps；彩色：0.05Lux @ (F1.6，AGC ON)；黑白：0.01Lux @(F1.6，AGC ON) ；0 Lux with IR；200米红外照射距离；焦距：4.7-94mm, 20倍光学；4G（移动、联通，电信）；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (52, '开关电源', NULL, '国产', 'DC12V5A', 75.00, NULL, NULL, NULL, 'DC12V5A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (53, '4米监控立杆及接地', NULL, '国产', '4米', 2300.00, NULL, NULL, NULL, '4米', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (54, '防水箱', NULL, '国产', '400*400*200', 280.00, NULL, NULL, NULL, '400*300*200', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (55, '防雷器', NULL, 'towe', 'TPS-D10-230V', 200.00, NULL, NULL, NULL, '二合一防雷', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (56, '空气开关', NULL, '国产', '2P 10A', 25.00, NULL, NULL, NULL, '2P 10A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (57, '管理平台', NULL, '海康威视', '#', 125.00, NULL, NULL, NULL, '智慧管理平台，统一管理，集视频、停车场/门禁一卡通，报警，巡更等安防系统于一个平台，搭载一台服务器：E5-2630 V4(10核2.2GHz)×1/16GB DDR4×2/1TB SATA×2/SAS_HBA/DVD/1GbE×4/冗电/导轨/2U/Windows Server 2008 R2简体中文标准版激活码  1、电源：高效能550W铂金1+1 冗余电源；2、电源电压 200-240V/50Hz；3、机箱尺寸：87.8mm(高)×448mm(宽)×794.4mm(深)； 4、重量 最大35 千克（不含导轨）；5、详细规格请见规格书；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (58, 'CVR网络硬盘录像机', NULL, '海康威视', 'DS-A80624S', 30000.00, NULL, NULL, NULL, '集编码设备管理、录像管理、存储、转发功能为一体', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (59, '企业级硬盘', NULL, '希捷', 'ST4000NM0035', 1100.00, NULL, NULL, NULL, '4TB 7200转128M SATA3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (60, '解码器', NULL, '海康威视', 'DS-6912UD', 15272.00, NULL, NULL, NULL, '高清视音频解码器，采用Linux操作系统，运行稳定可靠\n输出接口：支持12路HDMI和6路BNC输出，HDMI（可以转DVI-D）（奇数口）输出分辨率最高支持4K（3840*2160@30HZ）\n解码能力：支持12路1200W，或24路800W，或36路500W，或60路300W，或96路1080P及以下分辨率同时实时解码；\n画面分割：支持1/4/6/8/9/12/16/25/36画面分割\n网络接口：2个RJ45 10M/100M/1000Mbps自适应管理网口\n2个RJ45 10M/100M/1000Mbps自适应以太网接口\n16个RJ45 10M/100M自适应以太网接口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (61, '机柜', NULL, '#', '#', 3000.00, NULL, NULL, NULL, '宽*深*高=600*1100*2000', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (62, '核心交换机', NULL, '华为', 'S5720-32X-EI-24S-AC', 6400.00, NULL, NULL, NULL, '24个千兆SFP，4个10/100/1000Base-T以太网端口，4个万兆SFP+，2个QSFP+堆叠口交流或直流供电，电源前置，支持RPS冗余电源交换容量：598Gbps/5.98Tbps包转发率：222Mpps外形尺寸mm（宽×深×高） 442×220×43.6典型功耗55.5W MAC地址表 遵循IEEE 802.1d标准支持64K MAC地址容量支持MAC地址自动学习和老化支持静态、动态、黑洞MAC表项支持源MAC地址过滤VLAN特性 支持4K个VLAN支持Guest VLAN、Voice VLAN', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (63, '单模光模块', NULL, '华为', 'S1720-10GW-PWR-2P', 300.00, NULL, NULL, NULL, '光模块-eSFP-GE-单模模块', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (64, '接入交换机', NULL, '华为', 'SFP-GE-LX-SM1310', 1100.00, NULL, NULL, NULL, '8个10/100/1000Base-T以太网端口，2个千兆SFP支持PoE+交流供电包转发率：15Mpps交换容量：168Gbps外形尺寸mm（宽×深×高）320×220×43.6输入电压100V-240V AC，50~60Hz功耗不带PoE :14.63W; 带PoE：159.2W(PoE:123.2W)工作温度0℃～45℃工作湿度5%~95%散热方式无风扇，自然散热MAC地址表16K MAC', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (65, 'SD卡', NULL, '闪迪', 'A1', 600.00, NULL, NULL, NULL, '256G', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (66, 'SIM卡', NULL, '联通', '#', 199.00, NULL, NULL, NULL, '一个月40G，超出部分限速，数量是19张卡12个月3年计算', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (67, '线缆', NULL, '#', '#', 50.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (68, 'TVF012', NULL, '利亚德', '#', 94000.00, NULL, NULL, NULL, '全彩P1.2mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (69, 'LED立柜式结构', NULL, '利亚德', '#', 1500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (70, '系统线缆', NULL, '利亚德', '#', 24000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (71, '显示管理软件V1.0', NULL, '利亚德', '#', 12000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (72, '多屏处理器', NULL, '利亚德', '#', 124500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (73, '发送卡', NULL, '利亚德', '#', 3000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (74, '控制电脑', NULL, '联想', '#', 7000.00, NULL, NULL, NULL, 'Ｉ7 9700K/RTX2070/RTX2070SUPER/16G', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (75, '交换机', NULL, '华三', '#', 1800.00, NULL, NULL, NULL, '12口千兆', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (76, '宽频阵列音柱扬声器', NULL, 'VOKON', '#', 2050.00, NULL, NULL, NULL, '1.额定功率:320W,音乐功率:640W,最大功率:1280W；\n2额定阻抗:4Ω；\n3.频率响应(-10dB):65-19KHZ；\n4.单元特征:全频带,单元规格:4\"*8；\n5.产品尺寸:139*951*172mm；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (77, '专业数字功放', NULL, 'VOKON', '#', 1950.00, NULL, NULL, NULL, '1.立体声（8Ω）STEREO POWER 8Ω：300Wx2；\n2.立体声（4Ω）STEREO POWER  4Ω：480Wx2；\n3.立体声（2Ω）STEREO POWER  2Ω：600Wx2；\n4.桥接（8Ω）BRIDGE POWER 8Ω：1000W；\n5.桥接（4Ω）BRIDGE POWER  4Ω：1400W；\n6.频率响应FREQUENCY RESPONSE：20Hz-20KHz/-0.5dB；\n7.失真度THD+N：<0.05%@4 Ω 1KHz；\n8.信噪比S/N RATE：≥105dB；\n9.分离度SLEW RATE：60V/us；\n10.阻尼系数DAMPING FACTOR：≥800@8 Ω；\n11.转换速率CROSSTALK：≥80dB@8 Ω 1KHz；\n12.输入阻抗INPUT  IMPEDANCE：20KHz(BALANCE)/10KΩ (UNBALANCE)；\n13.输入灵敏度INPUT SENSITIVITY：0.775V\\1.0V\\1.4V；\n14.保护PROTECT：DC,SHORT,CIRCUIT,OVER HEAT,SOFTSTART；\n15.机箱高度HEIGHT：2U；\n16.包装尺寸PACKING DIMENSIONS：89*483*472mm；\n17.重量GROSS WEIGHT：15Kg；　　　　　　　　　　\n18.功耗:960W', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (78, '网络控制主机', NULL, 'VOKON', '#', 8100.00, NULL, NULL, NULL, '1.同时支持IPAD平板电脑、安卓平板电脑、射频触摸屏、windows电脑控制(笔记本、台式机、一体机等)，一个设计器支持所有平台，并且IPAD平板、安卓平板、射频触屏及windows电脑的控制界面完全相同，方便用户使用。多种方式，可同时使用，互为备份，让项目更健壮。\n2.主机前面板带蓝光液晶显示屏，显示工作状态；\n3.主机前面板带10个可自定义功能的按键；可作为应急操作选项；\n4.内置万年历电路，可让中控在指定时间自动执行控制操作；\n5.非串口分配器式中控，串口等所有控制代码保存在主机上，主机可执行逻辑控制，触摸屏仅保存一个控制ID号，减少网络通讯，提高响应速度和稳定性；\n6.主机带有网口，不需配置接收器（转换器），以提高稳定性。\n7.非网页式，各个平台（IPAD、安卓、windows）都有功能一致的专用操控软件(app)，更显专业，易用，稳定。\n8.IPAD控制软件，通过美国苹果公司官方严格审核，可直接在app store上安装，确保稳定兼容，不需越狱，不需破解。\n9.采用字体自动识别技术，在Windows电脑上设计界面时使用的任何字体，都能在IPAD平板、安卓平板上正确显示（不需制作图片）。\n10.编程设计平台可自动生成各种3D按钮（不需设计图片）；也支持图片按钮，支持PNG、WMF、ICO、GIF图片的透明效果，可实现任意形状的按钮，各种效果的界面。\n11.设计平台采用先进的软件技术，不需使用任何电脑语言进行编程，不需使用各种复杂的逻辑模块与宏，以方便施工、后期维护及升级。\n12.程序设计师勿需亲自到现场，可直接通过以太网络，利用Internet互联网传输来更改程序的内容。\n13.专为高要求级场合设计，非电教中控改装，主机配有32个串口，16个RS232串口、16个RS485\\422、8个红外口、8-Relays 继电器口等控制口，大量的专业接口，不需接分配器扩展。不集成小矩阵等信号切换系统，增强控制接口，以降低整个系统崩溃的风险。\n14.主机内置红外学习器，可把红外数据保存到电脑成为红外库文件，供后续工程或后续维护升级使用。\n15.控制通讯：以太网(TCP/IP)，10/100M自适应，TCP SERVER方式，也可定制为UDP方式，也可连接射频接收器。\n16.处理器：32位ARM处理器。\n17.指令存储器：FLASH，大容量FLASH存储器，可保存高达3000条控制指令，满足任何场合的控制存储要求，支持扩展。\n18.前面板带各种控制功能LED灯显示，来指示设备运作状态。\n19.外观：黑色金属外壳。\n20.控制通讯：以太网(TCP/IP)，10/100M自适应，TCP SERVER方式，也可定制为UDP方式。\n21.电源 100VAC~240VAC,50/60Hz,国际自适应电源\n22.最大功率:15W\n23.储存、使用温度 :-20° ~+70°C\n24.储存、使用湿度: 10% ~ 90%\n25.尺寸: 484mm（长）x 250mm（深） x 88mm（高）\n26.安装: 标准机柜，2U高度\n27.重量：3.8kg\n28.平均故障间隔时间MTBF:38000小时\n29.电源输出:提供5V/24V电源输出', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (79, '全数字会议主机【5G WiFi、有线网】', NULL, 'VOKON', '#', 8657.00, NULL, NULL, NULL, '无线单元最大支持8个话筒同时开启，自适应躲避干扰技术，实现更强抗干扰能力，基于符合IEEE 802.11n的标准WiFi,同时支持2.4GHZ，5GHZ。\n◆同时支持有线会议和无线会议\n◆独创的AUDIO-LINKTM数字环状网络技术，实现全数字信号传输与处理，★可选配DANTE协议音频输出模块\n★一根CAT5e网线传输64路音频及各类信息\n◆高保真音质，无损音频传输技术，48K音频采样频率，20Hz~20KHz响应频率。\n★支持单台会议主机实现4个会议室独立控制与合并会议室,支持多台会议主机级联，实现更大会议室合并与分离（包括会议管理等），双机热备份功能。\n★支持USB接口插U盘录音，主机监听，先进噪声消除技术，实现更清晰录音\n★支持单元麦克风灵敏度和16段均衡器QE独立调节。\n◆支持主机输出16段均衡EQ,实现声音声场调节；压限,可识别人声通过的噪声门;AGC自动音量增益控制;AFC自动反馈抑制器;支持自动混音（auto-mix）技术。\n★支持声音分区输出功能，各个分区音量根据话筒开启位置自动调节,实现更远拾音距离而不啸叫。\n★支持回声消除，实现与另一台会议主机或者第三方视频会议终端远程双向实时通话。\n◆手拉手环路网络连接，系统更可靠，系统更可靠,替换和一个单元或线出现故障,不会影响系统其他单元正常工作。\n◆连接扩展主机，可以扩展会议单元到5200台。\n◆支持手拉手环路网络连接，并且系统自动分配给每个单元独立ID，避免ID重复冲突\n◆主机同时支持有线单元,无线单元，有线和无线单元外观一致，方便增加会议席位与使用\n◆支持2路音频输入，支持卡侬头，莲花头，用本地音频输入和原端视频会议输入\n◆2路音频输入,用于本地广播输入或远程视频会议输入。\n◆最大支持音频输出8路，可以接同传输出或者分区输出，支持卡侬头，莲花头，凤凰头。\n◆加入音频输入盒,系统可接入其它电容麦克风或动圈麦克风，为用户提供更多选择。\n◆内置多路的内部通讯功能\n◆支持电脑与主机TCP/IP连接。\n◆支持RS232中控控制，实现话筒开关，优先权，音量大小等控制。\n◆系统同时提供RS485或RS232发送PELCO,VISCA协议，实现摄像跟踪功能\n◆系统单元热插拔功能，自动恢复功能\n◆支持宽电源110V~220VAC。\n◆在脱离电脑的使用时，会议系统也能够实现：\n-   发言人数限制功能：可以设置同时开启的代表发言单元（数量为1/2/4/6台）\n-   具有以下发言模式：\n\"\"OPEN\"\"开放模式，★\"\"VOICE\"\"声控模式，\"\"FIFO\"\"先进先出模式，\"\"PTT\"\"按住发言， \"\"APPLY\"\"申请模式，\"\"ALL\"\"全开模式\n-   按键表决功能:赞成/弃权/反对\n-   主席单元优先权支持关闭所有和临时静音2种模式。\n-   主席单元具有批准申请发言按钮\n-   同声传译功能\n◆配合电脑软件可以实现更多方式的投票表决例如：\n-   同意/反对方式\n-   表决方式：赞成/弃权/反对\n-   选举方式：1/2/3/4/5\n-   响应方式：--/-/0/+/++\n◆配合RFID卡身份认证功能，进行投票，能够做到准确的一人一票。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (80, '主席单元【全数字阵列话筒】', NULL, 'VOKON', '#', 2693.25, NULL, NULL, NULL, '独特的现代设计带触摸按钮\n采用自主开发的ARRA-TechTM阵列麦克风技术，拾音距离不低于80CM\n主席单元带优先权，可关闭所有代表话筒\n采用标准CAT5e作为连接线, RJ45连接头,方便标准化工程布线安装和后期维护,附带安装线夹使系统更牢固,稳定。\n◆只出一条1.5米连接线连接数字会议分路器，保持桌面整洁\n◆独创的AUDIO-LINKTM数字环状网络技术，实现全数字信号传输与处理,抗来自手机等类似设备的RF干扰。\n★手拉手环路网络连接，系统更可靠。\n★支持即插即用功能，自带DSP啸叫抑制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (81, '代表单元【全数字阵列话筒】', NULL, 'VOKON', '#', 2501.10, NULL, NULL, NULL, '独特的现代设计带触摸按钮\n采用自主开发的ARRA-TechTM阵列麦克风技术，拾音距离不低于80CM\n主席单元带优先权，申请应答按钮\n采用标准CAT5e作为连接线, RJ45连接头,方便标准化工程布线安装和后期维护,附带安装线夹使系统更牢固,稳定。\n只出一条1.5米连接线连接数字会议分路器，保持桌面整洁\n独创的AUDIO-LINKTM数字环状网络技术，实现全数字信号传输与处理,抗来自手机等类似设备的RF干扰。\n手拉手环路网络连接，系统更可靠。\n支持即插即用功能，自带DSP啸叫抑制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (82, '单元分路器', NULL, 'VOKON', '#', 427.50, NULL, NULL, NULL, '可以支持星型拓扑连接，使麦克风单元只要一根线连接系统\n可提供更多麦克风通道，实现分路器级连，每个分路器一分2支路功能', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (83, '摄像机【高清60帧20倍变倍】', NULL, 'VOKON', '#', 6108.00, NULL, NULL, NULL, '20倍光学变倍，10倍数字变焦，水平视角55.4°；\n分辨率：1080P60，1/3英寸325万像素HDCMOS；\nHDMI接口、广播级3G HD-SDI接口，网络接口，RS-232C远程控制（VISCA协议/Pelco-D/Pelco-P）255个位置预设位；\n多功能遥控器；\n可倒装；\n支持中英文菜单。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (84, '24通道4遍组数字调音台', NULL, 'VOKON', '#', 5000.00, NULL, NULL, NULL, '1.24路通道输入；\n2.20路高品质高灵敏度话筒输入，2路立体声输入，真正的4编组调音台；\n3.每路单独的+48V幻象供电开关选择；\n4.3段英式均衡器中频带选频；\n5.6组AUX辅助输出其中4组AUX可选择推子前或推子后；\n6.18dB/倍频程陡峭的高通滤波器，插入点可加插在总输出或分组输出通道；\n7.100mm行程的推子（衰减器）；\n8.录音级别的DSP数字效果器参数可以细调；\n9.6组12段LED电平显示器；\n10.PSU内置电源；\n11.MP3播放器并带录音功能；\n12.超低噪声的前级混合放大器设计；\n13.100种选择录音级的数字效果器，参数可细调可储存；\n14.74dB前置放大器可接受高至 +34dBu 的话筒或线路输入电平\n15.最大输入电平：Mic +34dBu(inc pad); CH Line +34dBu; Other Line +20dBu\n16.内部电平上限：Channels +20dB; Mix +22dB\n17.电平表：3 colour LED, quasi peak response\n18.灵敏度：0VU=+4dBu at XLR output\n19.总音量控制电平表：12 segment -30dB-(+16dB)\n20.频率响应：20Hz-50kHz +/-0.5dB\n21.Mic CMRR(1kHz)： >80dB typical\n22.THD+N(+14dBu 1kHz)： Channel to mix out <0.003%\n23.串声(1kHz)： Fader shutoff >90dB; Mute shutoff >90dB; Inter channel >90Db\n24.噪声(有效值22Hz-22kHz)：Mic EIN -128dB; Residual output noise <-96dBu(-100dB S/N)\nLR mix  noise 16 routed <-86dBu(-90dB S/N)\nGroup mix noise 16 routed <-86dBu (-90dB S/N)\nAux mix noise 16 routed <-92dBu(-90dB S/N)\nMix noise 16 line 0dB gain <-86dB S/N\n25.通道HPF：12dB/octave below 100Hz\n26.单声道 EQ：HF Shelving ±15dB，12kHz。HM Peak/dip ±15dB，240Hz-3kHz，Q=1.8。LM Peak/dip ±15dB，35Hz-1kHz，Q=1.8。LF Shelving ±15dB，80Hz\n27.立体声 EQ：HF Shelving ±15dB，12kHz。HM Peak/dip ±15dB，2.5kHz，Q=1.8。LM Peak/dip±15dB，250Hz，Q=1.8。LF Shelving ±15dB，80Hz\n28.尺寸：长78cm，宽：55cm，上高：13cm，下高：7cm；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (85, '智能电源时序器', NULL, 'VOKON', '#', 575.00, NULL, NULL, NULL, '1.最大输入电流：60A；\n2.单路最大输出电流：30A；\n3.工作电压    ：220V-240V/50-60Hz ；\n4.每一路功率  ：可达4500W；   \n5.输入与输出电：AC输入电压=AC输出电压；   \n6.输出电源插座：万用插座符合欧美标准。后面板8个受控万用插，前面2个万用插座；\n7.插座材质 ：每个插座材质磷铜，均通过检验才安装；   \n8.每一路开关间隔时间：1秒 ，每一路带开关指示灯,后端配置；\n一个保险开关按钮（BYPASS）；     \n9.继电器  ：松乐牌(原厂正品)；   \n10.电路板线路 ：采用60%高纯度锡，高端分流技术,经强化加粗处理； \n11.变压器  ：开关电源；   \n12.内置电源线 ：3*6平方的电源线，线材配置长度为1.5米；   \n13.电压显示表 ：二极管 数字显示电压表；   \n14.机箱高度 ：1.5U （符合机柜按照标准）；   \n15.开关  ：船形开关；   \n16.受控功能 ：有，（每通道可以单独受控）带232接口，可受中控设备控制；  \n17.联机方式 ：是，（可支持9台设备同时联机使用）； \n18.滤波器  ：电容滤波器；\n19.尺寸：484×295×44mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (86, 'U型壁挂架', NULL, 'VOKON', '#', 80.00, NULL, NULL, NULL, '适合VM-J308 VM-J316 VM-J408线性音箱壁挂后挂支架,前后上下多角度调节', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (87, '反馈抑制器', NULL, 'VOKON', '#', 2272.50, NULL, NULL, NULL, '性能特点：代表当今最高科学技术水平的话筒数字扩声处理器，提升话筒音量大、加大拾音距离最远、音质还原最好、控制声反馈啸叫最佳。为数字话筒放大器领域的里程碑级机型。任何使用情况下都可获得6dB的增益，最高达12dB。讲话拾音距离、声场范围和音量立刻增加4倍。同时打开几十支话筒，绝无啸叫。更支持用户自由随意开启话筒或者全部开启，效果清晰无回声。让人满意的饱满收音距离：会议电容话筒：0.8-1米收声；合唱话筒：2米收声；电容枪咪：1-2米；领夹胸咪：0.5米收声；动圈话筒0.3米收声）；领导讲话轻松，不用再紧贴俯靠话筒，费力地大声讲话；可以配合使用短杆式话筒，摄影拍照视角无障碍，更加彰显领导形象风采。即插即用，无须调试，自动适应其他音响设备和声学装饰环境，自动弥补会场厅堂建筑吸声装饰的不足；一键式开关，并且固化运行工作模式，真正避免误操作，可以无需专业工程技术人员施工调试和售后维护；全天候自动实时运行和管理话筒音频，自动校正话筒和音箱等声学器材的频响缺陷，自动分析、补偿和美化讲话者声音的音质及音量。内置音频系统噪声实时动态检测仪，配置抗干扰电路和噪声门，自行处理干扰噪声。内置极速智能混音器，支持多路话筒接入通道开放和管理音量，无缝极速转换，确保声音连续不断。内置极速数字反馈抑制器和产生量参量均衡器。内置抗手机等无线通讯工具的电磁波噪声干扰的电路。\n技术参数：\n额定电压: 220V±10%  50Hz；\n频率响应: 125Hz~15KHz；\n失真: ＜1% @ 1KHz；\n信噪比: ＞65dB；\n输入阻抗: 20KΩ；\n输出阻抗（平衡）: 200Ω；\n温度范围: -10~55℃；\n重量: 3.5kg；\n尺寸: 480×220×44mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (88, '音箱处理器', NULL, 'VOKON', '#', 2890.00, NULL, NULL, NULL, '1.96KHz采样频率，32-bit DSP处理器，24-bit A/D及D/A转换\n2.2路信号输入4路信号输出，可灵活组合多种分频模式，高、低通分频点均可达20Hz～20KHz\n3.提供USB和RS485接口可连接电脑，通过RS485接口可最多连接250台机器和超过1500米的距离外用电脑来控制\n4.直接用面板的功能键和拔轮进行功能设置或是连接电脑通过PC控制软件来控制，均十分方便、直观和简洁\n5.单机可存储30种用户程序\n6.可通过面板的SYSTEM按键来设定密码锁定面板控制功能，以防止闲杂人员的操作破坏机器的工作状态\n7.每个输入和输出均有6段独立的参量均衡，调节增益范围可达±20dB，同时输出通道的均衡还可选择Lo-shelf和Hi-shelf两种斜坡方式\n8.2×24 LCD蓝色背光显示功能设置，8段LED显示输入/输出的精确数字电平表、哑音及编辑状态\n9.每个输入和输出均有延时和相位控制及哑音设置，延时最长可达1000ms，延时单位可选择毫秒(ms)、米(m)、英尺(ft)三种\n10.输出通道还可控制增益、压限及选择输入通道信号，并能将某通道的所有参数复制到另外一个通道并能进行联动控制\n11.可以通过USB接口或RS485接口连接中控来控制矩阵和通道的哑音\n12.可以分功能锁定，实现数据保密\n13.输入通道可调噪声门\n14.共模拟制比 >70dB(1KHz)\n15.输入范围 ≤+25dBu\n16.频率响应 20Hz-20KHz(-0.5dB)\n17.信噪比 >110dB\n18.失真度 <0.01% OUTPUT=0dBu/1KHz\n19.通道分离度 >80dB(1KHz)\n20.尺寸：482*198*44mm;\n21.重量：3.6Kg；\n22.功耗：≤25W；\n23.电源：AC 110V/220V 50Hz/60Hz；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (89, '同轴吸顶音箱8寸', NULL, 'VOKON', '#', 262.50, NULL, NULL, NULL, '额定功率 : 80W；\n阻抗： 8Ω；\n灵敏度(1m ,1w):90dB；\n频响：70-20KHZ；\n开孔尺寸:Φ250mm；\n材料 :ABS\n重量：2.3kg；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (90, '功放', NULL, 'VOKON', '#', 1950.00, NULL, NULL, NULL, '1.立体声（8Ω）STEREO POWER 8Ω：300Wx2；\n2.立体声（4Ω）STEREO POWER  4Ω：480Wx2；\n3.立体声（2Ω）STEREO POWER  2Ω：600Wx2；\n4.桥接（8Ω）BRIDGE POWER 8Ω：1000W；\n5.桥接（4Ω）BRIDGE POWER  4Ω：1400W；\n6.频率响应FREQUENCY RESPONSE：20Hz-20KHz/-0.5dB；\n7.失真度THD+N：<0.05%@4 Ω 1KHz；\n8.信噪比S/N RATE：≥105dB；\n9.分离度SLEW RATE：60V/us；\n10.阻尼系数DAMPING FACTOR：≥800@8 Ω；\n11.转换速率CROSSTALK：≥80dB@8 Ω 1KHz；\n12.输入阻抗INPUT  IMPEDANCE：20KHz(BALANCE)/10KΩ (UNBALANCE)；\n13.输入灵敏度INPUT SENSITIVITY：0.775V\\1.0V\\1.4V；\n14.保护PROTECT：DC,SHORT,CIRCUIT,OVER HEAT,SOFTSTART；\n15.机箱高度HEIGHT：2U；\n16.包装尺寸PACKING DIMENSIONS：89*483*472mm；\n17.重量GROSS WEIGHT：15Kg；　　　　　　　　　　\n18.功耗:960W', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (91, '视频会议系统---会议管理系统', NULL, 'VOKON', '#', 1140.75, NULL, NULL, NULL, '1.自带，配合MCU使用，支持多级网络视频管理，也支持扁平化的网络管理（可划分区域）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (92, '视频会议系统---MCU', NULL, 'VOKON', '#', 55062.00, NULL, NULL, NULL, '1.系统容量：单台最高达200用户，双服务器热备可达400用户，可升级到MCU集群可支持1000用户以上，升级到云计算平台可支持无限用户。（适用于硬软件结合数字视频会议).                                                                                                                                          2.通讯协议：H.323-优化，兼容SIP \n3.视频编解码：H.264（支持最高High profile ）\n4.视频分辨率：QCIF、CIF、4CIF、480P、D1、720P、1080P24、1080P25、1080P30、1080P50、1080P60\n5.静态图文： XGA、HD 720P、640*480、1280*1024、1080P（1--60帧），H.239数字双流技术\n6.音频编解码： G.711A,G.711U,G.722，iLBC，G.7221，G.722.1.C,G.723，AAC等\n7.用户管理：可通过Web方式实现\n8.会议管理：可视互动会议管理平台\n9.远程维护：支持远程Telnet、ssh配置维护\n10.网络接口：100M/1000M网络接口,双网口\n11.网络媒介：DDN、ISDN、ATM、SDH、VPN、卫星专线、ADSL等线路\n12.防火墙：跨越路由器及防火墙，保证系统安全，支持双网接入\n13.可靠性：MTBF:10万小时、MTTR：0.1小时                                \n14.支持视频分频；支持多画面，常见多种种多画面，每屏最多16画面；支持数据双流；支持摄像头远程遥控，背光设置；                                    \n15.支持多种会议模式：导演模式（WEB后台控制会议），主席会议模式，广播模式，自由模式；\n16.支持大规模终端入会，管理；\n17.高清（1080P60）、低延时(感觉不出,小于200ms)、低带宽（超低带宽，超节省带宽，1M能开1080P高清会议）；\n18.双冗余电源，双机热备，高可靠性；\n19.支持视频分屏，多画面，多种常见多画面，每屏最多16画面；\n2.支持双流。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (93, '视频会议系统---高清视频背靠背会议终端', NULL, 'VOKON', '#', 11250.00, NULL, NULL, NULL, '1.符合国际电联ITU H.323和IETF SIP标准；能与多种主流MCU组建视频会议系统的能力。\n2.视频终端采用高可靠嵌入式系统设计，实现7×24小时稳定运行。\n3. 支持带宽范围:256K---8M 分辨率：D1，720P,1080P(5-25，30) 1M可召开1080P会议。 \n4. 视频特性：H.264(支持High profile)。支持视频分屏，多画面，多种常见多画面，每屏最多16画面；支持画面轮询。\n5. 音频特性：同时支持G.711A,G.711U,G.722，iLBC，G.7221， G.722.1.C,G.723，AAC等音频标准，高清音频。\n6. 唇音同步/多路混音/回声消除/自动增益/噪音消除/闭音/静音/幻想供电\n7.图像格式支持QCIF、CIF、4CIF、VGA、SVGA、XGA、D1、720P、1080P(5-25，30)帧/秒。\n8. 具备高清视频输入、输出接口DVI（或HDMI）方便接入各种高清设备。 \n9.支持H.239双流，主辅流均可达到1080P效果。\n10. 中英文支持：符合中国使用习惯。终端采用中英文管理界面，可实现中英文WEB管理。 \n11.终端可通过Web、Telnet、SSH进行管理。\n12. 支持QoS, 消除网络抖动，传输纠错，带宽自适应。\n13.在和防火墙配合使用时，可以指定TCP/UDP的通信端口，实现防火墙穿越。\n14. 支持NAT内外网穿透。\n15.具备先进的网络丢包恢复机制，和MCU 配合，5％以下丢包率无影响。\n16.提供1个10M/100MBase-T自适应以太网接口。\n17.会议的安全性，会议加入密码，会议控制密码，管理员密码 。\n18.使用维护门槛低，直接开机为上次开会的配置；界面功能设计简洁；两个快捷按钮，一键入会，一键发言；每个人都能方便使用，不需要专门的网管。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (94, '视频会议系统---高清摄像头', NULL, 'VOKON', '#', 6283.35, NULL, NULL, NULL, '1、像素：采用1/2.8英寸500万像素高品质CMOS传感器，帧率最高可达1080P60，水平亮度分解力1050电视线；\n2、镜头参数：12倍（可选20倍）光学变倍、10倍数字变焦，f＝3.9～46.8mm，视角：6.3°-72.5°；\n★3丰富完善的接口：支持DVI（HDMI），3G-SDI，USB、有线LAN、无线LAN接口（5GWiFi模块），3G-SDI支持在1080P60格式下传输100米；\n4、网络和控制：100M网口，支持H.265，RTSP、RTMP等标准网络协议，支持RS232、485和IP控制，VISCA/Pelco-D/P控制协议，支持网络VISCA协议控制；\n★5、视频格式：支持1080P60/50/30/25、1080I60/50、720P60/50等多种高清视频制式；\n6、功能：OSD中/英文菜单，2D和3D降噪，支持手动/自动/一键白平衡/3000K/3500K/4000K/4500K/5000K/5500K/6000K/6500K/7000K各种白平衡模式，支持亮度、色度、饱和度、对比度、锐度、黑白模式、伽马曲线视频调节功能，支持自动/手动/一键聚焦，自动/手动光圈和快门，支持背光补偿，宽动态等级可调，信噪比>55dB，支持图像垂直和水平翻转；\n7、云台：水平转动±170度，俯仰转动-30～+90度，水平控制速度0.1-100°/秒，俯仰控制速度0.1-45°/秒，最高可设255个预置位；\n8、配件：红外遥控器，壁/吊装支架，电源，232控制线，485端子，说明书（含保修卡）；\n9.功耗：12W(最大)\n10.尺寸（宽X高X深）：258mmX172mmX169mm\n11.重量（约）：1.54kg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (95, '一体化视频会议终端', NULL, 'VOKON', '#', 11250.00, NULL, NULL, NULL, '1.符合国际电联ITU H.323和IETF SIP标准；能与多种主流MCU组建视频会议系统的能力。\n2.视频终端采用高可靠嵌入式系统设计，实现7×24小时稳定运行。\n3. 支持带宽范围:256K---8M 分辨率：D1，720P,1080P(5-25，30) 1M可召开1080P会议。 \n4. 视频特性：H.264(支持High profile)。支持视频分屏，多画面，多种常见多画面，每屏最多16画面；支持画面轮询。\n5. 音频特性：同时支持G.711A,G.711U,G.722，iLBC，G.7221， G.722.1.C,G.723，AAC等音频标准，高清音频。\n6. 唇音同步/多路混音/回声消除/自动增益/噪音消除/闭音/静音/幻想供电\n7.图像格式支持QCIF、CIF、4CIF、VGA、SVGA、XGA、D1、720P、1080P(5-25，30)帧/秒。\n8. 具备高清视频输入、输出接口DVI（或HDMI）方便接入各种高清设备。 \n9.支持H.239双流，主辅流均可达到1080P效果。\n10. 中英文支持：符合中国使用习惯。终端采用中英文管理界面，可实现中英文WEB管理。 \n11.终端可通过Web、Telnet、SSH进行管理。\n12. 支持QoS, 消除网络抖动，传输纠错，带宽自适应。\n13.在和防火墙配合使用时，可以指定TCP/UDP的通信端口，实现防火墙穿越。\n14. 支持NAT内外网穿透。\n15.具备先进的网络丢包恢复机制，和MCU 配合，5％以下丢包率无影响。\n16.提供1个10M/100MBase-T自适应以太网接口。\n17.会议的安全性，会议加入密码，会议控制密码，管理员密码 。\n18.使用维护门槛低，直接开机为上次开会的配置；界面功能设计简洁；两个快捷按钮，一键入会，一键发言；每个人都能方便使用，不需要专门的网管。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (96, '摄像头', NULL, 'VOKON', '#', 6283.35, NULL, NULL, NULL, '1、像素：采用1/2.8英寸500万像素高品质CMOS传感器，帧率最高可达1080P60，水平亮度分解力1050电视线；\n2、镜头参数：12倍（可选20倍）光学变倍、10倍数字变焦，f＝3.9～46.8mm，视角：6.3°-72.5°；\n★3丰富完善的接口：支持DVI（HDMI），3G-SDI，USB、有线LAN、无线LAN接口（5GWiFi模块），3G-SDI支持在1080P60格式下传输100米；\n4、网络和控制：100M网口，支持H.265，RTSP、RTMP等标准网络协议，支持RS232、485和IP控制，VISCA/Pelco-D/P控制协议，支持网络VISCA协议控制；\n★5、视频格式：支持1080P60/50/30/25、1080I60/50、720P60/50等多种高清视频制式；\n6、功能：OSD中/英文菜单，2D和3D降噪，支持手动/自动/一键白平衡/3000K/3500K/4000K/4500K/5000K/5500K/6000K/6500K/7000K各种白平衡模式，支持亮度、色度、饱和度、对比度、锐度、黑白模式、伽马曲线视频调节功能，支持自动/手动/一键聚焦，自动/手动光圈和快门，支持背光补偿，宽动态等级可调，信噪比>55dB，支持图像垂直和水平翻转；\n7、云台：水平转动±170度，俯仰转动-30～+90度，水平控制速度0.1-100°/秒，俯仰控制速度0.1-45°/秒，最高可设255个预置位；\n8、配件：红外遥控器，壁/吊装支架，电源，232控制线，485端子，说明书（含保修卡）；\n9.功耗：12W(最大)\n10.尺寸（宽X高X深）：258mmX172mmX169mm\n11.重量（约）：1.54kg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (97, '全向麦', NULL, 'VOKON', '#', 3974.50, NULL, NULL, NULL, '1.麦克风与喇叭频响：100~22KHz \n2.麦克风拾音范围：内置3米，扩展5米，360度全范围\n3.音频：线性输入输出\n4.噪声水平：< -48 dBA\n5.喇叭音量：最大95dB', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (98, '音频跳线', NULL, 'VOKON', '#', 20.00, NULL, NULL, NULL, '3.5直插头(电脑音频接口）--双莲花头', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (99, '音频跳线', NULL, 'VOKON', '#', 20.00, NULL, NULL, NULL, '莲花头--6.35直插头', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (100, '音频跳线', NULL, 'VOKON', '#', 20.00, NULL, NULL, NULL, '6.35直插头--6.35直插头', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (101, '音频跳线', NULL, 'VOKON', '#', 20.00, NULL, NULL, NULL, '卡侬头（公）--卡侬头（母）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (102, '操作台', NULL, '国产', '#', 8800.00, NULL, NULL, NULL, '五联、配套椅子', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (103, '服务器机柜', NULL, '国产', '#', 3800.00, NULL, NULL, NULL, '600*1000*2000', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (104, '金属桥架', NULL, '国产', '#', 90.00, NULL, NULL, NULL, '300*100', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (105, '管材', NULL, '国产', '#', 3000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (106, '雷达水位计（含法兰、托盘等）', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', 'JERD813 30米', 5829.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (107, '雷达水位计（含法兰、托盘等）', NULL, '唐山柳林MGTR-LD30', '唐山柳林MGTR-LD30', 4500.00, NULL, NULL, NULL, '适用于湖泊、河道、水库、明渠、潮汐水位、桥梁积水等水位检测。\n测量范围：30m\n介质温度：（-60~250）℃\n测量精度：±3mm\n过程连接：螺纹、法兰\n天线材料：不锈钢\n频率范围：26GHz\n信号输出：4-20ma/HART(两线/四信)RS485/Modbus协议\n电源：24V DC\n防护等级IP67', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (108, '前池水位测站', NULL, '#', '#', 0.00, NULL, NULL, NULL, 'PE 管保护', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (109, '收绳式浮子水位计', NULL, '#', '#', 3100.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (110, '收绳式浮子水位计显示仪', NULL, '#', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (111, '收绳式浮子水位计安装支架', NULL, '#', '#', 0.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (112, '水位传感器专用电缆', NULL, '#', '#', 8.00, NULL, NULL, NULL, 'SC32 钢管保护 埋设', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (113, '水位传感器电源电缆', NULL, '#', '#', 3.50, NULL, NULL, NULL, 'YJV-0.6/1-2×2.5 SC32 钢管保护 埋设', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (114, 'HDPE 管 带保温夹层及盖', NULL, '#', '#', 2000.00, NULL, NULL, NULL, '双层 内径 400mm，外径500mm，高 5m', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (115, '出水池水位测站', NULL, '#', '#', 0.00, NULL, NULL, NULL, '测井保护', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (116, '收绳式浮子水位计', NULL, '#', '#', 3100.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (117, '收绳式浮子水位计显示仪', NULL, '#', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (118, '收绳式浮子水位计安装支架', NULL, '#', '#', 0.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (119, '水位传感器专用电缆', NULL, '#', '#', 8.00, NULL, NULL, NULL, 'SC32 钢管保护 埋设', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (120, '水位传感器电源电缆', NULL, '#', '#', 3.50, NULL, NULL, NULL, 'YJV-0.6/1-2×2.5 SC32 钢管保护 埋设', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (121, '压力式水位计', NULL, '昊润', 'WFX', 4700.00, NULL, NULL, NULL, '水位数据采集', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (122, '遥测终端机', NULL, '四信', 'F9164', 6000.00, NULL, NULL, NULL, '水文自动测报采集', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (123, '雨量计', NULL, '丰泽', 'JD05', 1500.00, NULL, NULL, NULL, '雨量采集', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (124, '太阳能板供电系统', NULL, '定制', '#', 2500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (125, '户外机箱', NULL, '国产', '定制', 1500.00, NULL, NULL, NULL, '设备保护箱', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (126, '避雷器', NULL, '湖南雷科星', '雷科星LKX', 450.00, NULL, NULL, NULL, '信号避雷', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (127, '防雷接地', NULL, '#', '#', 3500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (128, '测井安装', NULL, '#', '#', 12000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (129, '立杆基层', NULL, '#', '#', 3500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (130, '安装调试费用', NULL, '#', '#', 3000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (131, '电话卡', NULL, '移动', '#', 1800.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (132, '超声波水位计', NULL, '联测仪表', '#', 1600.00, NULL, NULL, NULL, '1、功能：一体型\n2、量程：0~2米。\n3、测量精度：0.25%-0.5%。\n4、分辨率：3mm或0.1% (取大者)。\n5、显示：中文液晶显示。\n6、模拟输出：4线制4~ 20mA/510Ω负载 ，2线制4~ 20mA/ 250Ω负载。\n7、继电器输出：可选配2组AC，250V/8A或DC， 30V/5A，状态可编程。\n8、供电：12VDC，可选220V，AC+15%，50Hz。\n9、环境温度：显示仪表-20~+60°C，探头-20~+80°C。\n10、通信：可选485，232通信。\n11、防护等级：显示仪表IP66，探头IP68。\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (133, '遥测终端机', NULL, '#', '#', 1600.00, NULL, NULL, NULL, '包括3G、4G通信模块，有线传输模块，详见本章节参数', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (134, '金属防护箱', NULL, '#', '#', 570.00, NULL, NULL, NULL, '野外防护箱，防湿防潮，内置隔板，外置锁具，内装采集仪，蓄电池，太阳能控制器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (135, '支架', NULL, '#', '#', 850.00, NULL, NULL, NULL, '金属喷漆一体式支架，牢靠稳固，外观美观，承载防护箱、传感器、太阳能等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (136, '太阳能供电系统', NULL, '#', '#', 2800.00, NULL, NULL, NULL, '太阳能电池板 30W 1块；太阳能板支撑架 1套；蓄电池25AH 1个；太阳能控制器1套； ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (137, '通信模块', NULL, '#', '#', 1100.00, NULL, NULL, NULL, '采用TCP透明传输，数据传至气象软件', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (138, '通信费', NULL, '#', '#', 300.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (139, '自动化控制', NULL, '#', '#', 0.00, NULL, NULL, NULL, '部署在闸门控制室及闸门现地', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (140, '监控屏体', NULL, '#', '#', 9000.00, NULL, NULL, NULL, '高 2.2m', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (141, '可编程控制器', NULL, '#', '#', 25000.00, NULL, NULL, NULL, '含背板、电源、控制、通信模块,进行 PLC 编程并通信', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (142, '液晶触摸屏', NULL, '#', '#', 4500.00, NULL, NULL, NULL, '10\"及以上 含应用软件', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (143, 'UPS', NULL, '#', '#', 14000.00, NULL, NULL, NULL, '3kVA 2h 配铅酸蓄电池（带电池架）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (144, '分水闸远程控制站', NULL, '#', '#', 33330.00, NULL, NULL, NULL, '含背板、电源、控制、通信模块 触摸屏 现地箱,进行PLC 编程并通信', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (145, '闸门现地控制箱', NULL, '#', '#', 22828.00, NULL, NULL, NULL, '高 1m 带小型 PLC 及触摸屏,进行 PLC 编程并通信', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (146, '控制电缆阻燃型', NULL, '#', '#', 10500.00, NULL, NULL, NULL, 'ZR-KVVP-8×1.5', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (147, 'RS485 总线电缆', NULL, '#', '#', 2300.00, NULL, NULL, NULL, '阻燃型', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (148, '动力电缆', NULL, '#', '#', 12200.00, NULL, NULL, NULL, 'YJV-0.6/1-3×6', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (149, '一体化控制器', NULL, 'HORNER', 'HE-X2A', 1200.00, NULL, NULL, NULL, '内置12DI/12DO/4AI/2AO,4-20mA,12bit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (150, '一体化泵房主体', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'L*W*H=3*3.5*3.5m；\n含基础4*4*0.2m的C20砼基础', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (151, '推拉门', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '配套泵房尺寸', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (152, '窗户', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '配套泵房尺寸', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (153, '通风口', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN200', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (154, '专用农田灌溉泵', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '15KW，Q=132m³/h，进出水口DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (155, '配套底座', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '泵站电机配套', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (156, '真空泵', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '与水泵配套', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (157, '配套水箱', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '与真空泵配套', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (158, '配套真空管路系统', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '与真空泵配套', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (159, '进水管', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (160, '出水管', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (161, '出水柔性接头', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (162, '压力管路系统', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (163, '流量计', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (164, '电动阀', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (165, '电动阀', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN25', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (166, '智能控制柜', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '泵站配套，变频控制，含PLC、触摸屏、远传模块、继电器、断路器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (167, '压力式水位计', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '4-20mA输出', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (168, '辅材配件', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '螺母、管路接线等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (169, 'NVR', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '4路，1盘位，含2T硬盘', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (170, '4G路由器', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '4G全网通', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (171, '交换机', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '8个10/100M自适应RJ45端口；\n电源：5VDC/0.4A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (172, '辅材配件', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '监控安装支架等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (173, '市电接入', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '市电380V接入', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (174, '半球型摄像机', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '200万1/2.7″ CMOS ICR日夜型半球型网络摄像机；\n视频压缩标准：H.264/MPEG；\n最大图像尺寸：1920×1080；\n调整角度：水平0-355°，垂直0-70°；\n接口协议：ONVIF，PSIA，CGI；\n通讯接口：1个RJ45 10/100M自适应以太网口；\n工作温度：-10-40℃；\n电源：DC12V±25%；\n功耗：3.5W MAX；\n红外照射距离：10-30m。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (175, '球机', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '1/2.8英寸 Progressive Scan CMOS；\n有效像素：200万；\n焦距：4.8-115mm，20倍光学；\n支持360°水平旋转，垂直方向-15-90°\n分辨率：1920×1080；\n防护等级：IP66；\n电压：AC24V；\n工作温度：-30-65℃', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (176, '4G路由器', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '4G全网通；\n支持2.4G频段；\n接口类型：1个标准SIM接口（大卡），1个千兆WAN/LAN网口，1个SMA外置天线接口；\n操作系统：支持Windows Vista SP1/SP2、Windows7等；\n供电方式：AC：170-240V 50Hz/60Hz。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (177, '通信费', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (178, '安装附件', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (179, '直流电机', NULL, '成都万江智控科技有限公司', '#', 570.00, NULL, NULL, NULL, '直流电机，功率700w', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (180, '闸位计', NULL, '成都万江智控科技有限公司', '#', 4000.00, NULL, NULL, NULL, '工作电压：DC12—24V\n工作温度：-20—75℃\n消耗电流：≤70mA\n防护等级：IP64\n输出信号：4-20mA，并行格雷码，RS485', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (181, '上下行程限位', NULL, '成都万江智控科技有限公司', '#', 60.00, NULL, NULL, NULL, '防护等级：IP52\n额定电压：AC-15:380V DC-13:220V\n额定控制电流：AC-15:0.8A DC-13:0.15A\n操作频率：20次/分\n环境温度：-5℃--40℃\n应用范围：限制运动机构或程序控制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (182, '闸门控制柜', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '柜式，一控二，包含柜内器件，电流电压表，信号指示灯，按钮', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (183, 'PLC', NULL, '成都万江智控科技有限公司', '#', 700.00, NULL, NULL, NULL, '24VDC供电；\n36输入/24输出；\n高速计数：4路60kHz；\n高速脉冲输出：3路100kHz；\n通信端口：2-3；\n最大开关量I/O：188；\n最大模拟量I/O：24', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (184, '闸门触控彩屏', NULL, '成都万江智控科技有限公司', '#', 218.00, NULL, NULL, NULL, '屏幕尺寸：7英寸；\n显示颜色：6.4万色；\n具有以外网接口、RS232串口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (185, '交换机', NULL, '成都万江智控科技有限公司', '#', 800.00, NULL, NULL, NULL, '8个10/100M自适应RJ45端口；\n电源：5VDC/0.4A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (186, '球机', NULL, '成都万江智控科技有限公司', '#', 380.00, NULL, NULL, NULL, '1/2.8英寸 Progressive Scan CMOS；\n有效像素：200万；\n焦距：4.8-115mm，20倍光学；\n支持360°水平旋转，垂直方向-15-90°\n分辨率：1920×1080；\n防护等级：IP66；\n电压：AC24V；\n工作温度：-30-65℃', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (187, '摄像机安装支架', NULL, '成都万江智控科技有限公司', '#', 50.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (188, '太阳能板', NULL, '成都万江智控科技有限公司', '#', 585.00, NULL, NULL, NULL, '功率150W的单晶硅太阳能板', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (189, '蓄电池', NULL, '成都万江智控科技有限公司', '#', 880.00, NULL, NULL, NULL, '容量100AH /12V铅酸免维护可充电蓄电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (190, '太阳能充电控制器', NULL, '成都万江智控科技有限公司', '#', 260.00, NULL, NULL, NULL, '12V/24V自动识别；\n浮充电压13.8V；\n额定充电电流20A；\n过压断开电压：16.0V；\n工作温度：-10-50℃。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (191, '枪式摄像机', NULL, '成都万江智控科技有限公司', '#', 400.00, NULL, NULL, NULL, '200万1/2.7\"CMOS摄像机；\n最大图像尺寸：1920×1080；\n1个RJ4510M/100M自适应以太网口；\n工作温度：-30℃~60℃,湿度小于95%(无凝结)；\n功耗：7WMAX；\n防护等级：IP67；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (192, '壁挂摄像机支架', NULL, '成都万江智控科技有限公司', '#', 50.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (193, 'NVR', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '网络视频输入：8路；\n1路HDMI，1路VGA，1个RCA接口；\n1个SATA接口，支持最大6TB硬盘；\n含1个2TB的硬盘；\n电源：DC12V；\n工作温度：-10-+55℃；\n工作湿度：10%-90%；\n功耗（不含硬盘）：≤10W', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (194, '7m电杆', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '长度：7m，电杆直径150mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (195, '架空铝线', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '25mm2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (196, '横担', NULL, '成都万江智控科技有限公司', '#', 35.00, NULL, NULL, NULL, '铸铁', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (197, '不锈钢抱箍', NULL, '成都万江智控科技有限公司', '#', 10.00, NULL, NULL, NULL, '不锈钢材质', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (198, '绝缘子', NULL, '成都万江智控科技有限公司', '#', 30.00, NULL, NULL, NULL, '陶瓷', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (199, '电表箱（含开户）', NULL, '成都万江智控科技有限公司', '#', 100.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (200, '辅材配件', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (201, '监控立杆', NULL, '成都万江智控科技有限公司', '#', 2200.00, NULL, NULL, NULL, '1、主体高度：4米。2、直径：80mm。3、壁厚：5mm。4、表面处理：喷塑、表面白色处理。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (202, '水泥基座', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '1000mm*1000mm*1000mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (203, '辅材', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '1、电源线：RVVP2*6(1500/100M)。2、信号线：RVVP4*0.5(300/100M）。3、网线：CAT5E（150/100M)。4、穿线管：50镀锌管(11元/m)。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (204, '流量率定', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (205, '红外探测报警器', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '报警时间：2s；\n语音输出：90dB；\n电池：3.6V AAA Ni-MH充电电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (206, '通信费', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (207, '磁致伸缩水位计', NULL, '成都万江智控科技有限公司', '#', 500.00, NULL, NULL, NULL, '1.测量精度：±2mm；\n2.分辨率：0.5mm；\n3.输出信号：RS485；\n4.通信协议：modbus RTU；\n5.测量温度范围：-35℃--75℃；\n6.液位测量范围：0—3000mm；\n7.电源：7V—30V/DC。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (208, '磁致伸缩水位计保护管及支架', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制；闸前和闸后', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (209, '磁致伸缩水位井', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制；闸前和闸后', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (210, '一体化测控智能闸门', NULL, '成都万江智控科技有限公司', '#', 26325.00, NULL, NULL, NULL, '宽*高：0.6*0.6m，包括直流电机、减速器、编码器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (211, '一体化测控智能闸门', NULL, '成都万江智控科技有限公司', '#', 56997.00, NULL, NULL, NULL, '宽*高：1.0*1.0m，包括直流电机、减速器、编码器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (212, '闸门控制器', NULL, '成都万江智控科技有限公司', '#', 5200.00, NULL, NULL, NULL, '包括3G、4G通信模块，有线传输模块', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (213, '测流箱', NULL, '成都万江智控科技有限公司', '#', 14000.00, NULL, NULL, NULL, '与一体化闸门配套，超声波时差法测流', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (214, '控制柜(挂式)', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '1、配置：带锁，包括直流空开、浪涌保护器、中间继电器、电机控制器、接线端子等器件。2、材质：304不锈钢，板材厚度1.5mm。3、尺寸：500mm*300mm*850mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (215, '太阳能板', NULL, '成都万江智控科技有限公司', '#', 585.00, NULL, NULL, NULL, '功率80W的单晶硅太阳能板', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (216, '蓄电池', NULL, '成都万江智控科技有限公司', '#', 880.00, NULL, NULL, NULL, '容量100AH /12V铅酸免维护可充电蓄电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (217, '太阳能充电控制器', NULL, '成都万江智控科技有限公司', '#', 260.00, NULL, NULL, NULL, '12V/24V自动识别；\n浮充电压13.8V；\n额定充电电流20A；\n过压断开电压：16.0V；\n工作温度：-10-50℃。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (218, '枪式摄像机', NULL, '成都万江智控科技有限公司', '#', 400.00, NULL, NULL, NULL, '200万1/2.7\"CMOS摄像机；\n最大图像尺寸：1920×1080；\n1个RJ4510M/100M自适应以太网口；\n工作温度：-30℃~60℃,湿度小于95%(无凝结)；\n功耗：7WMAX；\n防护等级：IP67；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (219, '监控立杆', NULL, '成都万江智控科技有限公司', '#', 2200.00, NULL, NULL, NULL, '1、主体高度：4米。2、直径：80mm。3、壁厚：5mm。4、表面处理：喷塑、表面白色处理。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (220, '水泥基座', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '1000mm*1000mm*1000mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (221, '电池井', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '800mm*800mm*800mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (222, '防雷接地', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '小于4Ω', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (223, '通信费', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '1、4G,根据现场信号情况选择移动、联通、电信运营商。2、三年通信费', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (224, '流量率定', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (225, '原土建设施拆除及闸门主体安装配套土建', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (226, '红外探测报警器', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '报警时间：2s；\n语音输出：90dB；\n电池：3.6V AAA Ni-MH充电电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (227, '拦污栅', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (228, '设备围栏', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (229, '一体化测控智能闸门', NULL, '成都万江智控科技有限公司', '#', 26325.00, NULL, NULL, NULL, '宽*高：0.6*0.6m，包括直流电机、减速器、编码器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (230, '闸门控制器', NULL, '成都万江智控科技有限公司', '#', 5200.00, NULL, NULL, NULL, '包括3G、4G通信模块，有线传输模块', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (231, '测流箱', NULL, '成都万江智控科技有限公司', '#', 14000.00, NULL, NULL, NULL, '与一体化闸门配套，超声波时差法测流', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (232, '控制柜(挂式)', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '1、配置：带锁，包括直流空开、浪涌保护器、中间继电器、电机控制器、接线端子等器件。2、材质：304不锈钢，板材厚度1.5mm。3、尺寸：500mm*300mm*850mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (233, '太阳能板', NULL, '成都万江智控科技有限公司', '#', 585.00, NULL, NULL, NULL, '功率80W的单晶硅太阳能板；最大工作电压17V，开路电压21V', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (234, '蓄电池', NULL, '成都万江智控科技有限公司', '#', 880.00, NULL, NULL, NULL, '容量100AH /12V铅酸免维护可充电蓄电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (235, '太阳能充电控制器', NULL, '成都万江智控科技有限公司', '#', 260.00, NULL, NULL, NULL, '12V/24V自动识别；\n浮充电压13.8V；\n额定充电电流20A；\n过压断开电压：16.0V；\n工作温度：-10-50℃。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (236, '枪式摄像机', NULL, '成都万江智控科技有限公司', '#', 400.00, NULL, NULL, NULL, '200万1/2.7\"CMOS摄像机；\n最大图像尺寸：1920×1080；\n1个RJ4510M/100M自适应以太网口；\n工作温度：-30℃~60℃,湿度小于95%(无凝结)；\n功耗：7WMAX；\n防护等级：IP67；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (237, '监控立杆', NULL, '成都万江智控科技有限公司', '#', 2200.00, NULL, NULL, NULL, '1、主体高度：4米。2、直径：80mm。3、壁厚：5mm。4、表面处理：喷塑、表面白色处理。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (238, '水泥基座', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '1000mm*1000mm*1000mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (239, '电池井', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '800mm*800mm*800mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (240, '防雷接地', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '小于4Ω', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (241, '通信费', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '1、4G,根据现场信号情况选择移动、联通、电信运营商。2、三年通信费', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (242, '流量率定', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (243, '闸门主体安装配套土建', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (244, '红外探测报警器', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '报警时间：2s；\n语音输出：90dB；\n电池：3.6V AAA Ni-MH充电电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (245, '土壤温度传感器', NULL, '南京南林电子', '#', 950.00, NULL, NULL, NULL, '测量范围：-50～80℃\n准 确 度：±0.5℃\n供电方式：DC2.5V    \n输出形式： 0～2.5V   \n负载能力：电流型输出阻抗≤300Ω\n          电压型输出阻抗≥1KΩ\n工作环境：温度-50℃～80℃，湿度≤100%RH\n产品重量：探头 145 g ，带采集仪 550 g \n产品功耗：0.5 mW\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (246, '土壤湿度传感器', NULL, '南京南林电子', '#', 950.00, NULL, NULL, NULL, '测量范围：0～100%\n准 确 度：±3%\n供电方式： DC5V\n输出形式:0～2.5V\n负载电阻: 电压型：RL≥1K，电流型：RL≤300Ω\n工作温度：-50℃～80℃ \n相对湿度：0～100% \n产品重量：探头 220 g，带变送器 570 g \n产品功耗：275 mW\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (247, '土壤电导率传感器', NULL, '南京南林电子', '#', 950.00, NULL, NULL, NULL, '测量范围：0~200mS/m（0-2000uS/cm）\n分 辨 率：0.2mS/m（2uS/cm）\n准 确 度：＜±7%\n耐    压：0.6Mpa\n电极常数：1.0\n供电方式：DC5/DC12/DC24V\n接线方式:电压型：3线、电流型：3线、RS-485信号：4线\n信号输出：电压型：0-5V    电流型：0-20mA      \nRS485信号：支持ModBus协议（波特率9600可设，地址0-255可设）\n仪器线长：2.5M\n负载能力：电流型输出阻抗≤250Ω    电压型输出阻抗≥1KΩ\n工作环境：温度-40℃～50℃     湿度≤100%RH    电压型：RL≥1KΩ\n工作环境：温度-50℃～85℃\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (248, '数据采集仪', NULL, '南京南林电子', '#', 12000.00, NULL, NULL, NULL, '多通道数据采集，液晶屏幕显示，带232和485接口，LCD背光，进行数据采集、存储、及显示；供电方式：220V交流/12V直流并存', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (249, '金属防护箱', NULL, '南京南林电子', '#', 570.00, NULL, NULL, NULL, '野外防护箱，防湿防潮，内置隔板，外置锁具，内装采集仪，蓄电池，太阳能控制器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (250, '支架', NULL, '南京南林电子', '#', 850.00, NULL, NULL, NULL, '金属喷漆一体式支架，牢靠稳固，外观美观，承载防护箱、传感器、太阳能等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (251, '太阳能供电系统', NULL, '南京南林电子', '#', 2800.00, NULL, NULL, NULL, '太阳能电池板 30W 1块；太阳能板支撑架 1套；蓄电池25A.H 1个；太阳能控制器1套； ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (252, '串口通讯', NULL, '南京南林电子', '#', 500.00, NULL, NULL, NULL, 'RS485通讯线1根，线长20米；RS232通讯线1根，线长10米；232转485转接头1个；USB转232转接线1根', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (253, '无线通信模块', NULL, '南京南林电子', '#', 1100.00, NULL, NULL, NULL, '采用TCP透明传输，数据传至气象软件', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (254, '通信费', NULL, '南京南林电子', '#', 300.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (255, '流量计', NULL, '道盛', 'XCT-2000TH', 5000.00, NULL, NULL, NULL, '含主机、线缆、冷压端子、硅胶等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (256, 'RTU', NULL, '威控', 'WRU-2000', 6700.00, NULL, NULL, NULL, '含DTU、避雷模块、天线', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (257, '固定杆', NULL, '#', '#', 2000.00, NULL, NULL, NULL, '3米', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (258, '信号避雷器', NULL, '#', '#', 290.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (259, '箱体、设备配件', NULL, '#', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (260, '端子、空开等辅料', NULL, '#', '#', 1500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (261, '防雷接地装置', NULL, '#', '#', 650.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (262, '基础制作 包含水泥沙子等', NULL, '#', '#', 1730.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (263, '蓝色壁挂插入式超声波流量计', NULL, '道盛', 'XCT-2000TH', 4700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (264, '流量计', NULL, 'E+H', 'DN200', 11189.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (265, '流量计', NULL, 'E+H', 'DN250', 14687.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (266, '流量计', NULL, 'E+H', 'DN300', 18205.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (267, '流量计', NULL, 'E+H', 'DN350', 19915.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (268, '流量计', NULL, 'E+H', 'DN400', 21646.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (269, '流量计', NULL, 'E+H', 'DN450', 22637.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (270, '流量计', NULL, 'E+H', 'DN500', 23606.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (271, '流量计', NULL, 'E+H', 'DN600', 26240.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (272, '压力变送器', NULL, 'E+H', '#', 1358.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (273, '多普勒在线式超声波流量计', NULL, '#', ' ', 18000.00, NULL, NULL, NULL, '1. 测流范围：0.01～7.00m/s   测量准确度：1.0%±1cm/s\n2. 水温测量范围：-5～60℃   测温准确度：±1℃\n2. 水位范围：0～5m，0～10m\n3. 水位精度：0.5%±0.5cm\n4．流量范围：1升/秒～99999999立方米/小时\n5. 工作温度：0～60℃\n6. 测量间隔：自动方式：分0～120分钟选择值，以5分钟为最小递增或递减间隔单位 \n手动方式：可单次或连续多次测量，间隔任\n7．测速历时：自动方式：60秒、100秒二种\n手动方式：10～120秒，递增或递减键选择', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (274, '遥测终端机（RTU）', NULL, '#', '1', 6000.00, NULL, NULL, NULL, '工作方式：自报、应答、兼容可设定\n  总线速率：300bps-57600 bps\n  环境温度：－30℃～＋70℃\n  相对湿度：≥95%RH（无凝露）\n  静态功耗：≤4mA@12VDC；\n  工作功耗：≤ 10mA@12VDC（不含通信模块）；\n  工作电压： 12VDC（太阳能浮充蓄电池直流供电或220V交流稳压电源供电，太阳能或交流供电中断时，能够自动切换至交流或太阳能供电，切换时间＜10秒）;\n  工作温度：-10℃～+65℃，-25℃～+45℃（根据当地实际工作温度选取）；\n  工作湿度：98％RH。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (275, '设备机箱及地埋箱', NULL, '#', '#', 1600.00, NULL, NULL, NULL, '不锈钢', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (276, '断路器', NULL, '#', '#', 30.00, NULL, NULL, NULL, '10A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (277, '熔断器', NULL, '#', '#', 30.00, NULL, NULL, NULL, '交流4A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (278, '电源防雷器', NULL, '#', '#', 280.00, NULL, NULL, NULL, '直流电源防雷器', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (281, '非满管电磁流量计', NULL, '开封开流', 'LDM-51', 20000.00, NULL, NULL, NULL, '低频方波励磁，励磁频率:1/16工频;励磁电流可选定为 50mA、75Ma、100mA;流速测量范围:0.01 --- 10 米秒，流速分辨率:1 毫米秒;直流 12/24V 开关电源，电压适用范围:12VDC --- 30VDC;直流 3.6V 开关电源，电压适用范围:3.6VDC(特殊可选)网络功能:MODBUS(RTU)、TTL 电平 3.6V 供电;中文、英文显示方式;可分别记录:正向总量、反向总量显示十位;可用于开放式非满管管道(圆管、矩形管或其它异形管)流量的测量 ■ 可应用于市政雨水、废水、污水排放和灌溉用水管道等场所的连续计量 ■ 可实现正向和反向双向流量测量；传感器可在恶劣的现场和污水水质下长期可靠工作；流量测量精度高，而且不受下游、支流雍水、阻塞等因素的影响；测量管道的直管段要求较短；大屏幕、背光源液晶显示器，不管是强光下还是夜晚都能够清晰读取测量数椐；仪表显示及输出功能齐全，可显示瞬时流量、流速、累积流量等数据，并具有计算机通讯接口 485。具有 GSM 和 GPRS 无线数据远传功能(可选)公称通径:圆形管道DN100~DN6000(超声型液位计:水深测量 DN<h 范围>2cm;压力性液位计 2DN<h 范围>2cm。DN 是口径大小)矩形管道 宽度≤6m; 深度≤32m', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (284, '雷达流量计', NULL, '武汉德希科技', '#', 14500.00, NULL, NULL, NULL, '测速范围：0.1~20米/秒；测速精度：±0.01米/秒；±1%FS；测速频率：24GHz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (285, '遥测终端机', NULL, '武汉德希科技', '#', 4500.00, NULL, NULL, NULL, '①具有同时连接翻斗式雨量计、水位传感器、高清数字摄像机、同时支持两种通信信道，支持RS-232C、RS-485、SDI-12、0-5V和4-20mA等协议\n②具有大容量FLASH存储，大于8M存储；\n③整机工作状态电流应不大于100mA；\n④在-10°C、45°C、95%（40°C时）三种工作环境条件下各保持4小时\n⑤额定电压恒定为12V，在支流10.2V-14.4V范围能正常工作\n⑥工作温度：-20~+70℃\n⑦湿度：≤95%（+40℃时）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (286, '一体化野外机柜', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '304材质1.0mm厚板不锈钢制防水机箱；尺寸≥0.5×0.4×0.25m(高×宽×深)；内有1.2mm厚镀锌安装板，不含安装板深22cm；门可开启110度以上，门上设防水防尘密封条，内设有接线孔和绑线架；可挂在墙上或立杆上；承重35KG', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (287, '无线通信模块', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '与遥测终RTU为同一品牌；\n工业化GPRS/GSM标准模块，通过RS-232C与RTU连接，GPRS/GSM模块可由RTU操作控制；\n支持GPRS Class10/Class 12和GSM phase 2/2+，理论带宽 85.6Kbps；\n功耗（mA@12V）：≤140mA（工作），≤30mA（空闲）；\n电压范围：+3.3V~+26V；\n工作温度：－25～+60℃', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (288, '蓄电池', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '容量不小于100AH /12V铅酸免维护可充电蓄电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (289, '太阳能电池板', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '功率不小于80W的单晶硅太阳能板；最大工作电压17V，开路电压21V', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (290, '太阳能充电控制器', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '12V/24V自动识别；\n浮充电压13.8V；\n额定充电电流20A；\n过压断开电压：16.0V；\n工作温度：-10-50℃。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (291, '太阳能电源线', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, 'RVV2*1.0', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (292, '太能板支架', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '高强度铝合金Al6005-T5或不锈钢304材质', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (293, '信号电缆', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '屏蔽电缆RVVP4×0.3；DN15镀锌管套护', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (294, '设备安装支架', NULL, '武汉德希科技', '#', 2800.00, NULL, NULL, NULL, '304不锈钢钢管；钢管为直径不小于140mm、壁厚不小于5mm，高度不小于3米。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (295, '避雷器', NULL, '武汉德希科技', '#', 2800.00, NULL, NULL, NULL, '1.额定信号工作电压：12V；\n2.标称放电电流（8/20us）5KA；\n3.响应时间：≤1ns；\n4.外壳防护等级：≥IP20。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (296, '信号避雷器', NULL, '武汉德希科技', '#', 2800.00, NULL, NULL, NULL, '1.工作电压：12V；\n2.被保护脚：1～9脚；\n3.传输速率bit/s：1M；\n4.标称放电电流8/20μs/kA：5；\n5.插入损耗dB：≤0.5dB；\n6.限制电压10/700μsV：≤40。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (297, '避雷针及接地系统', NULL, '武汉德希科技', '#', 2800.00, NULL, NULL, NULL, '包括避雷针、引下线及接地装置；接地地网的接地电阻应满足避雷小于<10Ω，设备接地电阻<4Ω的指标。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (298, '基本水尺', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (299, '水尺零点高程测量', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '水尺零点高程记至1mm，测量要求按四等水准。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (300, '水准点', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '一基，两校', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (301, '水准点高程测量', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '水准点高程从国家三等及以上水准点引测', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (302, '水泥底座', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '基座的尺寸为500mm×500mm×700mm；使用C25混凝土', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (303, '通信费', NULL, '武汉德希科技', '#', 300.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (304, '翻斗式雨量计', NULL, '南水', 'JDZ05-1', 1600.00, NULL, NULL, NULL, '承雨口内径：Φ200mm仪器分辨力：0.5mm（KNS-JDZ05-1型）；0.2mm（KNS-JDZ02-1型）降雨强度测量范围：0.01～4mm/min翻斗计量误差：≤±4%输出信号方式：磁钢—干簧管式接点开关通断信号开关接点容量：DC V≤12V，I≤120mA接点工作次数：1×107次工作环境温度：-10℃～+50℃', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (305, '一体化控制器', NULL, '浩奈尔', 'HE-X2A', 1200.00, NULL, NULL, NULL, '内置12DI/12DO/4AI/2AO,4-20mA,12bit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (306, 'GPRS', NULL, '浩奈尔', '数据远程模块', 600.00, NULL, NULL, NULL, '可支持4G', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (307, '组态软件', NULL, '浩奈尔', '组态软件', 15000.00, NULL, NULL, NULL, '512点，带网桥，远程传输功能', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (308, '花生壳软件', NULL, '浩奈尔', '花生壳软件', 1000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (309, '控制器', NULL, '重庆川仪', '#', 1556.00, NULL, NULL, NULL, '电源/输入/输出：24V UC/24V UC/继电器， 集成以太网接口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (310, '模拟量扩展模块', NULL, '重庆川仪', '#', 1260.00, NULL, NULL, NULL, '模拟量输入模块，电源：12/24VDC，2 AI，输入范围： 0 - 10V 或 0/4- 20mA', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (311, '工业物联网关', NULL, '重庆川仪', '#', 2980.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (312, '控制箱', NULL, '重庆川仪', '#', 2000.00, NULL, NULL, NULL, '含选择开关、继电器、断路器、电源等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (313, '现场安装调试', NULL, '重庆川仪', '#', 8000.00, NULL, NULL, NULL, '原系统改造安装、编程调试', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (314, '工业物联网关', NULL, '重庆川仪', '#', 2980.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (315, '工控机', NULL, '重庆川仪', '#', 5600.00, NULL, NULL, NULL, 'ptiPlex 7050MT 商用台式电脑主机  i7-7700丨8G丨1TB丨集成显卡', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (316, '显示器', NULL, '重庆川仪', '#', 1100.00, NULL, NULL, NULL, '24吋显示器', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (317, '组态软件', NULL, '重庆川仪', '#', 12500.00, NULL, NULL, NULL, 'WINCC RC  128点', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (318, '水质多参数自动在线监测仪（水温、PH、电导率、浊度、ORP、溶解氧）', NULL, 'GH（国弘，中国）MQPC-10，MQ-PH01，     MQ-ORP01，       MQ-Cond01，      MQ-FDO01，       MQ-TURB01', 'HACH SC1000、DPD1R1、D3725E2T、LXV423、9020000、DRD1R5、YAB021', 138000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (319, '氨氮监测仪', NULL, 'GH（国弘，中国） MQ-NH01', 'WTW  AmmoLyt Plus 700 ', 52000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (320, '采配水系统', NULL, '泰豪定制', '#', 21000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (321, '控制单元、数据采集及传输系统', NULL, '泰豪定制', '#', 34000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (322, '4G通讯费（1年）', NULL, '移动通讯', '#', 1200.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (323, '浮台', NULL, '#', '#', 7500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (324, '供电系统', NULL, '晶科、山特', '#', 5600.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (325, '太阳能立杆、机箱、基座', NULL, '康达', '#', 18000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (326, '电源避雷', NULL, '普天湘宜防雷 DXH10-F/3', '#', 150.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (327, '信号避雷', NULL, '普天湘宜防雷QFL10-CH4/24L', '#', 150.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (328, '变送器', NULL, 'E+H', '变送器', 26064.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (329, '浊度', NULL, 'E+H', '浊度', 17699.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (330, '电缆', NULL, 'E+H', '电缆', 3743.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (331, 'pH', NULL, 'E+H', 'pH', 3084.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (332, '余氯', NULL, 'E+H', '余氯', 15668.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (333, '水质在线监测仪', NULL, '雷磁', ' ', 200000.00, NULL, NULL, NULL, '是一款新型多参数、宽量程的水质监测仪器，可用于地表水、地下水、水源水、饮用水、污水排放口、海洋等不同水体的水质在线及便携监测。监测参数包括pH、浊度、电导率（盐度、总溶解固体、电阻）、溶氧、温度、氨氮', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (334, 'RTU设备(含DTU、避雷模块、天线) ', NULL, '雷磁', ' ', 6685.00, NULL, NULL, NULL, '1、具有GSM/GPRS/CDMA1X、北斗卫星通讯方式；2、支持多中心工作模式，可向至少6个中心站发送数据，每个中心可拥有两种通信信道且互为备份；3、具有大容量32MB FLASH存储，雨量数据至少可以存储5年；4、雨量计分辨率任意可选，采用增量控制、定时控制两种数据发送机制；5、支持低功耗、永在线二种电源管理模式；6、具有定时自检发送、死机自动复位、站址设定、掉电数据保护、实时时钟校准；7、可接受分中心管理，与分中心实现双向通信；支持远程诊断、远程设置、远程维护等；8、可实现人工置数以及对测站的配置；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (335, '电源控制器', NULL, '#', '#', 248.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (336, '信号避雷器  ', NULL, '#', '#', 287.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (337, '箱体、水泵、设备配件', NULL, '#', '#', 4200.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (338, '防雷接地', NULL, '#', '#', 1000.00, NULL, NULL, NULL, '30米', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (339, '防雷器', NULL, 'towe', 'TPS-D10-230V', 200.00, NULL, NULL, NULL, '二合一防雷', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (340, '端子、空开等辅料', NULL, '#', '#', 1428.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (341, '蓄电池', NULL, '#', '#', 750.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (342, '太阳能电池板', NULL, '#', '#', 1100.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (343, '太阳能电池板支架', NULL, '#', '#', 300.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (344, 'SIM卡', NULL, '联通', '#', 99.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (345, '线缆', NULL, '#', '#', 50.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (346, '电源控制器', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '12V/10A', 248.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (347, '信号避雷器  ', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', 'QFL06-MG', 287.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (348, '箱体、设备配件', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (349, '端子、空开等辅料', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 1428.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (350, '蓄电池', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '20AH', 260.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (351, '太阳能电池板', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '20W', 430.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (352, '太阳能电池板支架', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 136.70, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (353, '固定杆', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 1976.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (354, '防雷接地装置', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '30米', 470.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (355, '防雷接地装置', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '50米', 649.90, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (356, '服务器', NULL, '浪潮', 'NF5270M4', 20000.00, NULL, NULL, NULL, '2609V4*2  16G*4   1TSATA*2 主板集成双口千兆网卡 550W单电 导轨  ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (357, '存储服务器', NULL, '大华', 'DH-EVS50A16S-R', 9100.00, NULL, NULL, NULL, '1、处理器：64位多核处理器，嵌入式LINUX系统,4G内存，可扩展至128G SSD\n2、支持IPC视频流直存，支持客户端直取视频流\n3、支持ONVIF、GB28181等协议\n4、接口要求：2个千兆数据网口、1个RS232串口，具有2个电源模块，能独立进行工作\n5、3U精细化机箱，支持16块硬盘,硬盘支持配置 1T、2T、3T、4T、5T、6T，8T\n6、支持以太网TCP/IP协议，支持SIP、RTSP、RTP、RTCP等网络协议，并支持IP组播技术\n7、支持Raid0、Raid1、Raid3、Raid4、Raid10、Raid50、Raid60、SRAID、JBOD\n8、可自动识别磁盘容量，可划分多个容量不同的数据存储空间\n9、支持同时进行1024Mbps视（音）频码流存储，1024Mbps视（音）频码流转发、384Mbps视（音）频码流回放；\n10、本次配置64T硬盘空间；\n11、★最多可支持同时损坏8块盘时所属RAID存储数据不丢失，可以正常读写（提供公安部有效检测报告复印件加盖厂商公章佐证）\n12、★支持1/16、1/8、1/4、1/2、2、4、8、16、32、64、128、256倍速录像回放；（提供公安部有效检测报告复印件加盖厂商公章佐证）\n13、★设备可对硬盘进行加密和解密；（提供公安部有效检测报告复印件加盖厂商公章佐证）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (358, '视频质量诊断服务器', NULL, '大华', 'DH-NMS8A100-LX-W/1000', 16000.00, NULL, NULL, NULL, '1、支持对摄像机进行轮巡检测分析，对视频的清晰度、亮度、对比度、颜色、运动、噪声、相似度等进行量化，并对出现的视频模糊、高亮异常、低亮异常、偏色、低对比度异常、视频抖动运动、噪声过大、画面黑白、条纹干扰、视频丢失、视频冻结、视频遮挡等检测\n2、支持一键配置诊断，将系统中所有通道自动配置到诊断预案中；\n3、支持多个平台的状态检测，能够自动同步平台中的设备、服务、组织资源; 内置1000路视频质量诊断功能\n4、支持一键检测、生成检测报表操作,支持问题设备清单导出;\n5、支持在电子地图上直接报修、设备报备、报修历史查询、录像回放、实时视频播放和实时抓图\n6、支持配置报警预案，通道离线、组织在线率过低和平台服务状态事件联动短信和邮件\n7、支持录像完整率检测、在线状态检测、IPSAN磁盘状态检测；\n8、支持私有协议设备或者第三方设备硬盘状态检测，显示单盘、RAID盘状态、容量、电源状态、主备状态、网口状态等相关信息\n9、支持电子流报修系统，规范维修流程，实现无纸化办公;支持实时视频播放、录像回放等基本视频监控功能\n10、支持摄像机在线数统计表、视频质量统计表、摄像头在线率统计表、卡口设备状态统计表、设备在线数统计表、设备故障次数统计表、设备维修及时率统计表，支持导出EXCEL、PDF、WORD,打印预览,Flash、Applet打印方式,支持PNG,BMP,JPG图片格式导出\n11、支持对离线、点播失败、抓图失败、无信号通道巡检；支持重检失败点、全部重检\n12、支持按照时间、录像保存天数和关键字进行查询录像，查询结果包含通道的录像状态、录像保存天数、当天录像情况，且支持查询结果导出EXCEL；\n13、具有支持对摄像机、硬盘录像机、编码器、网络设备、矩阵设备、智能设备等设备管理、报警管理、统计分析等功能\n14、每个监控点建立详细、完备的点位“户籍档案”；\n15、支持点位状态统计，支持正常、维修、断电、拆迁等数量和占比统计，支持统计总点位情况', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (359, '硬盘（4T）', NULL, '希捷', 'ST4000NM0035', 1100.00, NULL, NULL, NULL, '4T企业级', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (360, '网络控制键盘', NULL, '大华', 'DH-NKB5000A', 10150.00, NULL, NULL, NULL, '支持本地液晶屏和4路HDMI同时输出;\n支持支持H.265、H.264、H264H、H264B、MJPEG、SVAC、SmartH.264 、非标码流等标准网络视频流解码\n支持G711、PCM标准音频\n支持1/4/9/16等画面分割切换\n最大支持4路4K或者16路1080P同时本地解码显示\n双网卡，支持10M/100M/1000M自适应以太网接口\n支持wifi无线接入\n2个USB2.0，2个USB3.0，4路报警输入输出硬件预留\n10.1英寸 1280*800电容屏/液晶屏\n支持4维操纵杆，控制云台方向及变倍\n【预览】支持DVR、NVR、EVS、IPC、SD等编码设备预览或者HDMI输出到大屏\n【预览】支持抓图、录像、云台控制；\n【设备管理】支持至少3万个通道添加到键盘\n【电视墙】支持解码器、大屏拼接器、矩阵等解码器设备进行电视墙控制\n【电视墙】支持电视墙布局配置，包括新建、编辑、保存电视墙\n【电视墙】支持任务，包括加载、新建、编辑、保存任务\n【电视墙】支持切分割、切换视频源、关闭通道、关闭窗口、云台控制；\n【平台】支持通过平台控制解码器、大屏拼接器、矩阵等解码设备在平台端建立的电视墙\n【平台】支持任务，包括加载、新建、编辑、保存任务 \n【平台】支持切分割、切换视频源、关闭通道、关闭窗口、云台控制；\n【回放】支持键盘硬盘录像机、U盘等录像在键盘本地进行回放\n【回放】支持快放16倍、慢放1/16、进度条控制、录像下载到本地\n【扩展】支持485方式PelcoD、PelcoP、SD1协议去控制球机', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (361, '高清解码器', NULL, '大华', 'DH-NVS0404DH', 12000.00, NULL, NULL, NULL, '支持本地液晶屏和4路HDMI同时输出;\n支持支持H.265、H.264、H264H、H264B、MJPEG、SVAC、SmartH.264 、非标码流等标准网络视频流解码\n支持G711、PCM标准音频\n支持1/4/9/16等画面分割切换\n最大支持4路4K或者16路1080P同时本地解码显示\n双网卡，支持10M/100M/1000M自适应以太网接口\n支持wifi无线接入\n2个USB2.0，2个USB3.0，4路报警输入输出硬件预留\n10.1英寸 1280*800电容屏/液晶屏\n支持4维操纵杆，控制云台方向及变倍\n【预览】支持DVR、NVR、EVS、IPC、SD等编码设备预览或者HDMI输出到大屏\n【预览】支持抓图、录像、云台控制；\n【设备管理】支持至少3万个通道添加到键盘\n【电视墙】支持解码器、大屏拼接器、矩阵等解码器设备进行电视墙控制\n【电视墙】支持电视墙布局配置，包括新建、编辑、保存电视墙\n【电视墙】支持任务，包括加载、新建、编辑、保存任务\n【电视墙】支持切分割、切换视频源、关闭通道、关闭窗口、云台控制；\n【平台】支持通过平台控制解码器、大屏拼接器、矩阵等解码设备在平台端建立的电视墙\n【平台】支持任务，包括加载、新建、编辑、保存任务 \n【平台】支持切分割、切换视频源、关闭通道、关闭窗口、云台控制；\n【回放】支持键盘硬盘录像机、U盘等录像在键盘本地进行回放\n【回放】支持快放16倍、慢放1/16、进度条控制、录像下载到本地\n【扩展】支持485方式PelcoD、PelcoP、SD1协议去控制球机', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (362, '监控综合管理平台', NULL, '大华', 'DH-DSS70A16S2-D', 24000.00, NULL, NULL, NULL, '1、嵌入式LINUX系统，集视频监控、存储、转发、解码上墙、录像回放、电子地图、报警管理等多功能与一体的综合监控管理平台。\n2、支持16块SATA盘，支持SSD盘，支持风扇、存储盘的热插拔\n3、具备7寸交互式彩色液晶前面板，支持系统信息显示和操作配置\n4、性能：多址模式下支持接入、存储、转发各800Mbps；转发和存储性能相互独立；绑定模式下支持接入、存储、转发各1600Mbps；转发和存储性能相互独立；\n5、支持查看服务器运行状态、设备运行状态、用户状态；\n6、具备4个千兆网口，支持网卡绑定，多址，容错三种模式，支持多网段及内外网接入\n7、支持发送RTSP、RTMP协议实时码流,支持进行flv、avi、mp4格式的视频预览，支持HLS取视频流\n8、支持iphone,ipad,android手机客户端\n9、支持Raid功能，包括Raid0、Raid1、Raid5、Raid6、Raid10、Raid50、Raid60、JBOD，支持全局热备和本地热备\n10、实时预览支持1/4/6/8/9/13/16/20/25/36多分屏画面显示，支持画面比例八档调整：满屏,1:1,16:9,4:3,5:4,4:5,3:4,9:16\n11、支持鱼眼校正，支持壁装、顶装、地装多种模式\n12、支持批量修改设备的密码，IP及所属组织\n13、支持鱼球联动，点击鱼眼画面，能联动球机自动旋转至点击区域并聚焦\n14、支持报警联动，支持语音播报方式报警\n15、支持光栅图级联，支持鹰眼图浏览，支持即时模式视频上墙，支持融合开窗漫游\n16、支持智能应用功能，支持行为分析、人数统计等智能化功能接入\n18、支持多平台上下级联\n19、支持网络远程维护，支持系统备份还原\n20、★支持N+M集群，支持平台上下6级级联。支持磁盘负载均衡工作，支持存储配额设置，淡忘存储，将对指定天数的录像进行抽帧存储，支持小文件存储（以公安部有效检验报告佐证）\n21、★支持视频抢占，支持视频分享，支持零通道编码预览；支持自动切换主辅码流。支持视频上墙轮巡计划，可根据时间点或时间间隔进行自动切换；支持上墙回显，上墙分割窗口显示视频通道的当前画面，仅显示一帧画面；支持添加、删除、修改轮巡任务，快速启动轮巡任务；支持定时开启/修改轮巡计划，并导入、导出数据。（以公安部有效检验报告佐证）\n22、★支持资源重配功能，可以重新分配设备资源；支持白名单设置；支持数据迁移；支持初始用户名密码强制修改。（以公安部有效检验报告佐证）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (363, '55寸LCD液晶拼接屏', NULL, '大华', 'DHL550UCM-ESA', 4500.00, NULL, NULL, NULL, '1、屏幕尺寸55寸，LED光源；\n2、分辨率：1920×1080，双边拼缝≦3.5mm，响应时间≦8ms；功耗≦100W；\n3、亮度不低于500cd/m2；分辨率：1920×1080，水平可视角度≧178°，垂直可视角度≧178°，水平分辨力≥800TVL，亮度鉴别等级≥10级\n4、输入接口支持：BNC、VGA、DVI、HDMI；输出接口支持：BNC；\n5、显示单元及拼接墙具有良好的散热风道设计，通过内置智能散热系统及时的将热量快速散发，保证整机的使用寿命；\n6、领先的智能巡航技术，智能设置显示单元的信号源，可实现信号源自动切换，并且可自动巡航显示各通道的信号源；\n7、显示单元支持对某些重要信号通道提供冗余保护，提高稳定安全性；\n8、显示单元平均无故障工作时间MTBF≧80000小时；\n9、★液晶显示单元采用分体式结构设计，支持屏体与驱动单元分开安装及拆卸，整体美观大方的同时最大程度降低项目后期运营维护成本及难度（提供第三方权威机构复印件加盖厂商公章）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (364, '拼接支架（含线缆）', NULL, '大华', 'DHL-DZ-55', 1500.00, NULL, NULL, NULL, '大屏底座含支架', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (365, '输入板卡', NULL, '大华', 'VEC0404HD-M70', 5500.00, NULL, NULL, NULL, 'DVI-I接口；H.264/MPEG4；单板4路1080P，支持1080P/720P/UXGA/SXGA+/SXGA/XGA/SVGA/VGA分辨率', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (366, '输出板卡', NULL, '大华', 'VDC0605H-M70', 10800.00, NULL, NULL, NULL, '6路HDMI视频接口\n支持8路4096*2160@25fps，8路3840*2160@30fps ，32路1080p@30fps（H.264、H.265），72路720p@30fps，150路D1解码\n支持32路1080P的H.265解码\n支持8路1080P的SVAC解码\n支持24路非标D1码流解码', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (367, '拼接解码一体机', NULL, '大华', 'DH-M70A-4U-E', 12000.00, NULL, NULL, NULL, '1、标准19\"机架设计，机箱高度不超过4U，槽位不少于12个；\n2、支持刀片式音视频图像处理板，可根据需要配置不同数量的输入板和输出板，最大可以配置1块主控板、1块控制板、10块业务板，板卡支持热插拔；\n3、视频输入板支持：SDI接口(单板8路)、BNC接口(单板32路)、DVI/HDMI/VGA接口(单板4路)，视频输出接口支持：DVI/HDMI/VGA接口(单板4路)；\n4、内置至少2个千兆网络接口，支持网络交换功能，流媒体网关，网络隔离功能，具有多网口绑定功能；\n5、具备RS232串口，通过串口可对大屏进行手动开关、屏幕调节、定时开关机控制；\n6、处理器有效带宽800Gbps，其中上行、下行有效带宽各自为400Gbps；\n7、输入卡要求有VGA信号自动校正功能；\n8、单块解码板最高可支持不低于：128 路704×574@30fps，或64路1280×720@30fps，或32路1920×1080@30fps（H.264和H.265），或24路2048×1536@25fps，或8路3840×2160@16fps，或6路4096×2160@25fps，或8路4000×3000@15fps的视频解码能力；\n9、设备具备解码功能，分辨率支持：1200W/800W/500W/300W/1080P/UXGA/720P/4CIF/CIF/QCIF，支持解码H.265码流；\n10、支持监控视频解码上墙和计算机桌面视频解码上墙，输出可混合多种视频输入源，支持实时/流畅的解码策略可调节功能，输出板分辨率最大为4096*2160；\n11、DVI、VGA、HDMI输出支持倍帧畅显功能，支持25或30帧的监控视频帧率倍化为50或60帧输出；\n12、设备主控板具备码流接收转发功能，最大支持100路（1080P分辨率、25帧/s、8Mbps）码流的接收转发能力；\n13、支持ISCSI、IPSAN等存储方式，支持录像查询、回放、下载，支持录像直接上墙回放；\n14、支持开窗、漫游、漂移、改变形状等功能，单块板卡具备≥32个窗口的开窗性能，支持在底图上开窗、漫游；\n15、具有多网口绑定功能，仅需一个IP地址即可实现对IP、模拟、SDI设备的视音频数据的接入、转发和存储；\n16、具备画面分割显示功能，按1、4、9、16等方式对画面进行分割；\n17、★支持双电源冗余。具有2组风扇，每组6个风扇（支持热插拔、冗余；支持吹和抽两种模式同时工作)。主控板具有3个USB接口，1个VGA输出口。支持通过主控板VGA接口外接显示屏幕，可实时显示机箱温度、风扇转速、子板信息、电源模块信息、网络使用率信息、CPU/内存使用率信息等，实时监测机箱运作情况；支持通过本地界面进行业务配置。（提供公安部有效检测报告复印件加盖厂商公章佐证）\n18、★支持通过网络将计算机桌面、应用窗口或自定义矩形区域投射到电视墙上，最大支持投射3840×2160分辨率的桌面；单台计算机最多可投射8个任务窗口。（提供公安部有效检测报告复印件加盖厂商公章佐证）\n19、★支持接入分辨率为8640×3840、4000×3000、2048×1536、1920×1080、1280×720、704×576的视频。支持8640×3840、4000×3000、3840×2160、2048×1536、1920×1080、1280×720、704×576等解码分辨率（提供公安部有效检测报告复印件加盖厂商公章佐证）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (368, '值班室控制台', NULL, '金盾', '4联', 10000.00, NULL, NULL, NULL, '4联', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (369, '值班室电脑', NULL, '联想', 'I5，4G内存，1T硬盘，20英寸液晶显示', 4500.00, NULL, NULL, NULL, 'I5，4G内存，1T硬盘，20英寸液晶显示', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (370, '辅材及基础布线', NULL, '定制', '#', 20000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (371, '机柜', NULL, '金盾', 'ND6842', 1900.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (372, '分控中心电脑', NULL, '联想', 'I5，4G内存，1T硬盘，20英寸液晶显示', 4500.00, NULL, NULL, NULL, 'I5，4G内存，1T硬盘，20英寸液晶显示', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (373, '光模块', NULL, '大华', 'GSFP-1310-20-SMF', 222.00, NULL, NULL, NULL, '单模 双纤双向,1.25G, 1310nm,20km, -40~85度,3.3V,LC 接口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (374, '接入交换机', NULL, '大华', 'DH-IS3100-2GT1GF-DC', 390.00, NULL, NULL, NULL, '非网管二层千兆安防工业交换机，2*100/1000Mbps RJ45，1*1000Mbps SFP，工作宽温：-30至+75°，DC12-36V供电（双冗余），IP40，导轨&壁装', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (375, '核心交换设备', NULL, '锐捷', 'RG-S7805C', 42332.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (376, '交换设备', NULL, '锐捷', 'RG-S7805C', 42332.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (377, '防火墙', NULL, '中科网威', 'ANYSEC-F6600', 18000.00, NULL, NULL, NULL, 'F6600是一款标准1U机架式下一代防火墙安全网关。基本配置包括6个1000M以太网接口，采用Intel X86架构高速网络处理器。适合300M出口带宽，防火墙三层吞吐率6Gbps、七层吞吐率800Mbps、最大并发会话数120万、最大防火墙策略数10240条。主要功能包括防火墙、IDS/IPS入侵检测防御、漏洞攻击防护；病毒木马、恶意代码、间谍软件、DDOS/DOS攻击防御；对内网应用安全检测防护，如应用扫描、病毒检测防护、服务器防护、Web应用防护、URL过滤、应用特征检测识别、流量带宽限制、黑白名单管理、多线路负载均衡等。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (378, '数据库安全设备', NULL, '#', '#', 150000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (379, '上网行为管理软件', NULL, '中科网威', 'ANYSEC-U6600', 15000.00, NULL, NULL, NULL, 'U6600是一款标准1U机架式流控/上网行为管理安全网关，基本配置包括6个1000M以太网接口，1个管理口，采用Intel X86架构高速网络处理器。适合300M出口带宽，最大吞吐量1Gbps、最大并发会话数500,000个，最大安全策略数4096条。主要功能包括VPN防火墙、多线路负载均衡、上网行为管理、流量监控、带宽管理、应用识别控制、访问控制、丰富URL数据库、搜索/网页/邮件/关键字/IM聊天审计过滤、P2P/HTTP/多线程/流媒体/WEB视频/网络游戏控制、多用户认证接入、黑白名单管理、统计分析报表等功能。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (380, '防病毒软件', NULL, '#', '#', 20000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (381, '监控中心装修', NULL, '#', '#', 38000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (382, '巡河终端（含一年数据费）', NULL, '#', '#', 4800.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (383, '实时监控服务器', NULL, 'Dell', '#', 112000.00, NULL, NULL, NULL, '4 路机架式服务器，带操作系统', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (384, '历史数据库服务器', NULL, 'Dell', '#', 112000.00, NULL, NULL, NULL, '4 路机架式服务器，带操作系统', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (385, '数据接口及通信服务器', NULL, 'Dell', '#', 63400.00, NULL, NULL, NULL, '2 路机架式服务器，带操作系统', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (386, '工程师操作站', NULL, 'Dell', '#', 12100.00, NULL, NULL, NULL, '工控机 CPU：i7；内存：16GB；硬盘：128GB SSD+1TB SATA；25 寸 2K LED 液晶', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (387, '工程师培训站', NULL, 'Dell', '#', 12100.00, NULL, NULL, NULL, '工控机 CPU：i7；内存：16GB；硬盘：128GB SSD+1TB SATA；25 寸 2K LED 液晶', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (388, 'Oncall 工作站', NULL, 'Dell', '#', 12100.00, NULL, NULL, NULL, '工控机 CPU：i7；内存：16GB；硬盘：128GB SSD+1TB SATA；25 寸 2K LED 液晶', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (389, '监控平台软件 6 万点', NULL, 'KingScada Standard Development  Full, 60000 Points', '#', 24750.00, NULL, NULL, NULL, '完全版：包括开发工具、组态工具、应用数据库、权限管理等，部署在实时监控服务器。需要进行进行大屏展示，需具备无极缩放功能', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (390, 'CS 客户端授权', NULL, 'KingScada Standard Client  ', '#', 1760.00, NULL, NULL, NULL, '部署工程师操作站 3 台，工程师培训站 1 台，此处为中心站，可以建立或导出数据模型、图形模型；方便分站调用，保持画面风格一致。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (391, '实时/历史数据库软件 6 万点', NULL, 'KingHistorian\n60000 Points', '#', 231000.00, NULL, NULL, NULL, 'UNIX/Linux/Windows 平台，不依赖任何第三方关系库的工业实时/历史数据库', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (392, '监控应用系统软件开发及实施', NULL, '#', '#', 880000.00, NULL, NULL, NULL, '通过监控平台进行二次开发,包含主备调实时服务器监控系统的开发以及主备调操作站以及培训站的开发。包含计算机监控指令分解系统的开发。部署在主备调', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (393, '胶东调水段系统接入整合', NULL, '#', '#', 110000.00, NULL, NULL, NULL, '包括对各分中心的界面风格及数据结构统一', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (394, '引黄济青段系统接入整合', NULL, '#', '#', 110000.00, NULL, NULL, NULL, '包括对各分中心的界面风格及数据结构统一', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (395, '数据通信管理软件', NULL, 'KingScada WEB发布100用户', '#', 66000.00, NULL, NULL, NULL, '与其他系统提供数据，含中心信息发布 100 套及以上 BS客户端授权，具有网络发布功能，部署在数据通讯服务', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (396, '便携机', NULL, 'Dell', '#', 9900.00, NULL, NULL, NULL, 'CPU：i5；内存：16GB；硬盘：256GB SSD+1TB SATA；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (397, '专业工作台', NULL, '#', '#', 5000.00, NULL, NULL, NULL, '6 工位', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (398, '网络激光打印机', NULL, '佳能', '#', 18000.00, NULL, NULL, NULL, 'A3 彩色 打印/复印/扫描一体', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (399, '无人机(含两人飞手培训，一年保险)', NULL, '#', '#', 128000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (400, '无人机信息传输终端', NULL, '#', '#', 25000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (401, '无人机', NULL, '大疆', 'M200', 100000.00, NULL, NULL, NULL, '飞行载重最大起飞重量：6140g最大载重(小电池)：2340g最大载重(大电池)：1610g悬停精度垂直:±0.5m，下视启用±0.1m水平:±1.5m，下视启用±0.3m旋转角速度俯仰轴：300°/s；航向轴：150°/s升降速度最大上升速度：P模式/A模式/S模式：5m/s最大下降速度：垂直：3m/s飞行速度最大水平飞行速度：P模式：61.2km/hA模式：82.8km/hS模式：82.8km/h飞行高度3000m飞行时间最长飞行时间（空载，普通容量电池）：27min最长飞行时间（空载，大容量电池）：38min纠错轴距643mm动力系统DJI 3515螺旋桨1760S', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (402, '基础制作 包含水泥沙子等', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '1200*1200*1200mm', 1730.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (403, '地笼 铁板加螺纹钢焊接', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '底板800*800*800mm', 290.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (404, '吊车、货车、机械、运输费用等', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 1600.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (405, '安装施工调试费', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 2750.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (406, '直流电源电缆', NULL, '#', '#', 186.00, NULL, NULL, NULL, 'RVV 2×1.5mm²，300/300V', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (407, '流量计信号电缆', NULL, '#', '#', 30.00, NULL, NULL, NULL, '4芯电缆+1芯导气管', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (408, '接地线', NULL, '#', '#', 10.00, NULL, NULL, NULL, 'BVR 2.5mm²，450/750V', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (409, '流量计固定支架', NULL, '#', '#', 1800.00, NULL, NULL, NULL, '定制（不锈钢）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (410, 'PVC管或镀锌管', NULL, '#', '#', 40.00, NULL, NULL, NULL, 'DN32线管', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (411, '安装支架', NULL, '#', '#', 140.00, NULL, NULL, NULL, '机箱支架、太阳能板支架', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (412, '立杆及立杆基础', NULL, '#', '#', 2000.00, NULL, NULL, NULL, '地面3米，含基础地笼', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (413, '顶面刷防尘漆', NULL, '双虎', '#', 18.00, NULL, NULL, NULL, '环氧树脂。防尘处理三遍', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (414, '吊顶', NULL, '欧陆', '#', 88.00, NULL, NULL, NULL, '600*600*1.0mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (415, '地面刷防尘漆', NULL, '双虎', '#', 18.00, NULL, NULL, NULL, '环氧树脂。防尘处理三遍', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (416, '防静电活动地板(陶瓷面）', NULL, '朝晖', '#', 358.00, NULL, NULL, NULL, '\n600×600 防静电陶瓷面活动地板 架空高度300', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (417, '乳胶漆', NULL, '华润', '#', 22.00, NULL, NULL, NULL, '二遍', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (418, '不锈钢100高踢脚线', NULL, '国产', '#', 250.00, NULL, NULL, NULL, '不锈钢', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (419, '钢质防火门', NULL, '国产', '#', 3200.00, NULL, NULL, NULL, '1500*2400', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (420, '钢质防火门', NULL, '国产', '#', 2400.00, NULL, NULL, NULL, '1000*2400', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (421, '市电配电箱', NULL, '国产', '#', 6800.00, NULL, NULL, NULL, '50KW配电箱，输入及输出空开', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (422, 'UPS配电箱', NULL, '国产', '#', 4200.00, NULL, NULL, NULL, '20KW配电箱，UPS输入及输出空开', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (423, '照明配电箱PZ1～3', NULL, '国产', '#', 400.00, NULL, NULL, NULL, '5KW配电箱，输入及输出空开', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (424, '阻燃电缆', NULL, '宝胜', '#', 138.00, NULL, NULL, NULL, '型号：ZA-RVV-1kv\r\n规格：4*35+1*16\r\n\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (425, '阻燃电缆', NULL, '宝胜', '#', 28.00, NULL, NULL, NULL, '型号：WDZA-YJY-1kv\r\n规格：5*6\r\n\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (426, '阻燃电缆', NULL, '宝胜', '#', 56.00, NULL, NULL, NULL, 'WDZA-YJV-5*10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (427, '阻燃电缆', NULL, '宝胜', '#', 24.00, NULL, NULL, NULL, 'WDZA-YJV-3*6\r\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (428, '插座线', NULL, '赣昌', '#', 3.80, NULL, NULL, NULL, 'BVR-4', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (429, '照明线', NULL, '赣昌', '#', 2.80, NULL, NULL, NULL, 'BVR-2.5', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (430, '接地线', NULL, '赣昌', '#', 32.00, NULL, NULL, NULL, 'BVR-35', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (431, '接地线（每卷100米）', NULL, '赣昌', '#', 5.60, NULL, NULL, NULL, 'BVR-6', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (432, '电子镇流器高效无眩光格栅灯', NULL, '松下', '#', 312.00, NULL, NULL, NULL, '3*36W', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (433, '出入口指示灯', NULL, '国产', '#', 134.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (434, '插座', NULL, '国产', '#', 26.00, NULL, NULL, NULL, '二、三孔插座', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (435, '翘板开关', NULL, '国产', '#', 18.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (436, '静电泄放接地线', NULL, '国产', '#', 54.00, NULL, NULL, NULL, '100mm*0.3mm铜箔', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (437, '接地铜排', NULL, '国产', '#', 95.00, NULL, NULL, NULL, '30*3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (438, '等电位端子箱', NULL, '国产', '#', 426.00, NULL, NULL, NULL, '等电位接地箱', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (439, '12匹空调', NULL, '美的', '#', 42000.00, NULL, NULL, NULL, '多联机空调、一拖四', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (440, '新风机', NULL, '沐风', '#', 4400.00, NULL, NULL, NULL, '新风量：600m3/h，\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (441, '外墙防雨百叶', NULL, '国产', '#', 200.00, NULL, NULL, NULL, '300*300MM', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (442, '0.75mm镀锌风管，新风管道', NULL, '国产', '#', 90.00, NULL, NULL, NULL, '300*250mm、0.75mm镀锌风管', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (443, '格栅风口', NULL, '国产', '#', 120.00, NULL, NULL, NULL, '250*250MM', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (444, 'UPS主机', NULL, 'GA', '#', 32000.00, NULL, NULL, NULL, '三进三出，Advent-M10 10KVA模块两个、', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (445, '蓄电池（30分钟延时）', NULL, 'GA', '#', 620.00, NULL, NULL, NULL, '12V 65AH', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info` VALUES (446, '电池柜', NULL, '国产', '#', 800.00, NULL, NULL, NULL, '含电池开关箱、电池连接线、输入输出电缆及厂家开机费（20KVAUPS用）C-16', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for th_product_equipment_info_copy1
-- ----------------------------
DROP TABLE IF EXISTS `th_product_equipment_info_copy1`;
CREATE TABLE `th_product_equipment_info_copy1`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `equipment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备类型',
  `quota` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作总额度',
  `brand` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备品牌',
  `type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备规格型号',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '设备单价',
  `linkmen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `other_telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他联系方式',
  `equipment_param` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备参数',
  `bz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `update_by` datetime(0) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 446 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司产品设备信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of th_product_equipment_info_copy1
-- ----------------------------
INSERT INTO `th_product_equipment_info_copy1` VALUES (1, 'RTU设备(含DTU、避雷模块、天线) ', 'RTU', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', 'WRU-2000', 6685.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (2, 'RTU设备(含DTU、避雷模块、天线) ', 'RTU', NULL, '唐山柳林MGTR-W4040', '唐山柳林MGTR-W4040', 5000.00, NULL, NULL, NULL, '1、RTU生产厂家要求有质量管理体系认证，环境管理体系认证，职业健康安全管理体系。\n2、RTU同时通过《水资源监测数据传输规约》V1.2(SZY206-2016)规约符合性测试\n全项通过SL651-2014《水文监测数据通讯规约》规约符合性测试\nSL/T180-2015《水文自动测报系统设备  遥测终端机》\n3、获得CE证书\n4、连续三年入选全国水利重点推荐名录 \n5、RTU采集控制器获得计算机软件著作权\n6、品牌获得无线通讯设备管理嵌入式软件\n7、本项目需要提供成产厂家的授权及售后服务承诺函\n8、参数要求：\n①　高集成度：CPU 、WIFI、蓝牙、定位、4G通讯于一体\n②　采用linux操作系统，嵌入式数据库，处理器不低于ARM9。\n③　支持HTTP、HTTPS（GET POST）*方式将采集的各类仪表数据提交至指定服务器数据库，无需软件平台解码，避免一切对接障碍。\n④　支持MQTT即时通讯协议。\n⑤　支持采集标准USB口协议和RS485总线的图像采集设备。\n⑥　支持水资源和水文应用协议。\n⑦　既可以DC12V_24V供电，也可以采取AC220V供电，电源为全隔离电源。\n⑧　4路485通讯口\n⑨　2路继电器输出\n⑩　8路开关量输出（光电隔离）\n⑪　8路开关量输入（光电隔离，高速脉冲计量）\n⑫　7路4~20mA输入\n⑬　1路0~15V输入，便于监测现场蓄电池电压\n⑭　1路4~20mA 模拟量输出\n⑮　1路100M 网络口\n⑯　1路USB接口\n⑰　嵌入GPS定位模块，蓝牙模块，WIFI模块\n⑱　内部存储：8GB EMMC+8GB LPDDR3 \n⑲　拓展存储卡功能：实测支持32GB容量SD卡扩展，可保存图像采集历史数据与数据库数据。\n⑳　Wifi功能：支持智能手机通过Wifi热点连接设备，并推送实时监测界面和巡检签到界面。\n21　支持LORA扩频传输功能，可以和仪表设备进行短距离无线通讯。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (3, '智能型星光球摄像机', '视频监控', NULL, '海康威视DS-2DF8225INC-AD', 'AXIS Q6155-E', 5300.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (4, '硬盘录像机', '视频监控', NULL, '海康威视DS-7708N-E4/GLE', 'AXISN8-Z MK2', 1680.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (5, '监控级硬盘', '视频监控', NULL, '海康', '希捷ST4000VX000-520', 800.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (6, '4G通讯费（1年）', '视频监控', NULL, '移动通讯', '#', 1200.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (7, '市电供电系统', '视频监控', NULL, '泰豪定制', '#', 10000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (8, '立杆、机箱', '视频监控', NULL, '康达', '凯雷', 3800.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (9, '监控基座', '视频监控', NULL, '康达', '#', 2000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (10, '电源避雷', '视频监控', NULL, '普天湘宜防雷DXH10-F/3', '普天湘宜防雷DXH10-FA/2W30', 150.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (11, '信号避雷', '视频监控', NULL, '普天湘宜防雷QFL10-CH4/24L', '普天湘宜防雷QFL10-CH4/24L', 150.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (12, '避雷接地', '视频监控', NULL, '康达', '#', 200.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (13, '安装辅材', '视频监控', NULL, '康达', '#', 500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (14, '200W红外球机', '视频监控', NULL, '大华', 'DH-SD-6C3223UE-HN', 1850.00, NULL, NULL, NULL, '23倍光学变倍，16倍数字变倍，支持H.265编码，实现超低码流传输，信噪比达到55dB，实现宽动态范围监控，室外球达到IP66防护等级，6000V防雷、防浪涌和防突波保护', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (15, '接入交换机', '视频监控', NULL, '大华', 'DH-IS3100-2GT1GF-DC', 390.00, NULL, NULL, NULL, '非网管二层千兆安防工业交换机，2*100/1000Mbps RJ45，1*1000Mbps SFP，工作宽温：-30至+75°，DC12-36V供电（双冗余），IP40，导轨&壁装', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (16, '核心交换机', '视频监控', NULL, '大华', 'DH-S5500-24GF4XF', 4500.00, NULL, NULL, NULL, 'L3企业级路由交换机，24*100/1000Base-X SFP光口，8*10/100/1000 Base-T RJ45电口(Combo)4*1000/10000Base-X SFP+光口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (17, '企业级硬盘', '视频监控', NULL, '希捷', 'ST4000VM000', 780.00, NULL, NULL, NULL, '4000G；5900RPM；64M；SATA ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (18, 'NVR', '视频监控', NULL, '大华', 'DH-NVR608-32-4KS2', 2780.00, NULL, NULL, NULL, '工业级嵌入式微控制器；嵌入式Linux实时操作系统；网络协议IPv4、IPv6、HTTP、UPnP、NTP、SNMP、PPPoE、DNS、FTP、ONVIF；网络视频接入32路；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (19, '固定杆', '视频监控', NULL, '#', '#', 2000.00, NULL, NULL, NULL, '3米', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (20, '信号避雷器', '视频监控', NULL, '#', '#', 290.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (21, '箱体、设备配件', '视频监控', NULL, '#', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (22, '端子、空开等辅料', '视频监控', NULL, '#', '#', 1500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (23, '防雷接地装置', '视频监控', NULL, '#', '#', 650.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (24, '基础制作 包含水泥沙子等', '视频监控', NULL, '#', '#', 1730.00, NULL, NULL, NULL, '1200*1200*1200mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (25, '摄像头', '视频监控', NULL, '#', '200W红外球机', 3900.00, NULL, NULL, NULL, '200W红外球通讯方式：485总线通讯；\n工作电压：5V-12V；\n工作电流：不大于120mA；\n图像有效像素：不小于200万；\n图像格式：JPEG格式；\n分辨率：640*480，800*600，1024*768，1280*800可选；\n环境：工作温度：-10℃～50℃，储存温度：-40℃～60℃，工作湿度：不大于95%RH(40℃凝露)；\n符合《水文仪器基本参数及通用技术条件》（GBT 15966-2007）中的相关要求；\n夜视距离不小于50m（以可识别水位标尺为准）；\n防护等级达到IP66。\n支持IP地址获取、IP地址搜索功能。           \n支持RS485通信口实现图像抓拍功能，并保存至SD卡内。机', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (26, '太阳能板', '视频监控', NULL, '#', '#', 500.00, NULL, NULL, NULL, '单晶硅，100Wp', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (27, '蓄电池', '视频监控', NULL, '#', '#', 300.00, NULL, NULL, NULL, '12V，100Ah,免维护铅酸电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (28, '太阳能充电控制器', '视频监控', NULL, '#', '#', 260.00, NULL, NULL, NULL, '输出直流10-48V ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (29, '通讯流量卡', '视频监控', NULL, '#', '#', 600.00, NULL, NULL, NULL, 'SIM卡等含1年通讯费用', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (30, '监控球机', '视频监控', NULL, '大华', 'DH-SD-6C32A3U-HN-DG', 3340.00, NULL, NULL, NULL, '23倍光学变倍，16倍数字变倍 \n支持H.265编码，实现超低码流传输 \n信噪比达到55dB \n支持隐私遮挡，最多24块区域,同时最多有8块区域在同一个画面 \n宽动态效果，加上图像降噪功能，完美的白天/夜晚图像展现 \n内置150米红外灯补光，采用倍率与红外灯功率匹配算法，补光效果更均匀 \n支持4G无线传输，可以适应各种安装环境 \n支持DC12V±10%输入 \n室外球达到IP66防护等级，6000V防雷、防浪涌和防突波保护 \n支持软件集成的开放式API，支持标准协议(Onvif、CGI、GB/T28181)、支持第三方管理平台接入 \n支持三码流技术 \n支持绊线入侵、区域入侵、穿越围栏、徘徊检测、物品遗留、物品搬移、快速移动等多种行为检测；支持多种触发规则联动动作；支持目标过滤 \n支持人脸检测 \n支持人数统计；支持热度图 \n水平方向360°连续旋转，垂直方向-15°～90°自动翻转180°后连续监视,无监视盲区 \n水平键控速度0.1°～160°/s ，垂直键控速度0.1°～120°/s，云台定位可精确到0.1° \n支持300个预置位 \n可以按照所设置的预置位完成8条巡航路径 \n可设置5条巡迹路径，每条路径的记录时间大于15分钟', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (31, '监控枪机', '视频监控', NULL, '大华', 'DH-IPC-HFW52A8M-I1', 620.00, NULL, NULL, NULL, '1、具有200W像素 CMOS传感器。  \n2、最大分辨率1920x1080。  \n3、在1920x1080 @25fps下，码率设定为1Mbps，RJ45输出，清晰度不小于1100TVL。\n4、最低照度彩色：0.002 lx，黑白：0.0002 lx。  \n5、支持H.265、H.264、MJPEG视频编码格式，其中H.264支持Baseline/Main/High Profile。\n6、支持三码流技术，主码流最高1920x1080@25fps，第三码流最大1920x1080 @25fps，子码流704x576@25fps。   \n7、图像传输延时≤85ms。  \n8、信噪比不小于58dB。   \n9、需具不小于105dB宽动态且宽动态能力综合评价得分应不小于107分。 \n10、设备与客户端之间用100米网线进行传输，数据包丢包率不大于0.3%。 \n11、支持在10%丢包率的网络环境下，可正常显示监视画面。 \n12、红外补光距离不小于80米。 \n13、支持最多同时开启20个视频窗口进行画面浏览。   \n14、在IE浏览器下，具有亮度，对比度，饱和度，锐度，gamma设置选项 \n15、支持10行字符叠加，字体对齐方式和叠加位置可设，具有图片叠加到视频画面功能。\n16、支持区域遮盖功能，并能支持8块区域。  \n17、摄像机在非法访问、网络断开、IP冲突时可给出报警提示。\n18、具有黑白名单功能，黑白名单最多可添加48个IP地址，支持MAC地址过滤功能。 \n19、具备区域入侵，绊线入侵，物品遗留，物品搬移，场景变更，人脸检测，人员聚集，徘徊检测，快速移动，停车检测等智能行为分析功能。    \n20、具有走廊模式，宽动态，3D降噪，强光抑制，背光补偿，数字水印、ROI区域增强，SVC自适应编码等功能。\n\n21、摄像机能够在-40~70摄氏度，湿度小于93%环境下稳定工作。 \n22、支持IP67防护等级。 \n23、具有1个RJ-45网络接口。  \n24、支持电源电压在DC12V±30%范围内变化时设备可以正常工作。\n25、设备工作状态时，支持空气放电8kV，接触放电6kV，电源输入端和网络接口端均支持6kV峰值电压。\n26、★支持帧率动态控制功能，当触发报警时，视频录像帧率应自动调整至设定值。支持区域裁剪功能，裁剪后的视频图像分辨率可设置为704x480等8种分辨率。（提供公安部有效检测报告复印件加盖厂商公章佐证） \n27、★支持场景参数设置，可设置4套场景参数，不同场景参数可按时间自动切换。支持自动维护功能，摄像机可自动重启系统或删除旧文件。支持NAT穿越功能，在广域网环境下，支持主动发包动作以实现NAT穿越。（提供公安部有效检测报告复印件加盖厂商公章佐证）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (32, '监控球机（含4G模块）', '视频监控', NULL, '大华', 'DH-SD-6C32A3U-HN-DG', 4590.00, NULL, NULL, NULL, '23倍光学变倍，16倍数字变倍 \n支持H.265编码，实现超低码流传输 \n信噪比达到55dB \n支持隐私遮挡，最多24块区域,同时最多有8块区域在同一个画面 \n宽动态效果，加上图像降噪功能，完美的白天/夜晚图像展现 \n内置150米红外灯补光，采用倍率与红外灯功率匹配算法，补光效果更均匀 \n支持4G无线传输，可以适应各种安装环境 \n支持DC12V±10%输入 \n室外球达到IP66防护等级，6000V防雷、防浪涌和防突波保护 \n支持软件集成的开放式API，支持标准协议(Onvif、CGI、GB/T28181)、支持第三方管理平台接入 \n支持三码流技术 \n支持绊线入侵、区域入侵、穿越围栏、徘徊检测、物品遗留、物品搬移、快速移动等多种行为检测；支持多种触发规则联动动作；支持目标过滤 \n支持人脸检测 \n支持人数统计；支持热度图 \n水平方向360°连续旋转，垂直方向-15°～90°自动翻转180°后连续监视,无监视盲区 \n水平键控速度0.1°～160°/s ，垂直键控速度0.1°～120°/s，云台定位可精确到0.1° \n支持300个预置位 \n可以按照所设置的预置位完成8条巡航路径 \n可设置5条巡迹路径，每条路径的记录时间大于15分钟', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (33, '监控枪机（含4G模块）', '视频监控', NULL, '大华', 'DH-IPC-HFW72A5M-W4G-AS-I2', 1600.00, NULL, NULL, NULL, '23倍光学变倍，16倍数字变倍 \n支持H.265编码，实现超低码流传输 \n信噪比达到55dB \n支持隐私遮挡，最多24块区域,同时最多有8块区域在同一个画面 \n宽动态效果，加上图像降噪功能，完美的白天/夜晚图像展现 \n内置150米红外灯补光，采用倍率与红外灯功率匹配算法，补光效果更均匀 \n支持4G无线传输，可以适应各种安装环境 \n支持DC12V±10%输入 \n室外球达到IP66防护等级，6000V防雷、防浪涌和防突波保护 \n支持软件集成的开放式API，支持标准协议(Onvif、CGI、GB/T28181)、支持第三方管理平台接入 \n支持三码流技术 \n支持绊线入侵、区域入侵、穿越围栏、徘徊检测、物品遗留、物品搬移、快速移动等多种行为检测；支持多种触发规则联动动作；支持目标过滤 \n支持人脸检测 \n支持人数统计；支持热度图 \n水平方向360°连续旋转，垂直方向-15°～90°自动翻转180°后连续监视,无监视盲区 \n水平键控速度0.1°～160°/s ，垂直键控速度0.1°～120°/s，云台定位可精确到0.1° \n支持300个预置位 \n可以按照所设置的预置位完成8条巡航路径 \n可设置5条巡迹路径，每条路径的记录时间大于15分钟', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (34, '二合一防雷器', '视频监控', NULL, '定制', '定制', 750.00, NULL, NULL, NULL, '采用高性能两百万像素1/2.9英寸CMOS图像传感器，低照度效果好，图像清晰度高\n可输出200万(1920×1080)@25fps\n支持H.265编码，压缩比高，超低码流\n最大红外监控距离80米\n支持走廊模式，宽动态，3D降噪，强光抑制，背光补偿，数字水印，适用不同监控环境\n支持ROI，SVC，SMART H.264/H.265，灵活编码，适用不同带宽和存储环境\n支持报警2进2出，音频1进1出)，128G SD卡\n支持DC12V供电方式，方便工程安装\n支持IP67，防护等级\n支持轻存储，根据场景调整码流值，同样存储空间存储更长时间录像\n支持wifi （默认Soft AP）\n支持全网通4G模块（电信、移动、联通）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (35, '立杆', '视频监控', NULL, '定制', '#', 2300.00, NULL, NULL, NULL, '4米监控立杆', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (36, '地笼及接地', '视频监控', NULL, '定制', '#', 600.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (37, '室外箱', '视频监控', NULL, '定制', '#', 300.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (38, '立杆基础', '视频监控', NULL, '定制', '#', 300.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (39, '电源线（RVV3*1.5）', '视频监控', NULL, '贝斯通', 'RVV3*1.5mm²', 3.68, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (40, '网线', '视频监控', NULL, '#', '#', 500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (41, '架空线路', '视频监控', NULL, '#', '#', 28.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (42, '太阳能供电设备', '视频监控', NULL, '定制', '20W', 4000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (43, '水雨情监测站（含太阳能供电设备）', '视频监控', NULL, '南水、捷尔', 'JDZ05-1、JERD813', 30000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (44, 'SD6A9中文大华200W网络机芯高速红外智能球', '视频监控', NULL, '大华', 'DH-SD-6A9230UA-HNI', 3900.00, NULL, NULL, NULL, '1/1.9英寸 CMOS；水平解析度≥1000TVL；信噪比≥55dB；焦距6mm～180mm；光学变倍30倍；补光方式红外；补光距离≥220m；垂直范围 -20°～90° 自动翻转180°后连续监视；H.265/H.264BaselineProfile/H.264MainProfile/H.264HighProfile/M-JPEG；人脸智能检测；网络接口；报警输入7 路开关量输入(0～5V DC)；报警输出2 路，支持报警联动；RS485控制接口；音频输入；音频输出；电源AC24V/3A±25%（含红外控制电路）；功耗24W/36W(红外灯开启）；温度-45～70℃； 湿度＜95% ；IP67，TVS 8000V防雷、防浪涌和防突波保护，符合GB/T 17626.5 4级标准；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (45, 'DH-PFB303W-球机壁装支架-DH816W2-中文大华', '视频监控', NULL, '大华', 'DH-PFB303W', 35.00, NULL, NULL, NULL, '壁装；铝合金', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (46, '工业级千兆SFP光模块GSFP-1310-20-SMF 单模双纤 20km 1310nm发送 1310nm接收 LC接口', '视频监控', NULL, '大华', 'GSFP-1310-20-SMF', 222.00, NULL, NULL, NULL, '单模 双纤双向,1.25G, 1310nm,20km, -40~85度,3.3V,LC 接口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (47, '非管理安防工业交换机-DH-IS3100-2GT1GF-DC-2个10/100/1000Base-T以太网端口，1个1000Base-X SFP端口', '视频监控', NULL, '大华', 'DH-IS3100-2GT1GF-DC', 390.00, NULL, NULL, NULL, '非网管二层千兆安防工业交换机，2*100/1000Mbps RJ45，1*1000Mbps SFP，工作宽温：-30至+75°，DC12-36V供电（双冗余），IP40，导轨&壁装', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (48, '国内大华网络硬盘录像机DH-NVR608-32-4KS2（主板V1.00）', '视频监控', NULL, '大华', 'DH-NVR608-32-4KS2', 2775.00, NULL, NULL, NULL, '工业级嵌入式微控制器；嵌入式Linux实时操作系统；网络协议IPv4、IPv6、HTTP、UPnP、NTP、SNMP、PPPoE、DNS、FTP、ONVIF；前智能支持；后智能支持；网络带宽接入384Mbps,储存384Mbps,转发384Mbps；网络视频接入32路；IPC分辨率12M/4K/5M/3M/1080P/UXGA/1.3M/720P，支持1080P@60帧；解码能力2×12M/4×4K/6×5M/8×4M/11×3M/16×1080P/32×720P；1路VGA输出，2路HDMI输出，支持VGA和HDMI 1同源输出，双HDMI 异源输出；最大支持16路回放；视频压缩标准H.265/H.264/MPEG4/MJPEG；8 个SATA接口，单盘容量支持8TB，支持Raid0、Raid1、Raid5、Raid6、Raid10、JBOD等多种数据模式；2个RJ45 10/100/1000Mbps自适应以太网口；2个前置USB2.0接口/2个后置USB3.0接口；1路，支持IPC复合音频输入/1路，支持语音对讲输出；报警接口16进8出；1个RS-232/1个RS-485；1个外置eSATA接口；1个电源接口，AC100～240V 50+2% Hz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (49, '硬盘-ST4000VM000-4000G-64M缓存-3.5英寸-SATA3.0接口', '视频监控', NULL, '希捷', 'ST4000VM000', 780.00, NULL, NULL, NULL, '4000G；5900RPM；64M；SATA ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (50, 'L3万兆以太网交换机-DH-S5500-24GF4XF-24个100/1000BASE-X SFP端口，其中8个10/100/1000BASE-T Combo 口；4个10G BASE-X SFP+端', '视频监控', NULL, '大华', 'DH-S5500-24GF4XF', 4500.00, NULL, NULL, NULL, 'L3企业级路由交换机，24*100/1000Base-X SFP光口，8*10/100/1000 Base-T RJ45电口(Combo)4*1000/10000Base-X SFP+光口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (51, '1080P红外球机', '视频监控', NULL, '海康威视', 'DS-2DE7220IH-CA', 3550.00, NULL, NULL, NULL, '200万6寸红外4G；1920×1080@30fps；彩色：0.05Lux @ (F1.6，AGC ON)；黑白：0.01Lux @(F1.6，AGC ON) ；0 Lux with IR；200米红外照射距离；焦距：4.7-94mm, 20倍光学；4G（移动、联通，电信）；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (52, '开关电源', '视频监控', NULL, '国产', 'DC12V5A', 75.00, NULL, NULL, NULL, 'DC12V5A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (53, '4米监控立杆及接地', '视频监控', NULL, '国产', '4米', 2300.00, NULL, NULL, NULL, '4米', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (54, '防水箱', '视频监控', NULL, '国产', '400*400*200', 280.00, NULL, NULL, NULL, '400*300*200', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (55, '防雷器', '视频监控', NULL, 'towe', 'TPS-D10-230V', 200.00, NULL, NULL, NULL, '二合一防雷', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (56, '空气开关', '视频监控', NULL, '国产', '2P 10A', 25.00, NULL, NULL, NULL, '2P 10A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (57, '管理平台', '视频监控', NULL, '海康威视', '#', 125.00, NULL, NULL, NULL, '智慧管理平台，统一管理，集视频、停车场/门禁一卡通，报警，巡更等安防系统于一个平台，搭载一台服务器：E5-2630 V4(10核2.2GHz)×1/16GB DDR4×2/1TB SATA×2/SAS_HBA/DVD/1GbE×4/冗电/导轨/2U/Windows Server 2008 R2简体中文标准版激活码  1、电源：高效能550W铂金1+1 冗余电源；2、电源电压 200-240V/50Hz；3、机箱尺寸：87.8mm(高)×448mm(宽)×794.4mm(深)； 4、重量 最大35 千克（不含导轨）；5、详细规格请见规格书；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (58, 'CVR网络硬盘录像机', '视频监控', NULL, '海康威视', 'DS-A80624S', 30000.00, NULL, NULL, NULL, '集编码设备管理、录像管理、存储、转发功能为一体', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (59, '企业级硬盘', '视频监控', NULL, '希捷', 'ST4000NM0035', 1100.00, NULL, NULL, NULL, '4TB 7200转128M SATA3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (60, '解码器', '视频监控', NULL, '海康威视', 'DS-6912UD', 15272.00, NULL, NULL, NULL, '高清视音频解码器，采用Linux操作系统，运行稳定可靠\n输出接口：支持12路HDMI和6路BNC输出，HDMI（可以转DVI-D）（奇数口）输出分辨率最高支持4K（3840*2160@30HZ）\n解码能力：支持12路1200W，或24路800W，或36路500W，或60路300W，或96路1080P及以下分辨率同时实时解码；\n画面分割：支持1/4/6/8/9/12/16/25/36画面分割\n网络接口：2个RJ45 10M/100M/1000Mbps自适应管理网口\n2个RJ45 10M/100M/1000Mbps自适应以太网接口\n16个RJ45 10M/100M自适应以太网接口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (61, '机柜', '视频监控', NULL, '#', '#', 3000.00, NULL, NULL, NULL, '宽*深*高=600*1100*2000', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (62, '核心交换机', '视频监控', NULL, '华为', 'S5720-32X-EI-24S-AC', 6400.00, NULL, NULL, NULL, '24个千兆SFP，4个10/100/1000Base-T以太网端口，4个万兆SFP+，2个QSFP+堆叠口交流或直流供电，电源前置，支持RPS冗余电源交换容量：598Gbps/5.98Tbps包转发率：222Mpps外形尺寸mm（宽×深×高） 442×220×43.6典型功耗55.5W MAC地址表 遵循IEEE 802.1d标准支持64K MAC地址容量支持MAC地址自动学习和老化支持静态、动态、黑洞MAC表项支持源MAC地址过滤VLAN特性 支持4K个VLAN支持Guest VLAN、Voice VLAN', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (63, '单模光模块', '视频监控', NULL, '华为', 'S1720-10GW-PWR-2P', 300.00, NULL, NULL, NULL, '光模块-eSFP-GE-单模模块', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (64, '接入交换机', '视频监控', NULL, '华为', 'SFP-GE-LX-SM1310', 1100.00, NULL, NULL, NULL, '8个10/100/1000Base-T以太网端口，2个千兆SFP支持PoE+交流供电包转发率：15Mpps交换容量：168Gbps外形尺寸mm（宽×深×高）320×220×43.6输入电压100V-240V AC，50~60Hz功耗不带PoE :14.63W; 带PoE：159.2W(PoE:123.2W)工作温度0℃～45℃工作湿度5%~95%散热方式无风扇，自然散热MAC地址表16K MAC', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (65, 'SD卡', '视频监控', NULL, '闪迪', 'A1', 600.00, NULL, NULL, NULL, '256G', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (66, 'SIM卡', '视频监控', NULL, '联通', '#', 199.00, NULL, NULL, NULL, '一个月40G，超出部分限速，数量是19张卡12个月3年计算', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (67, '线缆', '视频监控', NULL, '#', '#', 50.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (68, 'TVF012', 'LED大屏', NULL, '利亚德', '#', 94000.00, NULL, NULL, NULL, '全彩P1.2mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (69, 'LED立柜式结构', 'LED大屏', NULL, '利亚德', '#', 1500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (70, '系统线缆', 'LED大屏', NULL, '利亚德', '#', 24000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (71, '显示管理软件V1.0', 'LED大屏', NULL, '利亚德', '#', 12000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (72, '多屏处理器', 'LED大屏', NULL, '利亚德', '#', 124500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (73, '发送卡', 'LED大屏', NULL, '利亚德', '#', 3000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (74, '控制电脑', 'LED大屏', NULL, '联想', '#', 7000.00, NULL, NULL, NULL, 'Ｉ7 9700K/RTX2070/RTX2070SUPER/16G', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (75, '交换机', 'LED大屏', NULL, '华三', '#', 1800.00, NULL, NULL, NULL, '12口千兆', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (76, '宽频阵列音柱扬声器', '视频会议', NULL, 'VOKON', '#', 2050.00, NULL, NULL, NULL, '1.额定功率:320W,音乐功率:640W,最大功率:1280W；\n2额定阻抗:4Ω；\n3.频率响应(-10dB):65-19KHZ；\n4.单元特征:全频带,单元规格:4\"*8；\n5.产品尺寸:139*951*172mm；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (77, '专业数字功放', '视频会议', NULL, 'VOKON', '#', 1950.00, NULL, NULL, NULL, '1.立体声（8Ω）STEREO POWER 8Ω：300Wx2；\n2.立体声（4Ω）STEREO POWER  4Ω：480Wx2；\n3.立体声（2Ω）STEREO POWER  2Ω：600Wx2；\n4.桥接（8Ω）BRIDGE POWER 8Ω：1000W；\n5.桥接（4Ω）BRIDGE POWER  4Ω：1400W；\n6.频率响应FREQUENCY RESPONSE：20Hz-20KHz/-0.5dB；\n7.失真度THD+N：<0.05%@4 Ω 1KHz；\n8.信噪比S/N RATE：≥105dB；\n9.分离度SLEW RATE：60V/us；\n10.阻尼系数DAMPING FACTOR：≥800@8 Ω；\n11.转换速率CROSSTALK：≥80dB@8 Ω 1KHz；\n12.输入阻抗INPUT  IMPEDANCE：20KHz(BALANCE)/10KΩ (UNBALANCE)；\n13.输入灵敏度INPUT SENSITIVITY：0.775V\\1.0V\\1.4V；\n14.保护PROTECT：DC,SHORT,CIRCUIT,OVER HEAT,SOFTSTART；\n15.机箱高度HEIGHT：2U；\n16.包装尺寸PACKING DIMENSIONS：89*483*472mm；\n17.重量GROSS WEIGHT：15Kg；　　　　　　　　　　\n18.功耗:960W', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (78, '网络控制主机', '视频会议', NULL, 'VOKON', '#', 8100.00, NULL, NULL, NULL, '1.同时支持IPAD平板电脑、安卓平板电脑、射频触摸屏、windows电脑控制(笔记本、台式机、一体机等)，一个设计器支持所有平台，并且IPAD平板、安卓平板、射频触屏及windows电脑的控制界面完全相同，方便用户使用。多种方式，可同时使用，互为备份，让项目更健壮。\n2.主机前面板带蓝光液晶显示屏，显示工作状态；\n3.主机前面板带10个可自定义功能的按键；可作为应急操作选项；\n4.内置万年历电路，可让中控在指定时间自动执行控制操作；\n5.非串口分配器式中控，串口等所有控制代码保存在主机上，主机可执行逻辑控制，触摸屏仅保存一个控制ID号，减少网络通讯，提高响应速度和稳定性；\n6.主机带有网口，不需配置接收器（转换器），以提高稳定性。\n7.非网页式，各个平台（IPAD、安卓、windows）都有功能一致的专用操控软件(app)，更显专业，易用，稳定。\n8.IPAD控制软件，通过美国苹果公司官方严格审核，可直接在app store上安装，确保稳定兼容，不需越狱，不需破解。\n9.采用字体自动识别技术，在Windows电脑上设计界面时使用的任何字体，都能在IPAD平板、安卓平板上正确显示（不需制作图片）。\n10.编程设计平台可自动生成各种3D按钮（不需设计图片）；也支持图片按钮，支持PNG、WMF、ICO、GIF图片的透明效果，可实现任意形状的按钮，各种效果的界面。\n11.设计平台采用先进的软件技术，不需使用任何电脑语言进行编程，不需使用各种复杂的逻辑模块与宏，以方便施工、后期维护及升级。\n12.程序设计师勿需亲自到现场，可直接通过以太网络，利用Internet互联网传输来更改程序的内容。\n13.专为高要求级场合设计，非电教中控改装，主机配有32个串口，16个RS232串口、16个RS485\\422、8个红外口、8-Relays 继电器口等控制口，大量的专业接口，不需接分配器扩展。不集成小矩阵等信号切换系统，增强控制接口，以降低整个系统崩溃的风险。\n14.主机内置红外学习器，可把红外数据保存到电脑成为红外库文件，供后续工程或后续维护升级使用。\n15.控制通讯：以太网(TCP/IP)，10/100M自适应，TCP SERVER方式，也可定制为UDP方式，也可连接射频接收器。\n16.处理器：32位ARM处理器。\n17.指令存储器：FLASH，大容量FLASH存储器，可保存高达3000条控制指令，满足任何场合的控制存储要求，支持扩展。\n18.前面板带各种控制功能LED灯显示，来指示设备运作状态。\n19.外观：黑色金属外壳。\n20.控制通讯：以太网(TCP/IP)，10/100M自适应，TCP SERVER方式，也可定制为UDP方式。\n21.电源 100VAC~240VAC,50/60Hz,国际自适应电源\n22.最大功率:15W\n23.储存、使用温度 :-20° ~+70°C\n24.储存、使用湿度: 10% ~ 90%\n25.尺寸: 484mm（长）x 250mm（深） x 88mm（高）\n26.安装: 标准机柜，2U高度\n27.重量：3.8kg\n28.平均故障间隔时间MTBF:38000小时\n29.电源输出:提供5V/24V电源输出', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (79, '全数字会议主机【5G WiFi、有线网】', '视频会议', NULL, 'VOKON', '#', 8657.00, NULL, NULL, NULL, '无线单元最大支持8个话筒同时开启，自适应躲避干扰技术，实现更强抗干扰能力，基于符合IEEE 802.11n的标准WiFi,同时支持2.4GHZ，5GHZ。\n◆同时支持有线会议和无线会议\n◆独创的AUDIO-LINKTM数字环状网络技术，实现全数字信号传输与处理，★可选配DANTE协议音频输出模块\n★一根CAT5e网线传输64路音频及各类信息\n◆高保真音质，无损音频传输技术，48K音频采样频率，20Hz~20KHz响应频率。\n★支持单台会议主机实现4个会议室独立控制与合并会议室,支持多台会议主机级联，实现更大会议室合并与分离（包括会议管理等），双机热备份功能。\n★支持USB接口插U盘录音，主机监听，先进噪声消除技术，实现更清晰录音\n★支持单元麦克风灵敏度和16段均衡器QE独立调节。\n◆支持主机输出16段均衡EQ,实现声音声场调节；压限,可识别人声通过的噪声门;AGC自动音量增益控制;AFC自动反馈抑制器;支持自动混音（auto-mix）技术。\n★支持声音分区输出功能，各个分区音量根据话筒开启位置自动调节,实现更远拾音距离而不啸叫。\n★支持回声消除，实现与另一台会议主机或者第三方视频会议终端远程双向实时通话。\n◆手拉手环路网络连接，系统更可靠，系统更可靠,替换和一个单元或线出现故障,不会影响系统其他单元正常工作。\n◆连接扩展主机，可以扩展会议单元到5200台。\n◆支持手拉手环路网络连接，并且系统自动分配给每个单元独立ID，避免ID重复冲突\n◆主机同时支持有线单元,无线单元，有线和无线单元外观一致，方便增加会议席位与使用\n◆支持2路音频输入，支持卡侬头，莲花头，用本地音频输入和原端视频会议输入\n◆2路音频输入,用于本地广播输入或远程视频会议输入。\n◆最大支持音频输出8路，可以接同传输出或者分区输出，支持卡侬头，莲花头，凤凰头。\n◆加入音频输入盒,系统可接入其它电容麦克风或动圈麦克风，为用户提供更多选择。\n◆内置多路的内部通讯功能\n◆支持电脑与主机TCP/IP连接。\n◆支持RS232中控控制，实现话筒开关，优先权，音量大小等控制。\n◆系统同时提供RS485或RS232发送PELCO,VISCA协议，实现摄像跟踪功能\n◆系统单元热插拔功能，自动恢复功能\n◆支持宽电源110V~220VAC。\n◆在脱离电脑的使用时，会议系统也能够实现：\n-   发言人数限制功能：可以设置同时开启的代表发言单元（数量为1/2/4/6台）\n-   具有以下发言模式：\n\"\"OPEN\"\"开放模式，★\"\"VOICE\"\"声控模式，\"\"FIFO\"\"先进先出模式，\"\"PTT\"\"按住发言， \"\"APPLY\"\"申请模式，\"\"ALL\"\"全开模式\n-   按键表决功能:赞成/弃权/反对\n-   主席单元优先权支持关闭所有和临时静音2种模式。\n-   主席单元具有批准申请发言按钮\n-   同声传译功能\n◆配合电脑软件可以实现更多方式的投票表决例如：\n-   同意/反对方式\n-   表决方式：赞成/弃权/反对\n-   选举方式：1/2/3/4/5\n-   响应方式：--/-/0/+/++\n◆配合RFID卡身份认证功能，进行投票，能够做到准确的一人一票。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (80, '主席单元【全数字阵列话筒】', '视频会议', NULL, 'VOKON', '#', 2693.25, NULL, NULL, NULL, '独特的现代设计带触摸按钮\n采用自主开发的ARRA-TechTM阵列麦克风技术，拾音距离不低于80CM\n主席单元带优先权，可关闭所有代表话筒\n采用标准CAT5e作为连接线, RJ45连接头,方便标准化工程布线安装和后期维护,附带安装线夹使系统更牢固,稳定。\n◆只出一条1.5米连接线连接数字会议分路器，保持桌面整洁\n◆独创的AUDIO-LINKTM数字环状网络技术，实现全数字信号传输与处理,抗来自手机等类似设备的RF干扰。\n★手拉手环路网络连接，系统更可靠。\n★支持即插即用功能，自带DSP啸叫抑制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (81, '代表单元【全数字阵列话筒】', '视频会议', NULL, 'VOKON', '#', 2501.10, NULL, NULL, NULL, '独特的现代设计带触摸按钮\n采用自主开发的ARRA-TechTM阵列麦克风技术，拾音距离不低于80CM\n主席单元带优先权，申请应答按钮\n采用标准CAT5e作为连接线, RJ45连接头,方便标准化工程布线安装和后期维护,附带安装线夹使系统更牢固,稳定。\n只出一条1.5米连接线连接数字会议分路器，保持桌面整洁\n独创的AUDIO-LINKTM数字环状网络技术，实现全数字信号传输与处理,抗来自手机等类似设备的RF干扰。\n手拉手环路网络连接，系统更可靠。\n支持即插即用功能，自带DSP啸叫抑制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (82, '单元分路器', '视频会议', NULL, 'VOKON', '#', 427.50, NULL, NULL, NULL, '可以支持星型拓扑连接，使麦克风单元只要一根线连接系统\n可提供更多麦克风通道，实现分路器级连，每个分路器一分2支路功能', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (83, '摄像机【高清60帧20倍变倍】', '视频会议', NULL, 'VOKON', '#', 6108.00, NULL, NULL, NULL, '20倍光学变倍，10倍数字变焦，水平视角55.4°；\n分辨率：1080P60，1/3英寸325万像素HDCMOS；\nHDMI接口、广播级3G HD-SDI接口，网络接口，RS-232C远程控制（VISCA协议/Pelco-D/Pelco-P）255个位置预设位；\n多功能遥控器；\n可倒装；\n支持中英文菜单。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (84, '24通道4遍组数字调音台', '视频会议', NULL, 'VOKON', '#', 5000.00, NULL, NULL, NULL, '1.24路通道输入；\n2.20路高品质高灵敏度话筒输入，2路立体声输入，真正的4编组调音台；\n3.每路单独的+48V幻象供电开关选择；\n4.3段英式均衡器中频带选频；\n5.6组AUX辅助输出其中4组AUX可选择推子前或推子后；\n6.18dB/倍频程陡峭的高通滤波器，插入点可加插在总输出或分组输出通道；\n7.100mm行程的推子（衰减器）；\n8.录音级别的DSP数字效果器参数可以细调；\n9.6组12段LED电平显示器；\n10.PSU内置电源；\n11.MP3播放器并带录音功能；\n12.超低噪声的前级混合放大器设计；\n13.100种选择录音级的数字效果器，参数可细调可储存；\n14.74dB前置放大器可接受高至 +34dBu 的话筒或线路输入电平\n15.最大输入电平：Mic +34dBu(inc pad); CH Line +34dBu; Other Line +20dBu\n16.内部电平上限：Channels +20dB; Mix +22dB\n17.电平表：3 colour LED, quasi peak response\n18.灵敏度：0VU=+4dBu at XLR output\n19.总音量控制电平表：12 segment -30dB-(+16dB)\n20.频率响应：20Hz-50kHz +/-0.5dB\n21.Mic CMRR(1kHz)： >80dB typical\n22.THD+N(+14dBu 1kHz)： Channel to mix out <0.003%\n23.串声(1kHz)： Fader shutoff >90dB; Mute shutoff >90dB; Inter channel >90Db\n24.噪声(有效值22Hz-22kHz)：Mic EIN -128dB; Residual output noise <-96dBu(-100dB S/N)\nLR mix  noise 16 routed <-86dBu(-90dB S/N)\nGroup mix noise 16 routed <-86dBu (-90dB S/N)\nAux mix noise 16 routed <-92dBu(-90dB S/N)\nMix noise 16 line 0dB gain <-86dB S/N\n25.通道HPF：12dB/octave below 100Hz\n26.单声道 EQ：HF Shelving ±15dB，12kHz。HM Peak/dip ±15dB，240Hz-3kHz，Q=1.8。LM Peak/dip ±15dB，35Hz-1kHz，Q=1.8。LF Shelving ±15dB，80Hz\n27.立体声 EQ：HF Shelving ±15dB，12kHz。HM Peak/dip ±15dB，2.5kHz，Q=1.8。LM Peak/dip±15dB，250Hz，Q=1.8。LF Shelving ±15dB，80Hz\n28.尺寸：长78cm，宽：55cm，上高：13cm，下高：7cm；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (85, '智能电源时序器', '视频会议', NULL, 'VOKON', '#', 575.00, NULL, NULL, NULL, '1.最大输入电流：60A；\n2.单路最大输出电流：30A；\n3.工作电压    ：220V-240V/50-60Hz ；\n4.每一路功率  ：可达4500W；   \n5.输入与输出电：AC输入电压=AC输出电压；   \n6.输出电源插座：万用插座符合欧美标准。后面板8个受控万用插，前面2个万用插座；\n7.插座材质 ：每个插座材质磷铜，均通过检验才安装；   \n8.每一路开关间隔时间：1秒 ，每一路带开关指示灯,后端配置；\n一个保险开关按钮（BYPASS）；     \n9.继电器  ：松乐牌(原厂正品)；   \n10.电路板线路 ：采用60%高纯度锡，高端分流技术,经强化加粗处理； \n11.变压器  ：开关电源；   \n12.内置电源线 ：3*6平方的电源线，线材配置长度为1.5米；   \n13.电压显示表 ：二极管 数字显示电压表；   \n14.机箱高度 ：1.5U （符合机柜按照标准）；   \n15.开关  ：船形开关；   \n16.受控功能 ：有，（每通道可以单独受控）带232接口，可受中控设备控制；  \n17.联机方式 ：是，（可支持9台设备同时联机使用）； \n18.滤波器  ：电容滤波器；\n19.尺寸：484×295×44mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (86, 'U型壁挂架', '视频会议', NULL, 'VOKON', '#', 80.00, NULL, NULL, NULL, '适合VM-J308 VM-J316 VM-J408线性音箱壁挂后挂支架,前后上下多角度调节', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (87, '反馈抑制器', '视频会议', NULL, 'VOKON', '#', 2272.50, NULL, NULL, NULL, '性能特点：代表当今最高科学技术水平的话筒数字扩声处理器，提升话筒音量大、加大拾音距离最远、音质还原最好、控制声反馈啸叫最佳。为数字话筒放大器领域的里程碑级机型。任何使用情况下都可获得6dB的增益，最高达12dB。讲话拾音距离、声场范围和音量立刻增加4倍。同时打开几十支话筒，绝无啸叫。更支持用户自由随意开启话筒或者全部开启，效果清晰无回声。让人满意的饱满收音距离：会议电容话筒：0.8-1米收声；合唱话筒：2米收声；电容枪咪：1-2米；领夹胸咪：0.5米收声；动圈话筒0.3米收声）；领导讲话轻松，不用再紧贴俯靠话筒，费力地大声讲话；可以配合使用短杆式话筒，摄影拍照视角无障碍，更加彰显领导形象风采。即插即用，无须调试，自动适应其他音响设备和声学装饰环境，自动弥补会场厅堂建筑吸声装饰的不足；一键式开关，并且固化运行工作模式，真正避免误操作，可以无需专业工程技术人员施工调试和售后维护；全天候自动实时运行和管理话筒音频，自动校正话筒和音箱等声学器材的频响缺陷，自动分析、补偿和美化讲话者声音的音质及音量。内置音频系统噪声实时动态检测仪，配置抗干扰电路和噪声门，自行处理干扰噪声。内置极速智能混音器，支持多路话筒接入通道开放和管理音量，无缝极速转换，确保声音连续不断。内置极速数字反馈抑制器和产生量参量均衡器。内置抗手机等无线通讯工具的电磁波噪声干扰的电路。\n技术参数：\n额定电压: 220V±10%  50Hz；\n频率响应: 125Hz~15KHz；\n失真: ＜1% @ 1KHz；\n信噪比: ＞65dB；\n输入阻抗: 20KΩ；\n输出阻抗（平衡）: 200Ω；\n温度范围: -10~55℃；\n重量: 3.5kg；\n尺寸: 480×220×44mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (88, '音箱处理器', '视频会议', NULL, 'VOKON', '#', 2890.00, NULL, NULL, NULL, '1.96KHz采样频率，32-bit DSP处理器，24-bit A/D及D/A转换\n2.2路信号输入4路信号输出，可灵活组合多种分频模式，高、低通分频点均可达20Hz～20KHz\n3.提供USB和RS485接口可连接电脑，通过RS485接口可最多连接250台机器和超过1500米的距离外用电脑来控制\n4.直接用面板的功能键和拔轮进行功能设置或是连接电脑通过PC控制软件来控制，均十分方便、直观和简洁\n5.单机可存储30种用户程序\n6.可通过面板的SYSTEM按键来设定密码锁定面板控制功能，以防止闲杂人员的操作破坏机器的工作状态\n7.每个输入和输出均有6段独立的参量均衡，调节增益范围可达±20dB，同时输出通道的均衡还可选择Lo-shelf和Hi-shelf两种斜坡方式\n8.2×24 LCD蓝色背光显示功能设置，8段LED显示输入/输出的精确数字电平表、哑音及编辑状态\n9.每个输入和输出均有延时和相位控制及哑音设置，延时最长可达1000ms，延时单位可选择毫秒(ms)、米(m)、英尺(ft)三种\n10.输出通道还可控制增益、压限及选择输入通道信号，并能将某通道的所有参数复制到另外一个通道并能进行联动控制\n11.可以通过USB接口或RS485接口连接中控来控制矩阵和通道的哑音\n12.可以分功能锁定，实现数据保密\n13.输入通道可调噪声门\n14.共模拟制比 >70dB(1KHz)\n15.输入范围 ≤+25dBu\n16.频率响应 20Hz-20KHz(-0.5dB)\n17.信噪比 >110dB\n18.失真度 <0.01% OUTPUT=0dBu/1KHz\n19.通道分离度 >80dB(1KHz)\n20.尺寸：482*198*44mm;\n21.重量：3.6Kg；\n22.功耗：≤25W；\n23.电源：AC 110V/220V 50Hz/60Hz；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (89, '同轴吸顶音箱8寸', '视频会议', NULL, 'VOKON', '#', 262.50, NULL, NULL, NULL, '额定功率 : 80W；\n阻抗： 8Ω；\n灵敏度(1m ,1w):90dB；\n频响：70-20KHZ；\n开孔尺寸:Φ250mm；\n材料 :ABS\n重量：2.3kg；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (90, '功放', '视频会议', NULL, 'VOKON', '#', 1950.00, NULL, NULL, NULL, '1.立体声（8Ω）STEREO POWER 8Ω：300Wx2；\n2.立体声（4Ω）STEREO POWER  4Ω：480Wx2；\n3.立体声（2Ω）STEREO POWER  2Ω：600Wx2；\n4.桥接（8Ω）BRIDGE POWER 8Ω：1000W；\n5.桥接（4Ω）BRIDGE POWER  4Ω：1400W；\n6.频率响应FREQUENCY RESPONSE：20Hz-20KHz/-0.5dB；\n7.失真度THD+N：<0.05%@4 Ω 1KHz；\n8.信噪比S/N RATE：≥105dB；\n9.分离度SLEW RATE：60V/us；\n10.阻尼系数DAMPING FACTOR：≥800@8 Ω；\n11.转换速率CROSSTALK：≥80dB@8 Ω 1KHz；\n12.输入阻抗INPUT  IMPEDANCE：20KHz(BALANCE)/10KΩ (UNBALANCE)；\n13.输入灵敏度INPUT SENSITIVITY：0.775V\\1.0V\\1.4V；\n14.保护PROTECT：DC,SHORT,CIRCUIT,OVER HEAT,SOFTSTART；\n15.机箱高度HEIGHT：2U；\n16.包装尺寸PACKING DIMENSIONS：89*483*472mm；\n17.重量GROSS WEIGHT：15Kg；　　　　　　　　　　\n18.功耗:960W', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (91, '视频会议系统---会议管理系统', '视频会议', NULL, 'VOKON', '#', 1140.75, NULL, NULL, NULL, '1.自带，配合MCU使用，支持多级网络视频管理，也支持扁平化的网络管理（可划分区域）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (92, '视频会议系统---MCU', '视频会议', NULL, 'VOKON', '#', 55062.00, NULL, NULL, NULL, '1.系统容量：单台最高达200用户，双服务器热备可达400用户，可升级到MCU集群可支持1000用户以上，升级到云计算平台可支持无限用户。（适用于硬软件结合数字视频会议).                                                                                                                                          2.通讯协议：H.323-优化，兼容SIP \n3.视频编解码：H.264（支持最高High profile ）\n4.视频分辨率：QCIF、CIF、4CIF、480P、D1、720P、1080P24、1080P25、1080P30、1080P50、1080P60\n5.静态图文： XGA、HD 720P、640*480、1280*1024、1080P（1--60帧），H.239数字双流技术\n6.音频编解码： G.711A,G.711U,G.722，iLBC，G.7221，G.722.1.C,G.723，AAC等\n7.用户管理：可通过Web方式实现\n8.会议管理：可视互动会议管理平台\n9.远程维护：支持远程Telnet、ssh配置维护\n10.网络接口：100M/1000M网络接口,双网口\n11.网络媒介：DDN、ISDN、ATM、SDH、VPN、卫星专线、ADSL等线路\n12.防火墙：跨越路由器及防火墙，保证系统安全，支持双网接入\n13.可靠性：MTBF:10万小时、MTTR：0.1小时                                \n14.支持视频分频；支持多画面，常见多种种多画面，每屏最多16画面；支持数据双流；支持摄像头远程遥控，背光设置；                                    \n15.支持多种会议模式：导演模式（WEB后台控制会议），主席会议模式，广播模式，自由模式；\n16.支持大规模终端入会，管理；\n17.高清（1080P60）、低延时(感觉不出,小于200ms)、低带宽（超低带宽，超节省带宽，1M能开1080P高清会议）；\n18.双冗余电源，双机热备，高可靠性；\n19.支持视频分屏，多画面，多种常见多画面，每屏最多16画面；\n2.支持双流。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (93, '视频会议系统---高清视频背靠背会议终端', '视频会议', NULL, 'VOKON', '#', 11250.00, NULL, NULL, NULL, '1.符合国际电联ITU H.323和IETF SIP标准；能与多种主流MCU组建视频会议系统的能力。\n2.视频终端采用高可靠嵌入式系统设计，实现7×24小时稳定运行。\n3. 支持带宽范围:256K---8M 分辨率：D1，720P,1080P(5-25，30) 1M可召开1080P会议。 \n4. 视频特性：H.264(支持High profile)。支持视频分屏，多画面，多种常见多画面，每屏最多16画面；支持画面轮询。\n5. 音频特性：同时支持G.711A,G.711U,G.722，iLBC，G.7221， G.722.1.C,G.723，AAC等音频标准，高清音频。\n6. 唇音同步/多路混音/回声消除/自动增益/噪音消除/闭音/静音/幻想供电\n7.图像格式支持QCIF、CIF、4CIF、VGA、SVGA、XGA、D1、720P、1080P(5-25，30)帧/秒。\n8. 具备高清视频输入、输出接口DVI（或HDMI）方便接入各种高清设备。 \n9.支持H.239双流，主辅流均可达到1080P效果。\n10. 中英文支持：符合中国使用习惯。终端采用中英文管理界面，可实现中英文WEB管理。 \n11.终端可通过Web、Telnet、SSH进行管理。\n12. 支持QoS, 消除网络抖动，传输纠错，带宽自适应。\n13.在和防火墙配合使用时，可以指定TCP/UDP的通信端口，实现防火墙穿越。\n14. 支持NAT内外网穿透。\n15.具备先进的网络丢包恢复机制，和MCU 配合，5％以下丢包率无影响。\n16.提供1个10M/100MBase-T自适应以太网接口。\n17.会议的安全性，会议加入密码，会议控制密码，管理员密码 。\n18.使用维护门槛低，直接开机为上次开会的配置；界面功能设计简洁；两个快捷按钮，一键入会，一键发言；每个人都能方便使用，不需要专门的网管。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (94, '视频会议系统---高清摄像头', '视频会议', NULL, 'VOKON', '#', 6283.35, NULL, NULL, NULL, '1、像素：采用1/2.8英寸500万像素高品质CMOS传感器，帧率最高可达1080P60，水平亮度分解力1050电视线；\n2、镜头参数：12倍（可选20倍）光学变倍、10倍数字变焦，f＝3.9～46.8mm，视角：6.3°-72.5°；\n★3丰富完善的接口：支持DVI（HDMI），3G-SDI，USB、有线LAN、无线LAN接口（5GWiFi模块），3G-SDI支持在1080P60格式下传输100米；\n4、网络和控制：100M网口，支持H.265，RTSP、RTMP等标准网络协议，支持RS232、485和IP控制，VISCA/Pelco-D/P控制协议，支持网络VISCA协议控制；\n★5、视频格式：支持1080P60/50/30/25、1080I60/50、720P60/50等多种高清视频制式；\n6、功能：OSD中/英文菜单，2D和3D降噪，支持手动/自动/一键白平衡/3000K/3500K/4000K/4500K/5000K/5500K/6000K/6500K/7000K各种白平衡模式，支持亮度、色度、饱和度、对比度、锐度、黑白模式、伽马曲线视频调节功能，支持自动/手动/一键聚焦，自动/手动光圈和快门，支持背光补偿，宽动态等级可调，信噪比>55dB，支持图像垂直和水平翻转；\n7、云台：水平转动±170度，俯仰转动-30～+90度，水平控制速度0.1-100°/秒，俯仰控制速度0.1-45°/秒，最高可设255个预置位；\n8、配件：红外遥控器，壁/吊装支架，电源，232控制线，485端子，说明书（含保修卡）；\n9.功耗：12W(最大)\n10.尺寸（宽X高X深）：258mmX172mmX169mm\n11.重量（约）：1.54kg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (95, '一体化视频会议终端', '视频会议', NULL, 'VOKON', '#', 11250.00, NULL, NULL, NULL, '1.符合国际电联ITU H.323和IETF SIP标准；能与多种主流MCU组建视频会议系统的能力。\n2.视频终端采用高可靠嵌入式系统设计，实现7×24小时稳定运行。\n3. 支持带宽范围:256K---8M 分辨率：D1，720P,1080P(5-25，30) 1M可召开1080P会议。 \n4. 视频特性：H.264(支持High profile)。支持视频分屏，多画面，多种常见多画面，每屏最多16画面；支持画面轮询。\n5. 音频特性：同时支持G.711A,G.711U,G.722，iLBC，G.7221， G.722.1.C,G.723，AAC等音频标准，高清音频。\n6. 唇音同步/多路混音/回声消除/自动增益/噪音消除/闭音/静音/幻想供电\n7.图像格式支持QCIF、CIF、4CIF、VGA、SVGA、XGA、D1、720P、1080P(5-25，30)帧/秒。\n8. 具备高清视频输入、输出接口DVI（或HDMI）方便接入各种高清设备。 \n9.支持H.239双流，主辅流均可达到1080P效果。\n10. 中英文支持：符合中国使用习惯。终端采用中英文管理界面，可实现中英文WEB管理。 \n11.终端可通过Web、Telnet、SSH进行管理。\n12. 支持QoS, 消除网络抖动，传输纠错，带宽自适应。\n13.在和防火墙配合使用时，可以指定TCP/UDP的通信端口，实现防火墙穿越。\n14. 支持NAT内外网穿透。\n15.具备先进的网络丢包恢复机制，和MCU 配合，5％以下丢包率无影响。\n16.提供1个10M/100MBase-T自适应以太网接口。\n17.会议的安全性，会议加入密码，会议控制密码，管理员密码 。\n18.使用维护门槛低，直接开机为上次开会的配置；界面功能设计简洁；两个快捷按钮，一键入会，一键发言；每个人都能方便使用，不需要专门的网管。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (96, '摄像头', '视频会议', NULL, 'VOKON', '#', 6283.35, NULL, NULL, NULL, '1、像素：采用1/2.8英寸500万像素高品质CMOS传感器，帧率最高可达1080P60，水平亮度分解力1050电视线；\n2、镜头参数：12倍（可选20倍）光学变倍、10倍数字变焦，f＝3.9～46.8mm，视角：6.3°-72.5°；\n★3丰富完善的接口：支持DVI（HDMI），3G-SDI，USB、有线LAN、无线LAN接口（5GWiFi模块），3G-SDI支持在1080P60格式下传输100米；\n4、网络和控制：100M网口，支持H.265，RTSP、RTMP等标准网络协议，支持RS232、485和IP控制，VISCA/Pelco-D/P控制协议，支持网络VISCA协议控制；\n★5、视频格式：支持1080P60/50/30/25、1080I60/50、720P60/50等多种高清视频制式；\n6、功能：OSD中/英文菜单，2D和3D降噪，支持手动/自动/一键白平衡/3000K/3500K/4000K/4500K/5000K/5500K/6000K/6500K/7000K各种白平衡模式，支持亮度、色度、饱和度、对比度、锐度、黑白模式、伽马曲线视频调节功能，支持自动/手动/一键聚焦，自动/手动光圈和快门，支持背光补偿，宽动态等级可调，信噪比>55dB，支持图像垂直和水平翻转；\n7、云台：水平转动±170度，俯仰转动-30～+90度，水平控制速度0.1-100°/秒，俯仰控制速度0.1-45°/秒，最高可设255个预置位；\n8、配件：红外遥控器，壁/吊装支架，电源，232控制线，485端子，说明书（含保修卡）；\n9.功耗：12W(最大)\n10.尺寸（宽X高X深）：258mmX172mmX169mm\n11.重量（约）：1.54kg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (97, '全向麦', '视频会议', NULL, 'VOKON', '#', 3974.50, NULL, NULL, NULL, '1.麦克风与喇叭频响：100~22KHz \n2.麦克风拾音范围：内置3米，扩展5米，360度全范围\n3.音频：线性输入输出\n4.噪声水平：< -48 dBA\n5.喇叭音量：最大95dB', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (98, '音频跳线', '视频会议', NULL, 'VOKON', '#', 20.00, NULL, NULL, NULL, '3.5直插头(电脑音频接口）--双莲花头', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (99, '音频跳线', '视频会议', NULL, 'VOKON', '#', 20.00, NULL, NULL, NULL, '莲花头--6.35直插头', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (100, '音频跳线', '视频会议', NULL, 'VOKON', '#', 20.00, NULL, NULL, NULL, '6.35直插头--6.35直插头', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (101, '音频跳线', '视频会议', NULL, 'VOKON', '#', 20.00, NULL, NULL, NULL, '卡侬头（公）--卡侬头（母）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (102, '操作台', '视频会议', NULL, '国产', '#', 8800.00, NULL, NULL, NULL, '五联、配套椅子', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (103, '服务器机柜', '视频会议', NULL, '国产', '#', 3800.00, NULL, NULL, NULL, '600*1000*2000', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (104, '金属桥架', '视频会议', NULL, '国产', '#', 90.00, NULL, NULL, NULL, '300*100', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (105, '管材', '视频会议', NULL, '国产', '#', 3000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (106, '雷达水位计（含法兰、托盘等）', '水位计', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', 'JERD813 30米', 5829.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (107, '雷达水位计（含法兰、托盘等）', '水位计', NULL, '唐山柳林MGTR-LD30', '唐山柳林MGTR-LD30', 4500.00, NULL, NULL, NULL, '适用于湖泊、河道、水库、明渠、潮汐水位、桥梁积水等水位检测。\n测量范围：30m\n介质温度：（-60~250）℃\n测量精度：±3mm\n过程连接：螺纹、法兰\n天线材料：不锈钢\n频率范围：26GHz\n信号输出：4-20ma/HART(两线/四信)RS485/Modbus协议\n电源：24V DC\n防护等级IP67', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (108, '前池水位测站', '水位计', NULL, '#', '#', 0.00, NULL, NULL, NULL, 'PE 管保护', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (109, '收绳式浮子水位计', '水位计', NULL, '#', '#', 3100.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (110, '收绳式浮子水位计显示仪', '水位计', NULL, '#', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (111, '收绳式浮子水位计安装支架', '水位计', NULL, '#', '#', 0.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (112, '水位传感器专用电缆', '水位计', NULL, '#', '#', 8.00, NULL, NULL, NULL, 'SC32 钢管保护 埋设', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (113, '水位传感器电源电缆', '水位计', NULL, '#', '#', 3.50, NULL, NULL, NULL, 'YJV-0.6/1-2×2.5 SC32 钢管保护 埋设', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (114, 'HDPE 管 带保温夹层及盖', '水位计', NULL, '#', '#', 2000.00, NULL, NULL, NULL, '双层 内径 400mm，外径500mm，高 5m', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (115, '出水池水位测站', '水位计', NULL, '#', '#', 0.00, NULL, NULL, NULL, '测井保护', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (116, '收绳式浮子水位计', '水位计', NULL, '#', '#', 3100.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (117, '收绳式浮子水位计显示仪', '水位计', NULL, '#', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (118, '收绳式浮子水位计安装支架', '水位计', NULL, '#', '#', 0.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (119, '水位传感器专用电缆', '水位计', NULL, '#', '#', 8.00, NULL, NULL, NULL, 'SC32 钢管保护 埋设', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (120, '水位传感器电源电缆', '水位计', NULL, '#', '#', 3.50, NULL, NULL, NULL, 'YJV-0.6/1-2×2.5 SC32 钢管保护 埋设', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (121, '压力式水位计', '水位计', NULL, '昊润', 'WFX', 4700.00, NULL, NULL, NULL, '水位数据采集', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (122, '遥测终端机', '水位计', NULL, '四信', 'F9164', 6000.00, NULL, NULL, NULL, '水文自动测报采集', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (123, '雨量计', '水位计', NULL, '丰泽', 'JD05', 1500.00, NULL, NULL, NULL, '雨量采集', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (124, '太阳能板供电系统', '水位计', NULL, '定制', '#', 2500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (125, '户外机箱', '水位计', NULL, '国产', '定制', 1500.00, NULL, NULL, NULL, '设备保护箱', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (126, '避雷器', '水位计', NULL, '湖南雷科星', '雷科星LKX', 450.00, NULL, NULL, NULL, '信号避雷', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (127, '防雷接地', '水位计', NULL, '#', '#', 3500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (128, '测井安装', '水位计', NULL, '#', '#', 12000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (129, '立杆基层', '水位计', NULL, '#', '#', 3500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (130, '安装调试费用', '水位计', NULL, '#', '#', 3000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (131, '电话卡', '水位计', NULL, '移动', '#', 1800.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (132, '超声波水位计', '水位计', NULL, '联测仪表', '#', 1600.00, NULL, NULL, NULL, '1、功能：一体型\n2、量程：0~2米。\n3、测量精度：0.25%-0.5%。\n4、分辨率：3mm或0.1% (取大者)。\n5、显示：中文液晶显示。\n6、模拟输出：4线制4~ 20mA/510Ω负载 ，2线制4~ 20mA/ 250Ω负载。\n7、继电器输出：可选配2组AC，250V/8A或DC， 30V/5A，状态可编程。\n8、供电：12VDC，可选220V，AC+15%，50Hz。\n9、环境温度：显示仪表-20~+60°C，探头-20~+80°C。\n10、通信：可选485，232通信。\n11、防护等级：显示仪表IP66，探头IP68。\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (133, '遥测终端机', '水位计', NULL, '#', '#', 1600.00, NULL, NULL, NULL, '包括3G、4G通信模块，有线传输模块，详见本章节参数', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (134, '金属防护箱', '水位计', NULL, '#', '#', 570.00, NULL, NULL, NULL, '野外防护箱，防湿防潮，内置隔板，外置锁具，内装采集仪，蓄电池，太阳能控制器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (135, '支架', '水位计', NULL, '#', '#', 850.00, NULL, NULL, NULL, '金属喷漆一体式支架，牢靠稳固，外观美观，承载防护箱、传感器、太阳能等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (136, '太阳能供电系统', '水位计', NULL, '#', '#', 2800.00, NULL, NULL, NULL, '太阳能电池板 30W 1块；太阳能板支撑架 1套；蓄电池25AH 1个；太阳能控制器1套； ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (137, '通信模块', '水位计', NULL, '#', '#', 1100.00, NULL, NULL, NULL, '采用TCP透明传输，数据传至气象软件', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (138, '通信费', '水位计', NULL, '#', '#', 300.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (139, '自动化控制', '闸站自动化', NULL, '#', '#', 0.00, NULL, NULL, NULL, '部署在闸门控制室及闸门现地', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (140, '监控屏体', '闸站自动化', NULL, '#', '#', 9000.00, NULL, NULL, NULL, '高 2.2m', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (141, '可编程控制器', '闸站自动化', NULL, '#', '#', 25000.00, NULL, NULL, NULL, '含背板、电源、控制、通信模块,进行 PLC 编程并通信', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (142, '液晶触摸屏', '闸站自动化', NULL, '#', '#', 4500.00, NULL, NULL, NULL, '10\"及以上 含应用软件', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (143, 'UPS', '闸站自动化', NULL, '#', '#', 14000.00, NULL, NULL, NULL, '3kVA 2h 配铅酸蓄电池（带电池架）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (144, '分水闸远程控制站', '闸站自动化', NULL, '#', '#', 33330.00, NULL, NULL, NULL, '含背板、电源、控制、通信模块 触摸屏 现地箱,进行PLC 编程并通信', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (145, '闸门现地控制箱', '闸站自动化', NULL, '#', '#', 22828.00, NULL, NULL, NULL, '高 1m 带小型 PLC 及触摸屏,进行 PLC 编程并通信', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (146, '控制电缆阻燃型', '闸站自动化', NULL, '#', '#', 10500.00, NULL, NULL, NULL, 'ZR-KVVP-8×1.5', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (147, 'RS485 总线电缆', '闸站自动化', NULL, '#', '#', 2300.00, NULL, NULL, NULL, '阻燃型', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (148, '动力电缆', '闸站自动化', NULL, '#', '#', 12200.00, NULL, NULL, NULL, 'YJV-0.6/1-3×6', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (149, '一体化控制器', '闸站自动化', NULL, 'HORNER', 'HE-X2A', 1200.00, NULL, NULL, NULL, '内置12DI/12DO/4AI/2AO,4-20mA,12bit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (150, '一体化泵房主体', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'L*W*H=3*3.5*3.5m；\n含基础4*4*0.2m的C20砼基础', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (151, '推拉门', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '配套泵房尺寸', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (152, '窗户', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '配套泵房尺寸', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (153, '通风口', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN200', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (154, '专用农田灌溉泵', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '15KW，Q=132m³/h，进出水口DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (155, '配套底座', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '泵站电机配套', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (156, '真空泵', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '与水泵配套', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (157, '配套水箱', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '与真空泵配套', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (158, '配套真空管路系统', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '与真空泵配套', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (159, '进水管', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (160, '出水管', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (161, '出水柔性接头', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (162, '压力管路系统', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (163, '流量计', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (164, '电动阀', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN250', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (165, '电动阀', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, 'DN25', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (166, '智能控制柜', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '泵站配套，变频控制，含PLC、触摸屏、远传模块、继电器、断路器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (167, '压力式水位计', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '4-20mA输出', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (168, '辅材配件', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '螺母、管路接线等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (169, 'NVR', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '4路，1盘位，含2T硬盘', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (170, '4G路由器', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '4G全网通', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (171, '交换机', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '8个10/100M自适应RJ45端口；\n电源：5VDC/0.4A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (172, '辅材配件', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '监控安装支架等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (173, '市电接入', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '市电380V接入', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (174, '半球型摄像机', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '200万1/2.7″ CMOS ICR日夜型半球型网络摄像机；\n视频压缩标准：H.264/MPEG；\n最大图像尺寸：1920×1080；\n调整角度：水平0-355°，垂直0-70°；\n接口协议：ONVIF，PSIA，CGI；\n通讯接口：1个RJ45 10/100M自适应以太网口；\n工作温度：-10-40℃；\n电源：DC12V±25%；\n功耗：3.5W MAX；\n红外照射距离：10-30m。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (175, '球机', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '1/2.8英寸 Progressive Scan CMOS；\n有效像素：200万；\n焦距：4.8-115mm，20倍光学；\n支持360°水平旋转，垂直方向-15-90°\n分辨率：1920×1080；\n防护等级：IP66；\n电压：AC24V；\n工作温度：-30-65℃', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (176, '4G路由器', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '4G全网通；\n支持2.4G频段；\n接口类型：1个标准SIM接口（大卡），1个千兆WAN/LAN网口，1个SMA外置天线接口；\n操作系统：支持Windows Vista SP1/SP2、Windows7等；\n供电方式：AC：170-240V 50Hz/60Hz。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (177, '通信费', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (178, '安装附件', '闸站自动化', NULL, '洁夫森', '#', 140000.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (179, '直流电机', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 570.00, NULL, NULL, NULL, '直流电机，功率700w', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (180, '闸位计', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 4000.00, NULL, NULL, NULL, '工作电压：DC12—24V\n工作温度：-20—75℃\n消耗电流：≤70mA\n防护等级：IP64\n输出信号：4-20mA，并行格雷码，RS485', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (181, '上下行程限位', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 60.00, NULL, NULL, NULL, '防护等级：IP52\n额定电压：AC-15:380V DC-13:220V\n额定控制电流：AC-15:0.8A DC-13:0.15A\n操作频率：20次/分\n环境温度：-5℃--40℃\n应用范围：限制运动机构或程序控制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (182, '闸门控制柜', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '柜式，一控二，包含柜内器件，电流电压表，信号指示灯，按钮', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (183, 'PLC', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 700.00, NULL, NULL, NULL, '24VDC供电；\n36输入/24输出；\n高速计数：4路60kHz；\n高速脉冲输出：3路100kHz；\n通信端口：2-3；\n最大开关量I/O：188；\n最大模拟量I/O：24', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (184, '闸门触控彩屏', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 218.00, NULL, NULL, NULL, '屏幕尺寸：7英寸；\n显示颜色：6.4万色；\n具有以外网接口、RS232串口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (185, '交换机', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 800.00, NULL, NULL, NULL, '8个10/100M自适应RJ45端口；\n电源：5VDC/0.4A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (186, '球机', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 380.00, NULL, NULL, NULL, '1/2.8英寸 Progressive Scan CMOS；\n有效像素：200万；\n焦距：4.8-115mm，20倍光学；\n支持360°水平旋转，垂直方向-15-90°\n分辨率：1920×1080；\n防护等级：IP66；\n电压：AC24V；\n工作温度：-30-65℃', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (187, '摄像机安装支架', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 50.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (188, '太阳能板', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 585.00, NULL, NULL, NULL, '功率150W的单晶硅太阳能板', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (189, '蓄电池', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 880.00, NULL, NULL, NULL, '容量100AH /12V铅酸免维护可充电蓄电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (190, '太阳能充电控制器', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 260.00, NULL, NULL, NULL, '12V/24V自动识别；\n浮充电压13.8V；\n额定充电电流20A；\n过压断开电压：16.0V；\n工作温度：-10-50℃。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (191, '枪式摄像机', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 400.00, NULL, NULL, NULL, '200万1/2.7\"CMOS摄像机；\n最大图像尺寸：1920×1080；\n1个RJ4510M/100M自适应以太网口；\n工作温度：-30℃~60℃,湿度小于95%(无凝结)；\n功耗：7WMAX；\n防护等级：IP67；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (192, '壁挂摄像机支架', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 50.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (193, 'NVR', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '网络视频输入：8路；\n1路HDMI，1路VGA，1个RCA接口；\n1个SATA接口，支持最大6TB硬盘；\n含1个2TB的硬盘；\n电源：DC12V；\n工作温度：-10-+55℃；\n工作湿度：10%-90%；\n功耗（不含硬盘）：≤10W', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (194, '7m电杆', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '长度：7m，电杆直径150mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (195, '架空铝线', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '25mm2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (196, '横担', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 35.00, NULL, NULL, NULL, '铸铁', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (197, '不锈钢抱箍', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 10.00, NULL, NULL, NULL, '不锈钢材质', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (198, '绝缘子', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 30.00, NULL, NULL, NULL, '陶瓷', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (199, '电表箱（含开户）', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 100.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (200, '辅材配件', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (201, '监控立杆', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 2200.00, NULL, NULL, NULL, '1、主体高度：4米。2、直径：80mm。3、壁厚：5mm。4、表面处理：喷塑、表面白色处理。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (202, '水泥基座', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '1000mm*1000mm*1000mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (203, '辅材', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '1、电源线：RVVP2*6(1500/100M)。2、信号线：RVVP4*0.5(300/100M）。3、网线：CAT5E（150/100M)。4、穿线管：50镀锌管(11元/m)。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (204, '流量率定', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (205, '红外探测报警器', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '报警时间：2s；\n语音输出：90dB；\n电池：3.6V AAA Ni-MH充电电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (206, '通信费', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (207, '磁致伸缩水位计', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 500.00, NULL, NULL, NULL, '1.测量精度：±2mm；\n2.分辨率：0.5mm；\n3.输出信号：RS485；\n4.通信协议：modbus RTU；\n5.测量温度范围：-35℃--75℃；\n6.液位测量范围：0—3000mm；\n7.电源：7V—30V/DC。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (208, '磁致伸缩水位计保护管及支架', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制；闸前和闸后', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (209, '磁致伸缩水位井', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制；闸前和闸后', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (210, '一体化测控智能闸门', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 26325.00, NULL, NULL, NULL, '宽*高：0.6*0.6m，包括直流电机、减速器、编码器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (211, '一体化测控智能闸门', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 56997.00, NULL, NULL, NULL, '宽*高：1.0*1.0m，包括直流电机、减速器、编码器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (212, '闸门控制器', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 5200.00, NULL, NULL, NULL, '包括3G、4G通信模块，有线传输模块', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (213, '测流箱', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 14000.00, NULL, NULL, NULL, '与一体化闸门配套，超声波时差法测流', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (214, '控制柜(挂式)', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '1、配置：带锁，包括直流空开、浪涌保护器、中间继电器、电机控制器、接线端子等器件。2、材质：304不锈钢，板材厚度1.5mm。3、尺寸：500mm*300mm*850mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (215, '太阳能板', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 585.00, NULL, NULL, NULL, '功率80W的单晶硅太阳能板', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (216, '蓄电池', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 880.00, NULL, NULL, NULL, '容量100AH /12V铅酸免维护可充电蓄电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (217, '太阳能充电控制器', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 260.00, NULL, NULL, NULL, '12V/24V自动识别；\n浮充电压13.8V；\n额定充电电流20A；\n过压断开电压：16.0V；\n工作温度：-10-50℃。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (218, '枪式摄像机', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 400.00, NULL, NULL, NULL, '200万1/2.7\"CMOS摄像机；\n最大图像尺寸：1920×1080；\n1个RJ4510M/100M自适应以太网口；\n工作温度：-30℃~60℃,湿度小于95%(无凝结)；\n功耗：7WMAX；\n防护等级：IP67；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (219, '监控立杆', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 2200.00, NULL, NULL, NULL, '1、主体高度：4米。2、直径：80mm。3、壁厚：5mm。4、表面处理：喷塑、表面白色处理。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (220, '水泥基座', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '1000mm*1000mm*1000mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (221, '电池井', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '800mm*800mm*800mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (222, '防雷接地', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '小于4Ω', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (223, '通信费', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '1、4G,根据现场信号情况选择移动、联通、电信运营商。2、三年通信费', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (224, '流量率定', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (225, '原土建设施拆除及闸门主体安装配套土建', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (226, '红外探测报警器', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '报警时间：2s；\n语音输出：90dB；\n电池：3.6V AAA Ni-MH充电电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (227, '拦污栅', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (228, '设备围栏', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (229, '一体化测控智能闸门', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 26325.00, NULL, NULL, NULL, '宽*高：0.6*0.6m，包括直流电机、减速器、编码器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (230, '闸门控制器', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 5200.00, NULL, NULL, NULL, '包括3G、4G通信模块，有线传输模块', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (231, '测流箱', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 14000.00, NULL, NULL, NULL, '与一体化闸门配套，超声波时差法测流', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (232, '控制柜(挂式)', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '1、配置：带锁，包括直流空开、浪涌保护器、中间继电器、电机控制器、接线端子等器件。2、材质：304不锈钢，板材厚度1.5mm。3、尺寸：500mm*300mm*850mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (233, '太阳能板', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 585.00, NULL, NULL, NULL, '功率80W的单晶硅太阳能板；最大工作电压17V，开路电压21V', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (234, '蓄电池', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 880.00, NULL, NULL, NULL, '容量100AH /12V铅酸免维护可充电蓄电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (235, '太阳能充电控制器', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 260.00, NULL, NULL, NULL, '12V/24V自动识别；\n浮充电压13.8V；\n额定充电电流20A；\n过压断开电压：16.0V；\n工作温度：-10-50℃。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (236, '枪式摄像机', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 400.00, NULL, NULL, NULL, '200万1/2.7\"CMOS摄像机；\n最大图像尺寸：1920×1080；\n1个RJ4510M/100M自适应以太网口；\n工作温度：-30℃~60℃,湿度小于95%(无凝结)；\n功耗：7WMAX；\n防护等级：IP67；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (237, '监控立杆', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 2200.00, NULL, NULL, NULL, '1、主体高度：4米。2、直径：80mm。3、壁厚：5mm。4、表面处理：喷塑、表面白色处理。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (238, '水泥基座', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '1000mm*1000mm*1000mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (239, '电池井', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '800mm*800mm*800mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (240, '防雷接地', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '小于4Ω', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (241, '通信费', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 1200.00, NULL, NULL, NULL, '1、4G,根据现场信号情况选择移动、联通、电信运营商。2、三年通信费', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (242, '流量率定', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (243, '闸门主体安装配套土建', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (244, '红外探测报警器', '闸站自动化', NULL, '成都万江智控科技有限公司', '#', 200.00, NULL, NULL, NULL, '报警时间：2s；\n语音输出：90dB；\n电池：3.6V AAA Ni-MH充电电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (245, '土壤温度传感器', '墒情', NULL, '南京南林电子', '#', 950.00, NULL, NULL, NULL, '测量范围：-50～80℃\n准 确 度：±0.5℃\n供电方式：DC2.5V    \n输出形式： 0～2.5V   \n负载能力：电流型输出阻抗≤300Ω\n          电压型输出阻抗≥1KΩ\n工作环境：温度-50℃～80℃，湿度≤100%RH\n产品重量：探头 145 g ，带采集仪 550 g \n产品功耗：0.5 mW\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (246, '土壤湿度传感器', '墒情', NULL, '南京南林电子', '#', 950.00, NULL, NULL, NULL, '测量范围：0～100%\n准 确 度：±3%\n供电方式： DC5V\n输出形式:0～2.5V\n负载电阻: 电压型：RL≥1K，电流型：RL≤300Ω\n工作温度：-50℃～80℃ \n相对湿度：0～100% \n产品重量：探头 220 g，带变送器 570 g \n产品功耗：275 mW\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (247, '土壤电导率传感器', '墒情', NULL, '南京南林电子', '#', 950.00, NULL, NULL, NULL, '测量范围：0~200mS/m（0-2000uS/cm）\n分 辨 率：0.2mS/m（2uS/cm）\n准 确 度：＜±7%\n耐    压：0.6Mpa\n电极常数：1.0\n供电方式：DC5/DC12/DC24V\n接线方式:电压型：3线、电流型：3线、RS-485信号：4线\n信号输出：电压型：0-5V    电流型：0-20mA      \nRS485信号：支持ModBus协议（波特率9600可设，地址0-255可设）\n仪器线长：2.5M\n负载能力：电流型输出阻抗≤250Ω    电压型输出阻抗≥1KΩ\n工作环境：温度-40℃～50℃     湿度≤100%RH    电压型：RL≥1KΩ\n工作环境：温度-50℃～85℃\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (248, '数据采集仪', '墒情', NULL, '南京南林电子', '#', 12000.00, NULL, NULL, NULL, '多通道数据采集，液晶屏幕显示，带232和485接口，LCD背光，进行数据采集、存储、及显示；供电方式：220V交流/12V直流并存', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (249, '金属防护箱', '墒情', NULL, '南京南林电子', '#', 570.00, NULL, NULL, NULL, '野外防护箱，防湿防潮，内置隔板，外置锁具，内装采集仪，蓄电池，太阳能控制器等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (250, '支架', '墒情', NULL, '南京南林电子', '#', 850.00, NULL, NULL, NULL, '金属喷漆一体式支架，牢靠稳固，外观美观，承载防护箱、传感器、太阳能等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (251, '太阳能供电系统', '墒情', NULL, '南京南林电子', '#', 2800.00, NULL, NULL, NULL, '太阳能电池板 30W 1块；太阳能板支撑架 1套；蓄电池25A.H 1个；太阳能控制器1套； ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (252, '串口通讯', '墒情', NULL, '南京南林电子', '#', 500.00, NULL, NULL, NULL, 'RS485通讯线1根，线长20米；RS232通讯线1根，线长10米；232转485转接头1个；USB转232转接线1根', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (253, '无线通信模块', '墒情', NULL, '南京南林电子', '#', 1100.00, NULL, NULL, NULL, '采用TCP透明传输，数据传至气象软件', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (254, '通信费', '墒情', NULL, '南京南林电子', '#', 300.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (255, '流量计', '自备井', NULL, '道盛', 'XCT-2000TH', 5000.00, NULL, NULL, NULL, '含主机、线缆、冷压端子、硅胶等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (256, 'RTU', '自备井', NULL, '威控', 'WRU-2000', 6700.00, NULL, NULL, NULL, '含DTU、避雷模块、天线', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (257, '固定杆', '自备井', NULL, '#', '#', 2000.00, NULL, NULL, NULL, '3米', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (258, '信号避雷器', '自备井', NULL, '#', '#', 290.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (259, '箱体、设备配件', '自备井', NULL, '#', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (260, '端子、空开等辅料', '自备井', NULL, '#', '#', 1500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (261, '防雷接地装置', '自备井', NULL, '#', '#', 650.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (262, '基础制作 包含水泥沙子等', '自备井', NULL, '#', '#', 1730.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (263, '蓝色壁挂插入式超声波流量计', '流量计', NULL, '道盛', 'XCT-2000TH', 4700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (264, '流量计', '流量计', NULL, 'E+H', 'DN200', 11189.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (265, '流量计', '流量计', NULL, 'E+H', 'DN250', 14687.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (266, '流量计', '流量计', NULL, 'E+H', 'DN300', 18205.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (267, '流量计', '流量计', NULL, 'E+H', 'DN350', 19915.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (268, '流量计', '流量计', NULL, 'E+H', 'DN400', 21646.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (269, '流量计', '流量计', NULL, 'E+H', 'DN450', 22637.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (270, '流量计', '流量计', NULL, 'E+H', 'DN500', 23606.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (271, '流量计', '流量计', NULL, 'E+H', 'DN600', 26240.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (272, '压力变送器', '流量计', NULL, 'E+H', '#', 1358.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (273, '多普勒在线式超声波流量计', '流量计', NULL, '#', ' ', 18000.00, NULL, NULL, NULL, '1. 测流范围：0.01～7.00m/s   测量准确度：1.0%±1cm/s\n2. 水温测量范围：-5～60℃   测温准确度：±1℃\n2. 水位范围：0～5m，0～10m\n3. 水位精度：0.5%±0.5cm\n4．流量范围：1升/秒～99999999立方米/小时\n5. 工作温度：0～60℃\n6. 测量间隔：自动方式：分0～120分钟选择值，以5分钟为最小递增或递减间隔单位 \n手动方式：可单次或连续多次测量，间隔任\n7．测速历时：自动方式：60秒、100秒二种\n手动方式：10～120秒，递增或递减键选择', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (274, '遥测终端机（RTU）', '流量计', NULL, '#', '1', 6000.00, NULL, NULL, NULL, '工作方式：自报、应答、兼容可设定\n  总线速率：300bps-57600 bps\n  环境温度：－30℃～＋70℃\n  相对湿度：≥95%RH（无凝露）\n  静态功耗：≤4mA@12VDC；\n  工作功耗：≤ 10mA@12VDC（不含通信模块）；\n  工作电压： 12VDC（太阳能浮充蓄电池直流供电或220V交流稳压电源供电，太阳能或交流供电中断时，能够自动切换至交流或太阳能供电，切换时间＜10秒）;\n  工作温度：-10℃～+65℃，-25℃～+45℃（根据当地实际工作温度选取）；\n  工作湿度：98％RH。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (275, '设备机箱及地埋箱', '流量计', NULL, '#', '#', 1600.00, NULL, NULL, NULL, '不锈钢', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (276, '断路器', '流量计', NULL, '#', '#', 30.00, NULL, NULL, NULL, '10A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (277, '熔断器', '流量计', NULL, '#', '#', 30.00, NULL, NULL, NULL, '交流4A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (278, '电源防雷器', '流量计', NULL, '#', '#', 280.00, NULL, NULL, NULL, '直流电源防雷器', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (281, '非满管电磁流量计', '流量计', NULL, '开封开流', 'LDM-51', 20000.00, NULL, NULL, NULL, '低频方波励磁，励磁频率:1/16工频;励磁电流可选定为 50mA、75Ma、100mA;流速测量范围:0.01 --- 10 米秒，流速分辨率:1 毫米秒;直流 12/24V 开关电源，电压适用范围:12VDC --- 30VDC;直流 3.6V 开关电源，电压适用范围:3.6VDC(特殊可选)网络功能:MODBUS(RTU)、TTL 电平 3.6V 供电;中文、英文显示方式;可分别记录:正向总量、反向总量显示十位;可用于开放式非满管管道(圆管、矩形管或其它异形管)流量的测量 ■ 可应用于市政雨水、废水、污水排放和灌溉用水管道等场所的连续计量 ■ 可实现正向和反向双向流量测量；传感器可在恶劣的现场和污水水质下长期可靠工作；流量测量精度高，而且不受下游、支流雍水、阻塞等因素的影响；测量管道的直管段要求较短；大屏幕、背光源液晶显示器，不管是强光下还是夜晚都能够清晰读取测量数椐；仪表显示及输出功能齐全，可显示瞬时流量、流速、累积流量等数据，并具有计算机通讯接口 485。具有 GSM 和 GPRS 无线数据远传功能(可选)公称通径:圆形管道DN100~DN6000(超声型液位计:水深测量 DN<h 范围>2cm;压力性液位计 2DN<h 范围>2cm。DN 是口径大小)矩形管道 宽度≤6m; 深度≤32m', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (284, '雷达流量计', '流量计', NULL, '武汉德希科技', '#', 14500.00, NULL, NULL, NULL, '测速范围：0.1~20米/秒；测速精度：±0.01米/秒；±1%FS；测速频率：24GHz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (285, '遥测终端机', '流量计', NULL, '武汉德希科技', '#', 4500.00, NULL, NULL, NULL, '①具有同时连接翻斗式雨量计、水位传感器、高清数字摄像机、同时支持两种通信信道，支持RS-232C、RS-485、SDI-12、0-5V和4-20mA等协议\n②具有大容量FLASH存储，大于8M存储；\n③整机工作状态电流应不大于100mA；\n④在-10°C、45°C、95%（40°C时）三种工作环境条件下各保持4小时\n⑤额定电压恒定为12V，在支流10.2V-14.4V范围能正常工作\n⑥工作温度：-20~+70℃\n⑦湿度：≤95%（+40℃时）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (286, '一体化野外机柜', '流量计', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '304材质1.0mm厚板不锈钢制防水机箱；尺寸≥0.5×0.4×0.25m(高×宽×深)；内有1.2mm厚镀锌安装板，不含安装板深22cm；门可开启110度以上，门上设防水防尘密封条，内设有接线孔和绑线架；可挂在墙上或立杆上；承重35KG', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (287, '无线通信模块', '流量计', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '与遥测终RTU为同一品牌；\n工业化GPRS/GSM标准模块，通过RS-232C与RTU连接，GPRS/GSM模块可由RTU操作控制；\n支持GPRS Class10/Class 12和GSM phase 2/2+，理论带宽 85.6Kbps；\n功耗（mA@12V）：≤140mA（工作），≤30mA（空闲）；\n电压范围：+3.3V~+26V；\n工作温度：－25～+60℃', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (288, '蓄电池', '流量计', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '容量不小于100AH /12V铅酸免维护可充电蓄电池', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (289, '太阳能电池板', '流量计', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '功率不小于80W的单晶硅太阳能板；最大工作电压17V，开路电压21V', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (290, '太阳能充电控制器', '流量计', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '12V/24V自动识别；\n浮充电压13.8V；\n额定充电电流20A；\n过压断开电压：16.0V；\n工作温度：-10-50℃。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (291, '太阳能电源线', '流量计', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, 'RVV2*1.0', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (292, '太能板支架', '流量计', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '高强度铝合金Al6005-T5或不锈钢304材质', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (293, '信号电缆', '流量计', NULL, '武汉德希科技', '#', 6500.00, NULL, NULL, NULL, '屏蔽电缆RVVP4×0.3；DN15镀锌管套护', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (294, '设备安装支架', '流量计', NULL, '武汉德希科技', '#', 2800.00, NULL, NULL, NULL, '304不锈钢钢管；钢管为直径不小于140mm、壁厚不小于5mm，高度不小于3米。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (295, '避雷器', '流量计', NULL, '武汉德希科技', '#', 2800.00, NULL, NULL, NULL, '1.额定信号工作电压：12V；\n2.标称放电电流（8/20us）5KA；\n3.响应时间：≤1ns；\n4.外壳防护等级：≥IP20。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (296, '信号避雷器', '流量计', NULL, '武汉德希科技', '#', 2800.00, NULL, NULL, NULL, '1.工作电压：12V；\n2.被保护脚：1～9脚；\n3.传输速率bit/s：1M；\n4.标称放电电流8/20μs/kA：5；\n5.插入损耗dB：≤0.5dB；\n6.限制电压10/700μsV：≤40。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (297, '避雷针及接地系统', '流量计', NULL, '武汉德希科技', '#', 2800.00, NULL, NULL, NULL, '包括避雷针、引下线及接地装置；接地地网的接地电阻应满足避雷小于<10Ω，设备接地电阻<4Ω的指标。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (298, '基本水尺', '流量计', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '定制', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (299, '水尺零点高程测量', '流量计', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '水尺零点高程记至1mm，测量要求按四等水准。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (300, '水准点', '流量计', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '一基，两校', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (301, '水准点高程测量', '流量计', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '水准点高程从国家三等及以上水准点引测', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (302, '水泥底座', '流量计', NULL, '武汉德希科技', '#', 0.00, NULL, NULL, NULL, '基座的尺寸为500mm×500mm×700mm；使用C25混凝土', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (303, '通信费', '流量计', NULL, '武汉德希科技', '#', 300.00, NULL, NULL, NULL, '3年', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (304, '翻斗式雨量计', '雨量计', NULL, '南水', 'JDZ05-1', 1600.00, NULL, NULL, NULL, '承雨口内径：Φ200mm仪器分辨力：0.5mm（KNS-JDZ05-1型）；0.2mm（KNS-JDZ02-1型）降雨强度测量范围：0.01～4mm/min翻斗计量误差：≤±4%输出信号方式：磁钢—干簧管式接点开关通断信号开关接点容量：DC V≤12V，I≤120mA接点工作次数：1×107次工作环境温度：-10℃～+50℃', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (305, '一体化控制器', 'PLC', NULL, '浩奈尔', 'HE-X2A', 1200.00, NULL, NULL, NULL, '内置12DI/12DO/4AI/2AO,4-20mA,12bit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (306, 'GPRS', 'PLC', NULL, '浩奈尔', '数据远程模块', 600.00, NULL, NULL, NULL, '可支持4G', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (307, '组态软件', 'PLC', NULL, '浩奈尔', '组态软件', 15000.00, NULL, NULL, NULL, '512点，带网桥，远程传输功能', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (308, '花生壳软件', 'PLC', NULL, '浩奈尔', '花生壳软件', 1000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (309, '控制器', 'PLC', NULL, '重庆川仪', '#', 1556.00, NULL, NULL, NULL, '电源/输入/输出：24V UC/24V UC/继电器， 集成以太网接口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (310, '模拟量扩展模块', 'PLC', NULL, '重庆川仪', '#', 1260.00, NULL, NULL, NULL, '模拟量输入模块，电源：12/24VDC，2 AI，输入范围： 0 - 10V 或 0/4- 20mA', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (311, '工业物联网关', 'PLC', NULL, '重庆川仪', '#', 2980.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (312, '控制箱', 'PLC', NULL, '重庆川仪', '#', 2000.00, NULL, NULL, NULL, '含选择开关、继电器、断路器、电源等', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (313, '现场安装调试', 'PLC', NULL, '重庆川仪', '#', 8000.00, NULL, NULL, NULL, '原系统改造安装、编程调试', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (314, '工业物联网关', 'PLC', NULL, '重庆川仪', '#', 2980.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (315, '工控机', 'PLC', NULL, '重庆川仪', '#', 5600.00, NULL, NULL, NULL, 'ptiPlex 7050MT 商用台式电脑主机  i7-7700丨8G丨1TB丨集成显卡', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (316, '显示器', 'PLC', NULL, '重庆川仪', '#', 1100.00, NULL, NULL, NULL, '24吋显示器', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (317, '组态软件', 'PLC', NULL, '重庆川仪', '#', 12500.00, NULL, NULL, NULL, 'WINCC RC  128点', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (318, '水质多参数自动在线监测仪（水温、PH、电导率、浊度、ORP、溶解氧）', '水质检测', NULL, 'GH（国弘，中国）MQPC-10，MQ-PH01，     MQ-ORP01，       MQ-Cond01，      MQ-FDO01，       MQ-TURB01', 'HACH SC1000、DPD1R1、D3725E2T、LXV423、9020000、DRD1R5、YAB021', 138000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (319, '氨氮监测仪', '水质检测', NULL, 'GH（国弘，中国） MQ-NH01', 'WTW  AmmoLyt Plus 700 ', 52000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (320, '采配水系统', '水质检测', NULL, '泰豪定制', '#', 21000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (321, '控制单元、数据采集及传输系统', '水质检测', NULL, '泰豪定制', '#', 34000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (322, '4G通讯费（1年）', '水质检测', NULL, '移动通讯', '#', 1200.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (323, '浮台', '水质检测', NULL, '#', '#', 7500.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (324, '供电系统', '水质检测', NULL, '晶科、山特', '#', 5600.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (325, '太阳能立杆、机箱、基座', '水质检测', NULL, '康达', '#', 18000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (326, '电源避雷', '水质检测', NULL, '普天湘宜防雷 DXH10-F/3', '#', 150.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (327, '信号避雷', '水质检测', NULL, '普天湘宜防雷QFL10-CH4/24L', '#', 150.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (328, '变送器', '水质检测', NULL, 'E+H', '变送器', 26064.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (329, '浊度', '水质检测', NULL, 'E+H', '浊度', 17699.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (330, '电缆', '水质检测', NULL, 'E+H', '电缆', 3743.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (331, 'pH', '水质检测', NULL, 'E+H', 'pH', 3084.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (332, '余氯', '水质检测', NULL, 'E+H', '余氯', 15668.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (333, '水质在线监测仪', '水质检测', NULL, '雷磁', ' ', 200000.00, NULL, NULL, NULL, '是一款新型多参数、宽量程的水质监测仪器，可用于地表水、地下水、水源水、饮用水、污水排放口、海洋等不同水体的水质在线及便携监测。监测参数包括pH、浊度、电导率（盐度、总溶解固体、电阻）、溶氧、温度、氨氮', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (334, 'RTU设备(含DTU、避雷模块、天线) ', '水质检测', NULL, '雷磁', ' ', 6685.00, NULL, NULL, NULL, '1、具有GSM/GPRS/CDMA1X、北斗卫星通讯方式；2、支持多中心工作模式，可向至少6个中心站发送数据，每个中心可拥有两种通信信道且互为备份；3、具有大容量32MB FLASH存储，雨量数据至少可以存储5年；4、雨量计分辨率任意可选，采用增量控制、定时控制两种数据发送机制；5、支持低功耗、永在线二种电源管理模式；6、具有定时自检发送、死机自动复位、站址设定、掉电数据保护、实时时钟校准；7、可接受分中心管理，与分中心实现双向通信；支持远程诊断、远程设置、远程维护等；8、可实现人工置数以及对测站的配置；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (335, '电源控制器', '水质检测', NULL, '#', '#', 248.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (336, '信号避雷器  ', '水质检测', NULL, '#', '#', 287.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (337, '箱体、水泵、设备配件', '水质检测', NULL, '#', '#', 4200.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (338, '防雷接地', '水质检测', NULL, '#', '#', 1000.00, NULL, NULL, NULL, '30米', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (339, '防雷器', '水质检测', NULL, 'towe', 'TPS-D10-230V', 200.00, NULL, NULL, NULL, '二合一防雷', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (340, '端子、空开等辅料', '水质检测', NULL, '#', '#', 1428.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (341, '蓄电池', '水质检测', NULL, '#', '#', 750.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (342, '太阳能电池板', '水质检测', NULL, '#', '#', 1100.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (343, '太阳能电池板支架', '水质检测', NULL, '#', '#', 300.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (344, 'SIM卡', '水质检测', NULL, '联通', '#', 99.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (345, '线缆', '水质检测', NULL, '#', '#', 50.00, NULL, NULL, NULL, '适配', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (346, '电源控制器', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '12V/10A', 248.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (347, '信号避雷器  ', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', 'QFL06-MG', 287.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (348, '箱体、设备配件', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 1700.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (349, '端子、空开等辅料', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 1428.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (350, '蓄电池', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '20AH', 260.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (351, '太阳能电池板', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '20W', 430.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (352, '太阳能电池板支架', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 136.70, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (353, '固定杆', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 1976.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (354, '防雷接地装置', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '30米', 470.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (355, '防雷接地装置', '电源设备', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '50米', 649.90, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (356, '服务器', '机房建设', NULL, '浪潮', 'NF5270M4', 20000.00, NULL, NULL, NULL, '2609V4*2  16G*4   1TSATA*2 主板集成双口千兆网卡 550W单电 导轨  ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (357, '存储服务器', '机房建设', NULL, '大华', 'DH-EVS50A16S-R', 9100.00, NULL, NULL, NULL, '1、处理器：64位多核处理器，嵌入式LINUX系统,4G内存，可扩展至128G SSD\n2、支持IPC视频流直存，支持客户端直取视频流\n3、支持ONVIF、GB28181等协议\n4、接口要求：2个千兆数据网口、1个RS232串口，具有2个电源模块，能独立进行工作\n5、3U精细化机箱，支持16块硬盘,硬盘支持配置 1T、2T、3T、4T、5T、6T，8T\n6、支持以太网TCP/IP协议，支持SIP、RTSP、RTP、RTCP等网络协议，并支持IP组播技术\n7、支持Raid0、Raid1、Raid3、Raid4、Raid10、Raid50、Raid60、SRAID、JBOD\n8、可自动识别磁盘容量，可划分多个容量不同的数据存储空间\n9、支持同时进行1024Mbps视（音）频码流存储，1024Mbps视（音）频码流转发、384Mbps视（音）频码流回放；\n10、本次配置64T硬盘空间；\n11、★最多可支持同时损坏8块盘时所属RAID存储数据不丢失，可以正常读写（提供公安部有效检测报告复印件加盖厂商公章佐证）\n12、★支持1/16、1/8、1/4、1/2、2、4、8、16、32、64、128、256倍速录像回放；（提供公安部有效检测报告复印件加盖厂商公章佐证）\n13、★设备可对硬盘进行加密和解密；（提供公安部有效检测报告复印件加盖厂商公章佐证）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (358, '视频质量诊断服务器', '机房建设', NULL, '大华', 'DH-NMS8A100-LX-W/1000', 16000.00, NULL, NULL, NULL, '1、支持对摄像机进行轮巡检测分析，对视频的清晰度、亮度、对比度、颜色、运动、噪声、相似度等进行量化，并对出现的视频模糊、高亮异常、低亮异常、偏色、低对比度异常、视频抖动运动、噪声过大、画面黑白、条纹干扰、视频丢失、视频冻结、视频遮挡等检测\n2、支持一键配置诊断，将系统中所有通道自动配置到诊断预案中；\n3、支持多个平台的状态检测，能够自动同步平台中的设备、服务、组织资源; 内置1000路视频质量诊断功能\n4、支持一键检测、生成检测报表操作,支持问题设备清单导出;\n5、支持在电子地图上直接报修、设备报备、报修历史查询、录像回放、实时视频播放和实时抓图\n6、支持配置报警预案，通道离线、组织在线率过低和平台服务状态事件联动短信和邮件\n7、支持录像完整率检测、在线状态检测、IPSAN磁盘状态检测；\n8、支持私有协议设备或者第三方设备硬盘状态检测，显示单盘、RAID盘状态、容量、电源状态、主备状态、网口状态等相关信息\n9、支持电子流报修系统，规范维修流程，实现无纸化办公;支持实时视频播放、录像回放等基本视频监控功能\n10、支持摄像机在线数统计表、视频质量统计表、摄像头在线率统计表、卡口设备状态统计表、设备在线数统计表、设备故障次数统计表、设备维修及时率统计表，支持导出EXCEL、PDF、WORD,打印预览,Flash、Applet打印方式,支持PNG,BMP,JPG图片格式导出\n11、支持对离线、点播失败、抓图失败、无信号通道巡检；支持重检失败点、全部重检\n12、支持按照时间、录像保存天数和关键字进行查询录像，查询结果包含通道的录像状态、录像保存天数、当天录像情况，且支持查询结果导出EXCEL；\n13、具有支持对摄像机、硬盘录像机、编码器、网络设备、矩阵设备、智能设备等设备管理、报警管理、统计分析等功能\n14、每个监控点建立详细、完备的点位“户籍档案”；\n15、支持点位状态统计，支持正常、维修、断电、拆迁等数量和占比统计，支持统计总点位情况', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (359, '硬盘（4T）', '机房建设', NULL, '希捷', 'ST4000NM0035', 1100.00, NULL, NULL, NULL, '4T企业级', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (360, '网络控制键盘', '机房建设', NULL, '大华', 'DH-NKB5000A', 10150.00, NULL, NULL, NULL, '支持本地液晶屏和4路HDMI同时输出;\n支持支持H.265、H.264、H264H、H264B、MJPEG、SVAC、SmartH.264 、非标码流等标准网络视频流解码\n支持G711、PCM标准音频\n支持1/4/9/16等画面分割切换\n最大支持4路4K或者16路1080P同时本地解码显示\n双网卡，支持10M/100M/1000M自适应以太网接口\n支持wifi无线接入\n2个USB2.0，2个USB3.0，4路报警输入输出硬件预留\n10.1英寸 1280*800电容屏/液晶屏\n支持4维操纵杆，控制云台方向及变倍\n【预览】支持DVR、NVR、EVS、IPC、SD等编码设备预览或者HDMI输出到大屏\n【预览】支持抓图、录像、云台控制；\n【设备管理】支持至少3万个通道添加到键盘\n【电视墙】支持解码器、大屏拼接器、矩阵等解码器设备进行电视墙控制\n【电视墙】支持电视墙布局配置，包括新建、编辑、保存电视墙\n【电视墙】支持任务，包括加载、新建、编辑、保存任务\n【电视墙】支持切分割、切换视频源、关闭通道、关闭窗口、云台控制；\n【平台】支持通过平台控制解码器、大屏拼接器、矩阵等解码设备在平台端建立的电视墙\n【平台】支持任务，包括加载、新建、编辑、保存任务 \n【平台】支持切分割、切换视频源、关闭通道、关闭窗口、云台控制；\n【回放】支持键盘硬盘录像机、U盘等录像在键盘本地进行回放\n【回放】支持快放16倍、慢放1/16、进度条控制、录像下载到本地\n【扩展】支持485方式PelcoD、PelcoP、SD1协议去控制球机', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (361, '高清解码器', '机房建设', NULL, '大华', 'DH-NVS0404DH', 12000.00, NULL, NULL, NULL, '支持本地液晶屏和4路HDMI同时输出;\n支持支持H.265、H.264、H264H、H264B、MJPEG、SVAC、SmartH.264 、非标码流等标准网络视频流解码\n支持G711、PCM标准音频\n支持1/4/9/16等画面分割切换\n最大支持4路4K或者16路1080P同时本地解码显示\n双网卡，支持10M/100M/1000M自适应以太网接口\n支持wifi无线接入\n2个USB2.0，2个USB3.0，4路报警输入输出硬件预留\n10.1英寸 1280*800电容屏/液晶屏\n支持4维操纵杆，控制云台方向及变倍\n【预览】支持DVR、NVR、EVS、IPC、SD等编码设备预览或者HDMI输出到大屏\n【预览】支持抓图、录像、云台控制；\n【设备管理】支持至少3万个通道添加到键盘\n【电视墙】支持解码器、大屏拼接器、矩阵等解码器设备进行电视墙控制\n【电视墙】支持电视墙布局配置，包括新建、编辑、保存电视墙\n【电视墙】支持任务，包括加载、新建、编辑、保存任务\n【电视墙】支持切分割、切换视频源、关闭通道、关闭窗口、云台控制；\n【平台】支持通过平台控制解码器、大屏拼接器、矩阵等解码设备在平台端建立的电视墙\n【平台】支持任务，包括加载、新建、编辑、保存任务 \n【平台】支持切分割、切换视频源、关闭通道、关闭窗口、云台控制；\n【回放】支持键盘硬盘录像机、U盘等录像在键盘本地进行回放\n【回放】支持快放16倍、慢放1/16、进度条控制、录像下载到本地\n【扩展】支持485方式PelcoD、PelcoP、SD1协议去控制球机', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (362, '监控综合管理平台', '机房建设', NULL, '大华', 'DH-DSS70A16S2-D', 24000.00, NULL, NULL, NULL, '1、嵌入式LINUX系统，集视频监控、存储、转发、解码上墙、录像回放、电子地图、报警管理等多功能与一体的综合监控管理平台。\n2、支持16块SATA盘，支持SSD盘，支持风扇、存储盘的热插拔\n3、具备7寸交互式彩色液晶前面板，支持系统信息显示和操作配置\n4、性能：多址模式下支持接入、存储、转发各800Mbps；转发和存储性能相互独立；绑定模式下支持接入、存储、转发各1600Mbps；转发和存储性能相互独立；\n5、支持查看服务器运行状态、设备运行状态、用户状态；\n6、具备4个千兆网口，支持网卡绑定，多址，容错三种模式，支持多网段及内外网接入\n7、支持发送RTSP、RTMP协议实时码流,支持进行flv、avi、mp4格式的视频预览，支持HLS取视频流\n8、支持iphone,ipad,android手机客户端\n9、支持Raid功能，包括Raid0、Raid1、Raid5、Raid6、Raid10、Raid50、Raid60、JBOD，支持全局热备和本地热备\n10、实时预览支持1/4/6/8/9/13/16/20/25/36多分屏画面显示，支持画面比例八档调整：满屏,1:1,16:9,4:3,5:4,4:5,3:4,9:16\n11、支持鱼眼校正，支持壁装、顶装、地装多种模式\n12、支持批量修改设备的密码，IP及所属组织\n13、支持鱼球联动，点击鱼眼画面，能联动球机自动旋转至点击区域并聚焦\n14、支持报警联动，支持语音播报方式报警\n15、支持光栅图级联，支持鹰眼图浏览，支持即时模式视频上墙，支持融合开窗漫游\n16、支持智能应用功能，支持行为分析、人数统计等智能化功能接入\n18、支持多平台上下级联\n19、支持网络远程维护，支持系统备份还原\n20、★支持N+M集群，支持平台上下6级级联。支持磁盘负载均衡工作，支持存储配额设置，淡忘存储，将对指定天数的录像进行抽帧存储，支持小文件存储（以公安部有效检验报告佐证）\n21、★支持视频抢占，支持视频分享，支持零通道编码预览；支持自动切换主辅码流。支持视频上墙轮巡计划，可根据时间点或时间间隔进行自动切换；支持上墙回显，上墙分割窗口显示视频通道的当前画面，仅显示一帧画面；支持添加、删除、修改轮巡任务，快速启动轮巡任务；支持定时开启/修改轮巡计划，并导入、导出数据。（以公安部有效检验报告佐证）\n22、★支持资源重配功能，可以重新分配设备资源；支持白名单设置；支持数据迁移；支持初始用户名密码强制修改。（以公安部有效检验报告佐证）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (363, '55寸LCD液晶拼接屏', '机房建设', NULL, '大华', 'DHL550UCM-ESA', 4500.00, NULL, NULL, NULL, '1、屏幕尺寸55寸，LED光源；\n2、分辨率：1920×1080，双边拼缝≦3.5mm，响应时间≦8ms；功耗≦100W；\n3、亮度不低于500cd/m2；分辨率：1920×1080，水平可视角度≧178°，垂直可视角度≧178°，水平分辨力≥800TVL，亮度鉴别等级≥10级\n4、输入接口支持：BNC、VGA、DVI、HDMI；输出接口支持：BNC；\n5、显示单元及拼接墙具有良好的散热风道设计，通过内置智能散热系统及时的将热量快速散发，保证整机的使用寿命；\n6、领先的智能巡航技术，智能设置显示单元的信号源，可实现信号源自动切换，并且可自动巡航显示各通道的信号源；\n7、显示单元支持对某些重要信号通道提供冗余保护，提高稳定安全性；\n8、显示单元平均无故障工作时间MTBF≧80000小时；\n9、★液晶显示单元采用分体式结构设计，支持屏体与驱动单元分开安装及拆卸，整体美观大方的同时最大程度降低项目后期运营维护成本及难度（提供第三方权威机构复印件加盖厂商公章）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (364, '拼接支架（含线缆）', '机房建设', NULL, '大华', 'DHL-DZ-55', 1500.00, NULL, NULL, NULL, '大屏底座含支架', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (365, '输入板卡', '机房建设', NULL, '大华', 'VEC0404HD-M70', 5500.00, NULL, NULL, NULL, 'DVI-I接口；H.264/MPEG4；单板4路1080P，支持1080P/720P/UXGA/SXGA+/SXGA/XGA/SVGA/VGA分辨率', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (366, '输出板卡', '机房建设', NULL, '大华', 'VDC0605H-M70', 10800.00, NULL, NULL, NULL, '6路HDMI视频接口\n支持8路4096*2160@25fps，8路3840*2160@30fps ，32路1080p@30fps（H.264、H.265），72路720p@30fps，150路D1解码\n支持32路1080P的H.265解码\n支持8路1080P的SVAC解码\n支持24路非标D1码流解码', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (367, '拼接解码一体机', '机房建设', NULL, '大华', 'DH-M70A-4U-E', 12000.00, NULL, NULL, NULL, '1、标准19\"机架设计，机箱高度不超过4U，槽位不少于12个；\n2、支持刀片式音视频图像处理板，可根据需要配置不同数量的输入板和输出板，最大可以配置1块主控板、1块控制板、10块业务板，板卡支持热插拔；\n3、视频输入板支持：SDI接口(单板8路)、BNC接口(单板32路)、DVI/HDMI/VGA接口(单板4路)，视频输出接口支持：DVI/HDMI/VGA接口(单板4路)；\n4、内置至少2个千兆网络接口，支持网络交换功能，流媒体网关，网络隔离功能，具有多网口绑定功能；\n5、具备RS232串口，通过串口可对大屏进行手动开关、屏幕调节、定时开关机控制；\n6、处理器有效带宽800Gbps，其中上行、下行有效带宽各自为400Gbps；\n7、输入卡要求有VGA信号自动校正功能；\n8、单块解码板最高可支持不低于：128 路704×574@30fps，或64路1280×720@30fps，或32路1920×1080@30fps（H.264和H.265），或24路2048×1536@25fps，或8路3840×2160@16fps，或6路4096×2160@25fps，或8路4000×3000@15fps的视频解码能力；\n9、设备具备解码功能，分辨率支持：1200W/800W/500W/300W/1080P/UXGA/720P/4CIF/CIF/QCIF，支持解码H.265码流；\n10、支持监控视频解码上墙和计算机桌面视频解码上墙，输出可混合多种视频输入源，支持实时/流畅的解码策略可调节功能，输出板分辨率最大为4096*2160；\n11、DVI、VGA、HDMI输出支持倍帧畅显功能，支持25或30帧的监控视频帧率倍化为50或60帧输出；\n12、设备主控板具备码流接收转发功能，最大支持100路（1080P分辨率、25帧/s、8Mbps）码流的接收转发能力；\n13、支持ISCSI、IPSAN等存储方式，支持录像查询、回放、下载，支持录像直接上墙回放；\n14、支持开窗、漫游、漂移、改变形状等功能，单块板卡具备≥32个窗口的开窗性能，支持在底图上开窗、漫游；\n15、具有多网口绑定功能，仅需一个IP地址即可实现对IP、模拟、SDI设备的视音频数据的接入、转发和存储；\n16、具备画面分割显示功能，按1、4、9、16等方式对画面进行分割；\n17、★支持双电源冗余。具有2组风扇，每组6个风扇（支持热插拔、冗余；支持吹和抽两种模式同时工作)。主控板具有3个USB接口，1个VGA输出口。支持通过主控板VGA接口外接显示屏幕，可实时显示机箱温度、风扇转速、子板信息、电源模块信息、网络使用率信息、CPU/内存使用率信息等，实时监测机箱运作情况；支持通过本地界面进行业务配置。（提供公安部有效检测报告复印件加盖厂商公章佐证）\n18、★支持通过网络将计算机桌面、应用窗口或自定义矩形区域投射到电视墙上，最大支持投射3840×2160分辨率的桌面；单台计算机最多可投射8个任务窗口。（提供公安部有效检测报告复印件加盖厂商公章佐证）\n19、★支持接入分辨率为8640×3840、4000×3000、2048×1536、1920×1080、1280×720、704×576的视频。支持8640×3840、4000×3000、3840×2160、2048×1536、1920×1080、1280×720、704×576等解码分辨率（提供公安部有效检测报告复印件加盖厂商公章佐证）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (368, '值班室控制台', '机房建设', NULL, '金盾', '4联', 10000.00, NULL, NULL, NULL, '4联', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (369, '值班室电脑', '机房建设', NULL, '联想', 'I5，4G内存，1T硬盘，20英寸液晶显示', 4500.00, NULL, NULL, NULL, 'I5，4G内存，1T硬盘，20英寸液晶显示', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (370, '辅材及基础布线', '机房建设', NULL, '定制', '#', 20000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (371, '机柜', '机房建设', NULL, '金盾', 'ND6842', 1900.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (372, '分控中心电脑', '机房建设', NULL, '联想', 'I5，4G内存，1T硬盘，20英寸液晶显示', 4500.00, NULL, NULL, NULL, 'I5，4G内存，1T硬盘，20英寸液晶显示', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (373, '光模块', '机房建设', NULL, '大华', 'GSFP-1310-20-SMF', 222.00, NULL, NULL, NULL, '单模 双纤双向,1.25G, 1310nm,20km, -40~85度,3.3V,LC 接口', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (374, '接入交换机', '机房建设', NULL, '大华', 'DH-IS3100-2GT1GF-DC', 390.00, NULL, NULL, NULL, '非网管二层千兆安防工业交换机，2*100/1000Mbps RJ45，1*1000Mbps SFP，工作宽温：-30至+75°，DC12-36V供电（双冗余），IP40，导轨&壁装', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (375, '核心交换设备', '机房建设', NULL, '锐捷', 'RG-S7805C', 42332.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (376, '交换设备', '机房建设', NULL, '锐捷', 'RG-S7805C', 42332.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (377, '防火墙', '机房建设', NULL, '中科网威', 'ANYSEC-F6600', 18000.00, NULL, NULL, NULL, 'F6600是一款标准1U机架式下一代防火墙安全网关。基本配置包括6个1000M以太网接口，采用Intel X86架构高速网络处理器。适合300M出口带宽，防火墙三层吞吐率6Gbps、七层吞吐率800Mbps、最大并发会话数120万、最大防火墙策略数10240条。主要功能包括防火墙、IDS/IPS入侵检测防御、漏洞攻击防护；病毒木马、恶意代码、间谍软件、DDOS/DOS攻击防御；对内网应用安全检测防护，如应用扫描、病毒检测防护、服务器防护、Web应用防护、URL过滤、应用特征检测识别、流量带宽限制、黑白名单管理、多线路负载均衡等。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (378, '数据库安全设备', '机房建设', NULL, '#', '#', 150000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (379, '上网行为管理软件', '机房建设', NULL, '中科网威', 'ANYSEC-U6600', 15000.00, NULL, NULL, NULL, 'U6600是一款标准1U机架式流控/上网行为管理安全网关，基本配置包括6个1000M以太网接口，1个管理口，采用Intel X86架构高速网络处理器。适合300M出口带宽，最大吞吐量1Gbps、最大并发会话数500,000个，最大安全策略数4096条。主要功能包括VPN防火墙、多线路负载均衡、上网行为管理、流量监控、带宽管理、应用识别控制、访问控制、丰富URL数据库、搜索/网页/邮件/关键字/IM聊天审计过滤、P2P/HTTP/多线程/流媒体/WEB视频/网络游戏控制、多用户认证接入、黑白名单管理、统计分析报表等功能。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (380, '防病毒软件', '机房建设', NULL, '#', '#', 20000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (381, '监控中心装修', '机房建设', NULL, '#', '#', 38000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (382, '巡河终端（含一年数据费）', '机房建设', NULL, '#', '#', 4800.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (383, '实时监控服务器', '机房建设', NULL, 'Dell', '#', 112000.00, NULL, NULL, NULL, '4 路机架式服务器，带操作系统', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (384, '历史数据库服务器', '机房建设', NULL, 'Dell', '#', 112000.00, NULL, NULL, NULL, '4 路机架式服务器，带操作系统', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (385, '数据接口及通信服务器', '机房建设', NULL, 'Dell', '#', 63400.00, NULL, NULL, NULL, '2 路机架式服务器，带操作系统', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (386, '工程师操作站', '机房建设', NULL, 'Dell', '#', 12100.00, NULL, NULL, NULL, '工控机 CPU：i7；内存：16GB；硬盘：128GB SSD+1TB SATA；25 寸 2K LED 液晶', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (387, '工程师培训站', '机房建设', NULL, 'Dell', '#', 12100.00, NULL, NULL, NULL, '工控机 CPU：i7；内存：16GB；硬盘：128GB SSD+1TB SATA；25 寸 2K LED 液晶', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (388, 'Oncall 工作站', '机房建设', NULL, 'Dell', '#', 12100.00, NULL, NULL, NULL, '工控机 CPU：i7；内存：16GB；硬盘：128GB SSD+1TB SATA；25 寸 2K LED 液晶', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (389, '监控平台软件 6 万点', '机房建设', NULL, 'KingScada Standard Development  Full, 60000 Points', '#', 24750.00, NULL, NULL, NULL, '完全版：包括开发工具、组态工具、应用数据库、权限管理等，部署在实时监控服务器。需要进行进行大屏展示，需具备无极缩放功能', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (390, 'CS 客户端授权', '机房建设', NULL, 'KingScada Standard Client  ', '#', 1760.00, NULL, NULL, NULL, '部署工程师操作站 3 台，工程师培训站 1 台，此处为中心站，可以建立或导出数据模型、图形模型；方便分站调用，保持画面风格一致。', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (391, '实时/历史数据库软件 6 万点', '机房建设', NULL, 'KingHistorian\n60000 Points', '#', 231000.00, NULL, NULL, NULL, 'UNIX/Linux/Windows 平台，不依赖任何第三方关系库的工业实时/历史数据库', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (392, '监控应用系统软件开发及实施', '机房建设', NULL, '#', '#', 880000.00, NULL, NULL, NULL, '通过监控平台进行二次开发,包含主备调实时服务器监控系统的开发以及主备调操作站以及培训站的开发。包含计算机监控指令分解系统的开发。部署在主备调', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (393, '胶东调水段系统接入整合', '机房建设', NULL, '#', '#', 110000.00, NULL, NULL, NULL, '包括对各分中心的界面风格及数据结构统一', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (394, '引黄济青段系统接入整合', '机房建设', NULL, '#', '#', 110000.00, NULL, NULL, NULL, '包括对各分中心的界面风格及数据结构统一', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (395, '数据通信管理软件', '机房建设', NULL, 'KingScada WEB发布100用户', '#', 66000.00, NULL, NULL, NULL, '与其他系统提供数据，含中心信息发布 100 套及以上 BS客户端授权，具有网络发布功能，部署在数据通讯服务', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (396, '便携机', '机房建设', NULL, 'Dell', '#', 9900.00, NULL, NULL, NULL, 'CPU：i5；内存：16GB；硬盘：256GB SSD+1TB SATA；', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (397, '专业工作台', '机房建设', NULL, '#', '#', 5000.00, NULL, NULL, NULL, '6 工位', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (398, '网络激光打印机', '机房建设', NULL, '佳能', '#', 18000.00, NULL, NULL, NULL, 'A3 彩色 打印/复印/扫描一体', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (399, '无人机(含两人飞手培训，一年保险)', '无人机', NULL, '#', '#', 128000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (400, '无人机信息传输终端', '无人机', NULL, '#', '#', 25000.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (401, '无人机', '无人机', NULL, '大疆', 'M200', 100000.00, NULL, NULL, NULL, '飞行载重最大起飞重量：6140g最大载重(小电池)：2340g最大载重(大电池)：1610g悬停精度垂直:±0.5m，下视启用±0.1m水平:±1.5m，下视启用±0.3m旋转角速度俯仰轴：300°/s；航向轴：150°/s升降速度最大上升速度：P模式/A模式/S模式：5m/s最大下降速度：垂直：3m/s飞行速度最大水平飞行速度：P模式：61.2km/hA模式：82.8km/hS模式：82.8km/h飞行高度3000m飞行时间最长飞行时间（空载，普通容量电池）：27min最长飞行时间（空载，大容量电池）：38min纠错轴距643mm动力系统DJI 3515螺旋桨1760S', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (402, '基础制作 包含水泥沙子等', '施工', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '1200*1200*1200mm', 1730.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (403, '地笼 铁板加螺纹钢焊接', '施工', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '底板800*800*800mm', 290.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (404, '吊车、货车、机械、运输费用等', '施工', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 1600.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (405, '安装施工调试费', '施工', NULL, '北京林创伟业科技有限公司       联系人：李雄林    联系电话：13910974973   ', '#', 2750.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (406, '直流电源电缆', '施工', NULL, '#', '#', 186.00, NULL, NULL, NULL, 'RVV 2×1.5mm²，300/300V', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (407, '流量计信号电缆', '施工', NULL, '#', '#', 30.00, NULL, NULL, NULL, '4芯电缆+1芯导气管', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (408, '接地线', '施工', NULL, '#', '#', 10.00, NULL, NULL, NULL, 'BVR 2.5mm²，450/750V', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (409, '流量计固定支架', '施工', NULL, '#', '#', 1800.00, NULL, NULL, NULL, '定制（不锈钢）', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (410, 'PVC管或镀锌管', '施工', NULL, '#', '#', 40.00, NULL, NULL, NULL, 'DN32线管', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (411, '安装支架', '施工', NULL, '#', '#', 140.00, NULL, NULL, NULL, '机箱支架、太阳能板支架', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (412, '立杆及立杆基础', '施工', NULL, '#', '#', 2000.00, NULL, NULL, NULL, '地面3米，含基础地笼', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (413, '顶面刷防尘漆', '施工', NULL, '双虎', '#', 18.00, NULL, NULL, NULL, '环氧树脂。防尘处理三遍', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (414, '吊顶', '施工', NULL, '欧陆', '#', 88.00, NULL, NULL, NULL, '600*600*1.0mm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (415, '地面刷防尘漆', '施工', NULL, '双虎', '#', 18.00, NULL, NULL, NULL, '环氧树脂。防尘处理三遍', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (416, '防静电活动地板(陶瓷面）', '施工', NULL, '朝晖', '#', 358.00, NULL, NULL, NULL, '\n600×600 防静电陶瓷面活动地板 架空高度300', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (417, '乳胶漆', '施工', NULL, '华润', '#', 22.00, NULL, NULL, NULL, '二遍', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (418, '不锈钢100高踢脚线', '施工', NULL, '国产', '#', 250.00, NULL, NULL, NULL, '不锈钢', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (419, '钢质防火门', '施工', NULL, '国产', '#', 3200.00, NULL, NULL, NULL, '1500*2400', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (420, '钢质防火门', '施工', NULL, '国产', '#', 2400.00, NULL, NULL, NULL, '1000*2400', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (421, '市电配电箱', '施工', NULL, '国产', '#', 6800.00, NULL, NULL, NULL, '50KW配电箱，输入及输出空开', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (422, 'UPS配电箱', '施工', NULL, '国产', '#', 4200.00, NULL, NULL, NULL, '20KW配电箱，UPS输入及输出空开', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (423, '照明配电箱PZ1～3', '施工', NULL, '国产', '#', 400.00, NULL, NULL, NULL, '5KW配电箱，输入及输出空开', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (424, '阻燃电缆', '施工', NULL, '宝胜', '#', 138.00, NULL, NULL, NULL, '型号：ZA-RVV-1kv\r\n规格：4*35+1*16\r\n\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (425, '阻燃电缆', '施工', NULL, '宝胜', '#', 28.00, NULL, NULL, NULL, '型号：WDZA-YJY-1kv\r\n规格：5*6\r\n\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (426, '阻燃电缆', '施工', NULL, '宝胜', '#', 56.00, NULL, NULL, NULL, 'WDZA-YJV-5*10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (427, '阻燃电缆', '施工', NULL, '宝胜', '#', 24.00, NULL, NULL, NULL, 'WDZA-YJV-3*6\r\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (428, '插座线', '施工', NULL, '赣昌', '#', 3.80, NULL, NULL, NULL, 'BVR-4', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (429, '照明线', '施工', NULL, '赣昌', '#', 2.80, NULL, NULL, NULL, 'BVR-2.5', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (430, '接地线', '施工', NULL, '赣昌', '#', 32.00, NULL, NULL, NULL, 'BVR-35', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (431, '接地线（每卷100米）', '施工', NULL, '赣昌', '#', 5.60, NULL, NULL, NULL, 'BVR-6', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (432, '电子镇流器高效无眩光格栅灯', '施工', NULL, '松下', '#', 312.00, NULL, NULL, NULL, '3*36W', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (433, '出入口指示灯', '施工', NULL, '国产', '#', 134.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (434, '插座', '施工', NULL, '国产', '#', 26.00, NULL, NULL, NULL, '二、三孔插座', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (435, '翘板开关', '施工', NULL, '国产', '#', 18.00, NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (436, '静电泄放接地线', '施工', NULL, '国产', '#', 54.00, NULL, NULL, NULL, '100mm*0.3mm铜箔', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (437, '接地铜排', '施工', NULL, '国产', '#', 95.00, NULL, NULL, NULL, '30*3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (438, '等电位端子箱', '施工', NULL, '国产', '#', 426.00, NULL, NULL, NULL, '等电位接地箱', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (439, '12匹空调', '空调', NULL, '美的', '#', 42000.00, NULL, NULL, NULL, '多联机空调、一拖四', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (440, '新风机', '空调', NULL, '沐风', '#', 4400.00, NULL, NULL, NULL, '新风量：600m3/h，\n', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (441, '外墙防雨百叶', '空调', NULL, '国产', '#', 200.00, NULL, NULL, NULL, '300*300MM', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (442, '0.75mm镀锌风管，新风管道', '空调', NULL, '国产', '#', 90.00, NULL, NULL, NULL, '300*250mm、0.75mm镀锌风管', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (443, '格栅风口', '空调', NULL, '国产', '#', 120.00, NULL, NULL, NULL, '250*250MM', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (444, 'UPS主机', 'UPS', NULL, 'GA', '#', 32000.00, NULL, NULL, NULL, '三进三出，Advent-M10 10KVA模块两个、', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (445, '蓄电池（30分钟延时）', 'UPS', NULL, 'GA', '#', 620.00, NULL, NULL, NULL, '12V 65AH', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_product_equipment_info_copy1` VALUES (446, '电池柜', 'UPS', NULL, '国产', '#', 800.00, NULL, NULL, NULL, '含电池开关箱、电池连接线、输入输出电缆及厂家开机费（20KVAUPS用）C-16', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rolename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 'asd', 'admin');
INSERT INTO `user_roles` VALUES (2, '123', 'teacher');
INSERT INTO `user_roles` VALUES (3, '456', 'teacher');
INSERT INTO `user_roles` VALUES (4, 'asd', 'teacher');
INSERT INTO `user_roles` VALUES (22, 'a4', 'teacher');
INSERT INTO `user_roles` VALUES (23, 'zxc', 'teacher');
INSERT INTO `user_roles` VALUES (24, 'qwe', 'teacher');

SET FOREIGN_KEY_CHECKS = 1;
