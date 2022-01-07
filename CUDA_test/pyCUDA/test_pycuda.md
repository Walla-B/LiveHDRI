pyCUDA를 이용한 CUDA 라이브러리 사용법
===


1.Sourcemodule 불러오기
---
```python
from pycuda.compiler import SourceModule
```

2.Kernel 작성하기
---
```python
mod = SourceModule("""
    # Write kernel here
""")
```
커널은 SourceModule 메소드를 통해 객체로 생성되어진다.

이후, 해당 SourceModuule의 get_function() 메소드를 이용해 함수를 호출하게 된다.

```python
func = mod.get_function("func_name")
func(var1, var2, block=(x1,y1,z1),grid=(x2,y2,z2))
```


3.최적의 block, grid 의 차원 구하기
---
1. block: 일반적으로, block의 사이즈는 Hardware-dependent 하다.
   자세한 내용은 해당 질문 참고 
   
   [How do I choose grid and block dimensions for CUDA kernels?](https://stackoverflow.com/questions/9985912/how-do-i-choose-grid-and-block-dimensions-for-cuda-kernels)

   요약하자면, Block의 최대 크기는 CC 버전에 따라서 limit이 있으며, 해당 limit을 초과하지

   않는 선에서 32의 배수의 개수로 잡으면 된다.

   예를들어 block=(16,16,1) 이라면, 블럭당 스레드의 개수는 16 * 16 * 1 = 32 * 8 이므로 해당
   조건을 만족한다.


2. grid:
   grid의 치수는, 데이터의 크기, 그리고 block의 치수에 의해서 결정된다. 
   예를들어 데이터의 크기가 943 * 1682 인 배열을 연산해야 한다고 할때, blockdim의

   각 row, col 원소값보다 큰 값으로 설정해야 한다.

   만약 input 데이터가 943 * 1682의 배열이라면, blockdim이 16 * 16이므로, 해당 블럭
   59 * 106개로 커버 가능한 치수가 grid의 dimention이 된다.

>Each block cannot have more than 512/1024 threads in total (Compute Capability 1.x or 2.x and later respectively)
>
>The maximum dimensions of each block are limited to [512,512,64]/[1024,1024,64] (Compute 1.x/2.x or later)
>
>Each block cannot consume more than 8k/16k/32k/64k/32k/64k/32k/64k/32k/64k registers total (Compute 1.0,1.1/1.2,1.3/2.x-/3.0/3.2/3.5-5.2/5.3/6-6.1/6.2/7.0)
>
>Each block cannot consume more than 16kb/48kb/96kb of shared memory (Compute 1.x/2.x-6.2/7.0)

즉, 그래픽카드의 Compute Capability 버전에 따라서 블럭당 실행 가능한 스레드 수나, 스레드당
가용 가능한 메모리, 블럭의 최대 차원 등이 제한된다.

본 컴퓨터의 그래픽카드(GTX 1650)의 Compute Capability는 7.5이다.