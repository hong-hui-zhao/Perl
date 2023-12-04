#!/usr/bin/perl

# 定义文件名
my $filename = "11.txt";

# 打开文件句柄，以只读方式打开文件，如果无法打开则报错并退出程序
open(my $fh, "<", $filename) or die "Cannot open file '$filename': $!";

# 定义一个子程序，用于计算平均值
sub calculate_average {
    my @scores = @_;  # 接收传入的参数，即成绩数组
    my $sum = 0;  # 初始化总和为0
    foreach my $score (@scores) {  # 遍历成绩数组
        $sum += $score;  # 将每个成绩累加到总和中
    }
    my $average = $sum / scalar(@scores);  # 计算平均值
    return $average;  # 返回平均值
}

# 定义一个哈希表，用于存储每位同学的成绩
my %scores;

# 逐行读取文件内容
while (my $line = <$fh>) {
    chomp $line;  # 去除行尾的换行符
    my ($name, @course_scores) = split /\s+/, $line;  # 将每行内容按空白字符分割为姓名和课程成绩数组
    $scores{$name} = \@course_scores;  # 将姓名和对应的课程成绩数组存储到哈希表中
    my $average = calculate_average(@course_scores);  # 调用子程序计算课程平均成绩
    print "$line Average: $average\n";  # 打印每行内容和对应的平均成绩
}

# 关闭文件句柄
close $fh;