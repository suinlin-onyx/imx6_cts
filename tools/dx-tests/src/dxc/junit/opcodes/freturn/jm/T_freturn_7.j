; Copyright (C) 2008 The Android Open Source Project
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;      http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

.source T_freturn_7.java
.class public dxc/junit/opcodes/freturn/jm/T_freturn_7
.super java/lang/Object
.implements java/lang/Runnable

.field  value F
.field  failed Z

.method public <init>()V
    .limit stack 3
    aload_0
    invokespecial java/lang/Object/<init>()V

    aload_0
    fconst_0
    putfield dxc.junit.opcodes.freturn.jm.T_freturn_7.value F

    aload_0
    iconst_0
    putfield dxc.junit.opcodes.freturn.jm.T_freturn_7.failed Z

    return

.end method



.method public run()V
    .limit stack 2
    .limit locals 2
   
    iconst_0
    istore_1

Label4:
    iload_1
    sipush 1000
    if_icmpge Label3

    aload_0
    invokespecial dxc/junit/opcodes/freturn/jm/T_freturn_7/test()F
    pop

    iinc 1 1

    goto Label4


Label3:
    return

.end method



.method private synchronized test()F
    .limit stack 3
    .limit locals 2
    
.line 16
    aload_0
    dup
    getfield dxc.junit.opcodes.freturn.jm.T_freturn_7.value F
    dup
    fstore_1

    fconst_1
    fadd
    putfield dxc.junit.opcodes.freturn.jm.T_freturn_7.value F

    fload_1
    fconst_1
    fadd
    fstore_1

    invokestatic java/lang/Thread/yield()V

    fload_1
    aload_0
    getfield dxc.junit.opcodes.freturn.jm.T_freturn_7.value F
    fcmpl
    ifeq Label0

    aload_0
    iconst_1
    putfield dxc.junit.opcodes.freturn.jm.T_freturn_7.failed Z

Label0:
    fload_1
    freturn
.end method



.method public static execute()Z
    .limit stack 3
    .limit locals 4

    new dxc/junit/opcodes/freturn/jm/T_freturn_7
    dup
    invokespecial dxc/junit/opcodes/freturn/jm/T_freturn_7/<init>()V
    astore_0

    new java/lang/Thread
    dup
    aload_0
    invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
    astore_1

    new java/lang/Thread
    dup
    aload_0
    invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
    astore_2

    aload_1
    invokevirtual java/lang/Thread/start()V

    aload_2
    invokevirtual java/lang/Thread/start()V

Label12:
    ldc2_w 5000
    invokestatic java/lang/Thread/sleep(J)V

Label13:
    goto Label0

Label14:            ; exception handler
    astore_3
    goto Label3

Label0:
    aload_0
    getfield dxc.junit.opcodes.freturn.jm.T_freturn_7.value F
    ldc 2000.0f
    fcmpl
    ifne Label3

    aload_0
    getfield dxc.junit.opcodes.freturn.jm.T_freturn_7.failed Z
    ifne Label3

    iconst_1
    ireturn

Label3:
    iconst_0
    ireturn

.catch java/lang/InterruptedException from Label12 to Label13 using Label14
.end method
