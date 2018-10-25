//
//  ViewController.m
//  PointerDemo
//
//  Created by 丁玉松 on 2018/10/25.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     1）其中变量a，输出数据
     2）&a,取地址运算，输出变量a的地址
     3）&p，取地址运算，输出指针变量p的地址
     4）指针变量p，输出p地址中存储的内容，其内容实际为变量a的地址，即&a
     5）*p，指向目标变量a，他的内容时数据
     */
    
    int a = 199;
    int *p;
    p = &a;
    
    printf("a=%d\n", a);
    printf("&a=%p\n", &a);
    printf("&p=%p\n", &p);
    printf("p=%p\n", p);
    printf("*p=%d\n", *p);
    
    
    NSString *name = [NSString stringWithFormat:@"DingYusong"];
    
    //（&取地址符号，%p打印指针，%@打印指针指向的值，注意区别）  1.指针是地址  2.指针变量是值为指针(地址)的变量。 name是一个指针变量。其值是个地址可以用%p可以打出来，*name是name这个指针变量的值代表的地址的内容。
    
    
    //%@打印的是指针指向的值，相当于*name。
    NSLog(@"name:%@",name);
    //&name,取出来的是指针的地址，在此处是栈空间的地址。
    NSLog(@"&name:%p",&name);
    //%p打印的是指针的值，切记
    NSLog(@"name:%p",name);

    
    
    
    /*
     下面是参考调试信息
     
     a=199
     &a=0x7ffee4f6b9ac
     &p=0x7ffee4f6b9a0
     p=0x7ffee4f6b9ac
     *p=199
     2018-10-25 11:28:40.950014+0800 PointerDemo[978:2153486] name:DingYusong
     2018-10-25 11:28:40.950144+0800 PointerDemo[978:2153486] &name:0x7ffee4f6b998
     2018-10-25 11:28:40.950231+0800 PointerDemo[978:2153486] name:0x60000306b500
     (lldb) p name
     (__NSCFString *) $0 = 0x000060000306b500 @"DingYusong"
     (lldb) p *name
     (NSString) $1 = {
     NSObject = {
     isa = __NSCFString
     }
     }
     (lldb) p &name
     (NSString **) $2 = 0x00007ffee4f6b998
     (lldb) p a
     (int) $3 = 199
     (lldb) p &a
     (int *) $4 = 0x00007ffee4f6b9ac
     (lldb) p p
     (int *) $5 = 0x00007ffee4f6b9ac
     (lldb) p *p
     (int) $6 = 199
     (lldb) p &p
     (int **) $7 = 0x00007ffee4f6b9a0
     (lldb) p *a
     error: indirection requires pointer operand ('int' invalid)
     (lldb)
     */
}


@end
