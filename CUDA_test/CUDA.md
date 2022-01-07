CUDA + Python
====

|Low level|<-------|---------|------->|High level|
|:--:|:--:|:--:|:--:|:--:|
| CUDA C/C++ | PyCUDA | Numba.cuda | Cupy | Tensorflow/Pytorch|

CUDA API를 사용한 라이브러리의 위계를 나타내자면 다음과 같다.

CUDA C/C++를 제외한 라이브러리들은 모두 CUDA C를 간접적으로
호출하는 방식으로 사용되며,

+ PyCUDA에서는 직접 C 문법으로 작성한 커널을 nvcc 컴파일러를 런타임 도중 호출하여 연산하는 방식으로 수행한다.

    PyCUDA에서는 가장 CUDA C에 근접한 설계가 가능하나, CUDA C에서 지원하는 모든 메소드들을 사용할 수는 없다는 단점이 있다.