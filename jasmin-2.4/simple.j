.class public simple 
.super java/lang/Object 
.method public <init>()V 
    aload_0 
    invokespecial java/lang/Object/<init>()V 
    return 
.end method 
.method public static main([Ljava/lang/String;)V 
    .limit stack 5 
    .limit locals 100 
    ldc 0 
    istore 1      ; initialize x to zero and store it in local variable 1 

                  ; the read function starts at this point 
    ldc 0 
    istore 50     ; storage for a dummy integer for reading it by read
 Label1: 
    getstatic java/lang/System/in Ljava/io/InputStream;
    invokevirtual java/io/InputStream/read()I 
    istore 51 
    iload 51 
    ldc 10 
    isub 
    ifeq Label2 
    iload 51 
    ldc 32 
    isub 
    ifeq Label2 
    iload 51 
    ldc 48 
    isub 
    ldc 10 
    iload 50 
    imul 
    iadd 
    istore 50 
    goto Label1 
  Label2:          ; now our dummy integer contains the 
                   ; integer read from the keyboard
    iload 50       ; read function ends here 
    istore 1       ; store this value in x 
    iload 1 
    ldc 3 
    iadd 
    istore 1       ; x=x+3 
    iload 1 
    getstatic java/lang/System/out Ljava/io/PrintStream; 
    swap 
    invokevirtual java/io/PrintStream/println(I)V   ; print x
    return        ; return from main
.end method
