ª
´
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-rc1-69-gc256c071bb28 ê
¨
&my_sequential_model/flexible_dense_1/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*7
shared_name(&my_sequential_model/flexible_dense_1/w
¡
:my_sequential_model/flexible_dense_1/w/Read/ReadVariableOpReadVariableOp&my_sequential_model/flexible_dense_1/w*
_output_shapes

:*
dtype0
¤
&my_sequential_model/flexible_dense_1/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&my_sequential_model/flexible_dense_1/b

:my_sequential_model/flexible_dense_1/b/Read/ReadVariableOpReadVariableOp&my_sequential_model/flexible_dense_1/b*
_output_shapes
:*
dtype0
¨
&my_sequential_model/flexible_dense_2/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*7
shared_name(&my_sequential_model/flexible_dense_2/w
¡
:my_sequential_model/flexible_dense_2/w/Read/ReadVariableOpReadVariableOp&my_sequential_model/flexible_dense_2/w*
_output_shapes

:*
dtype0
¤
&my_sequential_model/flexible_dense_2/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&my_sequential_model/flexible_dense_2/b

:my_sequential_model/flexible_dense_2/b/Read/ReadVariableOpReadVariableOp&my_sequential_model/flexible_dense_2/b*
_output_shapes
:*
dtype0

NoOpNoOp
ã
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB B
|
dense_1
dense_2
	variables
trainable_variables
regularization_losses
	keras_api

signatures
`
w
	b

	variables
trainable_variables
regularization_losses
	keras_api
`
w
b
	variables
trainable_variables
regularization_losses
	keras_api

0
	1
2
3

0
	1
2
3
 
­
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 
`^
VARIABLE_VALUE&my_sequential_model/flexible_dense_1/w$dense_1/w/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE&my_sequential_model/flexible_dense_1/b$dense_1/b/.ATTRIBUTES/VARIABLE_VALUE

0
	1

0
	1
 
­
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics

	variables
trainable_variables
regularization_losses
`^
VARIABLE_VALUE&my_sequential_model/flexible_dense_2/w$dense_2/w/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE&my_sequential_model/flexible_dense_2/b$dense_2/b/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
Û
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1&my_sequential_model/flexible_dense_1/w&my_sequential_model/flexible_dense_1/b&my_sequential_model/flexible_dense_2/w&my_sequential_model/flexible_dense_2/b*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference_signature_wrapper_3571
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename:my_sequential_model/flexible_dense_1/w/Read/ReadVariableOp:my_sequential_model/flexible_dense_1/b/Read/ReadVariableOp:my_sequential_model/flexible_dense_2/w/Read/ReadVariableOp:my_sequential_model/flexible_dense_2/b/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *&
f!R
__inference__traced_save_3673
»
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename&my_sequential_model/flexible_dense_1/w&my_sequential_model/flexible_dense_1/b&my_sequential_model/flexible_dense_2/w&my_sequential_model/flexible_dense_2/b*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_restore_3695ùÆ
	
ó
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_3475

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


__inference__traced_save_3673
file_prefixE
Asavev2_my_sequential_model_flexible_dense_1_w_read_readvariableopE
Asavev2_my_sequential_model_flexible_dense_1_b_read_readvariableopE
Asavev2_my_sequential_model_flexible_dense_2_w_read_readvariableopE
Asavev2_my_sequential_model_flexible_dense_2_b_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¢
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ë
valueÁB¾B$dense_1/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_1/b/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHw
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B À
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Asavev2_my_sequential_model_flexible_dense_1_w_read_readvariableopAsavev2_my_sequential_model_flexible_dense_1_b_read_readvariableopAsavev2_my_sequential_model_flexible_dense_2_w_read_readvariableopAsavev2_my_sequential_model_flexible_dense_2_b_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*7
_input_shapes&
$: ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
ð
Æ
"__inference_signature_wrapper_3571
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallÒ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__wrapped_model_3458o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Ñ

/__inference_flexible_dense_1_layer_call_fn_3609

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_3475o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
Â
 __inference__traced_restore_3695
file_prefixI
7assignvariableop_my_sequential_model_flexible_dense_1_w:G
9assignvariableop_1_my_sequential_model_flexible_dense_1_b:K
9assignvariableop_2_my_sequential_model_flexible_dense_2_w:G
9assignvariableop_3_my_sequential_model_flexible_dense_2_b:

identity_5¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¥
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ë
valueÁB¾B$dense_1/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_1/b/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHz
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B ·
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOpAssignVariableOp7assignvariableop_my_sequential_model_flexible_dense_1_wIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_1AssignVariableOp9assignvariableop_1_my_sequential_model_flexible_dense_1_bIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_2AssignVariableOp9assignvariableop_2_my_sequential_model_flexible_dense_2_wIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_3AssignVariableOp9assignvariableop_3_my_sequential_model_flexible_dense_2_bIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¬

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
	
ó
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_3619

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

û
__inference__wrapped_model_3458
input_1U
Cmy_sequential_model_flexible_dense_1_matmul_readvariableop_resource:N
@my_sequential_model_flexible_dense_1_add_readvariableop_resource:U
Cmy_sequential_model_flexible_dense_2_matmul_readvariableop_resource:N
@my_sequential_model_flexible_dense_2_add_readvariableop_resource:
identity¢:my_sequential_model/flexible_dense_1/MatMul/ReadVariableOp¢7my_sequential_model/flexible_dense_1/add/ReadVariableOp¢:my_sequential_model/flexible_dense_2/MatMul/ReadVariableOp¢7my_sequential_model/flexible_dense_2/add/ReadVariableOp¾
:my_sequential_model/flexible_dense_1/MatMul/ReadVariableOpReadVariableOpCmy_sequential_model_flexible_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0´
+my_sequential_model/flexible_dense_1/MatMulMatMulinput_1Bmy_sequential_model/flexible_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
7my_sequential_model/flexible_dense_1/add/ReadVariableOpReadVariableOp@my_sequential_model_flexible_dense_1_add_readvariableop_resource*
_output_shapes
:*
dtype0Û
(my_sequential_model/flexible_dense_1/addAddV25my_sequential_model/flexible_dense_1/MatMul:product:0?my_sequential_model/flexible_dense_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
:my_sequential_model/flexible_dense_2/MatMul/ReadVariableOpReadVariableOpCmy_sequential_model_flexible_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ù
+my_sequential_model/flexible_dense_2/MatMulMatMul,my_sequential_model/flexible_dense_1/add:z:0Bmy_sequential_model/flexible_dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
7my_sequential_model/flexible_dense_2/add/ReadVariableOpReadVariableOp@my_sequential_model_flexible_dense_2_add_readvariableop_resource*
_output_shapes
:*
dtype0Û
(my_sequential_model/flexible_dense_2/addAddV25my_sequential_model/flexible_dense_2/MatMul:product:0?my_sequential_model/flexible_dense_2/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
IdentityIdentity,my_sequential_model/flexible_dense_2/add:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
NoOpNoOp;^my_sequential_model/flexible_dense_1/MatMul/ReadVariableOp8^my_sequential_model/flexible_dense_1/add/ReadVariableOp;^my_sequential_model/flexible_dense_2/MatMul/ReadVariableOp8^my_sequential_model/flexible_dense_2/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2x
:my_sequential_model/flexible_dense_1/MatMul/ReadVariableOp:my_sequential_model/flexible_dense_1/MatMul/ReadVariableOp2r
7my_sequential_model/flexible_dense_1/add/ReadVariableOp7my_sequential_model/flexible_dense_1/add/ReadVariableOp2x
:my_sequential_model/flexible_dense_2/MatMul/ReadVariableOp:my_sequential_model/flexible_dense_2/MatMul/ReadVariableOp2r
7my_sequential_model/flexible_dense_2/add/ReadVariableOp7my_sequential_model/flexible_dense_2/add/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

Ð
2__inference_my_sequential_model_layer_call_fn_3584
x
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_3498o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
Ñ

/__inference_flexible_dense_2_layer_call_fn_3628

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_3491o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
ó
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_3638

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Ù
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_3498
x'
flexible_dense_1_3476:#
flexible_dense_1_3478:'
flexible_dense_2_3492:#
flexible_dense_2_3494:
identity¢(flexible_dense_1/StatefulPartitionedCall¢(flexible_dense_2/StatefulPartitionedCall
(flexible_dense_1/StatefulPartitionedCallStatefulPartitionedCallxflexible_dense_1_3476flexible_dense_1_3478*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_3475¸
(flexible_dense_2/StatefulPartitionedCallStatefulPartitionedCall1flexible_dense_1/StatefulPartitionedCall:output:0flexible_dense_2_3492flexible_dense_2_3494*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_3491
IdentityIdentity1flexible_dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp)^flexible_dense_1/StatefulPartitionedCall)^flexible_dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2T
(flexible_dense_1/StatefulPartitionedCall(flexible_dense_1/StatefulPartitionedCall2T
(flexible_dense_2/StatefulPartitionedCall(flexible_dense_2/StatefulPartitionedCall:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
®
Ö
2__inference_my_sequential_model_layer_call_fn_3509
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_3498o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1


M__inference_my_sequential_model_layer_call_and_return_conditional_losses_3600
xA
/flexible_dense_1_matmul_readvariableop_resource::
,flexible_dense_1_add_readvariableop_resource:A
/flexible_dense_2_matmul_readvariableop_resource::
,flexible_dense_2_add_readvariableop_resource:
identity¢&flexible_dense_1/MatMul/ReadVariableOp¢#flexible_dense_1/add/ReadVariableOp¢&flexible_dense_2/MatMul/ReadVariableOp¢#flexible_dense_2/add/ReadVariableOp
&flexible_dense_1/MatMul/ReadVariableOpReadVariableOp/flexible_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
flexible_dense_1/MatMulMatMulx.flexible_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#flexible_dense_1/add/ReadVariableOpReadVariableOp,flexible_dense_1_add_readvariableop_resource*
_output_shapes
:*
dtype0
flexible_dense_1/addAddV2!flexible_dense_1/MatMul:product:0+flexible_dense_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&flexible_dense_2/MatMul/ReadVariableOpReadVariableOp/flexible_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
flexible_dense_2/MatMulMatMulflexible_dense_1/add:z:0.flexible_dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#flexible_dense_2/add/ReadVariableOpReadVariableOp,flexible_dense_2_add_readvariableop_resource*
_output_shapes
:*
dtype0
flexible_dense_2/addAddV2!flexible_dense_2/MatMul:product:0+flexible_dense_2/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentityflexible_dense_2/add:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
NoOpNoOp'^flexible_dense_1/MatMul/ReadVariableOp$^flexible_dense_1/add/ReadVariableOp'^flexible_dense_2/MatMul/ReadVariableOp$^flexible_dense_2/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2P
&flexible_dense_1/MatMul/ReadVariableOp&flexible_dense_1/MatMul/ReadVariableOp2J
#flexible_dense_1/add/ReadVariableOp#flexible_dense_1/add/ReadVariableOp2P
&flexible_dense_2/MatMul/ReadVariableOp&flexible_dense_2/MatMul/ReadVariableOp2J
#flexible_dense_2/add/ReadVariableOp#flexible_dense_2/add/ReadVariableOp:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
	
ó
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_3491

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç
ß
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_3556
input_1'
flexible_dense_1_3545:#
flexible_dense_1_3547:'
flexible_dense_2_3550:#
flexible_dense_2_3552:
identity¢(flexible_dense_1/StatefulPartitionedCall¢(flexible_dense_2/StatefulPartitionedCall
(flexible_dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_1flexible_dense_1_3545flexible_dense_1_3547*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_3475¸
(flexible_dense_2/StatefulPartitionedCallStatefulPartitionedCall1flexible_dense_1/StatefulPartitionedCall:output:0flexible_dense_2_3550flexible_dense_2_3552*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_3491
IdentityIdentity1flexible_dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp)^flexible_dense_1/StatefulPartitionedCall)^flexible_dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2T
(flexible_dense_1/StatefulPartitionedCall(flexible_dense_1/StatefulPartitionedCall2T
(flexible_dense_2/StatefulPartitionedCall(flexible_dense_2/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ý0
ì
dense_1
dense_2
	variables
trainable_variables
regularization_losses
	keras_api

signatures
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature"
_tf_keras_model
³
w
	b

	variables
trainable_variables
regularization_losses
	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
³
w
b
	variables
trainable_variables
regularization_losses
	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
	1
2
3"
trackable_list_wrapper
<
0
	1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
,
*serving_default"
signature_map
8:62&my_sequential_model/flexible_dense_1/w
4:22&my_sequential_model/flexible_dense_1/b
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics

	variables
trainable_variables
regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
8:62&my_sequential_model/flexible_dense_2/w
4:22&my_sequential_model/flexible_dense_2/b
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
2
2__inference_my_sequential_model_layer_call_fn_3509
2__inference_my_sequential_model_layer_call_fn_3584
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Á2¾
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_3600
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_3556
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÊBÇ
__inference__wrapped_model_3458input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_flexible_dense_1_layer_call_fn_3609¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_3619¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_flexible_dense_2_layer_call_fn_3628¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_3638¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÉBÆ
"__inference_signature_wrapper_3571input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
__inference__wrapped_model_3458m	0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿª
J__inference_flexible_dense_1_layer_call_and_return_conditional_losses_3619\	/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_flexible_dense_1_layer_call_fn_3609O	/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿª
J__inference_flexible_dense_2_layer_call_and_return_conditional_losses_3638\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_flexible_dense_2_layer_call_fn_3628O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ°
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_3556_	0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ª
M__inference_my_sequential_model_layer_call_and_return_conditional_losses_3600Y	*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_my_sequential_model_layer_call_fn_3509R	0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_my_sequential_model_layer_call_fn_3584L	*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
"__inference_signature_wrapper_3571x	;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ