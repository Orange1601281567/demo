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

 Date: 11/05/2020 17:29:05
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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '填空题信息' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of curriculum
-- ----------------------------
INSERT INTO `curriculum` VALUES (2, 'qwe', 'Web语言', '2', '24', '2020-03-29 13:22:46');
INSERT INTO `curriculum` VALUES (3, 'qwe', 'VB语言', '1', '43', '2020-03-29 13:27:28');

-- ----------------------------
-- Table structure for error
-- ----------------------------
DROP TABLE IF EXISTS `error`;
CREATE TABLE `error`  (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `problemid` int(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级信息' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单角色关联表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试卷信息' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试卷选择题信息关联表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_roles_permissions`(`rolename`, `permission`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rolename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
