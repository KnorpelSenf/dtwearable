��6
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��3
�
Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/lstm_1/lstm_cell_1/bias/v
�
2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes	
:�*
dtype0
�
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
�
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v
�
4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v*
_output_shapes
:	d�*
dtype0
�
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/lstm/lstm_cell/bias/v
�
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:�*
dtype0
�
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
�
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes
:	d�*
dtype0
�
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nameAdam/lstm/lstm_cell/kernel/v
�
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	�*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:d*
dtype0
�
Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/lstm_1/lstm_cell_1/bias/m
�
2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes	
:�*
dtype0
�
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
�
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m
�
4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m*
_output_shapes
:	d�*
dtype0
�
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/lstm/lstm_cell/bias/m
�
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:�*
dtype0
�
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
�
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes
:	d�*
dtype0
�
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nameAdam/lstm/lstm_cell/kernel/m
�
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	�*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:d*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
�
lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_namelstm_1/lstm_cell_1/bias
�
+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:�*
dtype0
�
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel
�
7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�**
shared_namelstm_1/lstm_cell_1/kernel
�
-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes
:	d�*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�*0
shared_name!lstm/lstm_cell/recurrent_kernel
�
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	d�*
dtype0
�
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_namelstm/lstm_cell/kernel
�
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:d*
dtype0

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�@
value�@B�@ B�@
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
	_default_save_signature
*
&call_and_return_all_conditional_losses
	optimizer

signatures*
�
	variables
regularization_losses
trainable_variables
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
�
	variables
regularization_losses
trainable_variables
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
<
%0
&1
'2
(3
)4
*5
#6
$7*
<
%0
&1
'2
(3
)4
*5
#6
$7*
* 
�
	variables
+layer_metrics
,layer_regularization_losses
-metrics
.non_trainable_variables

/layers
trainable_variables
regularization_losses
__call__
	_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
0trace_0
1trace_1
2trace_2
3trace_3* 

4trace_0* 
6
5trace_0
6trace_1
7trace_2
8trace_3* 
�
9iter

:beta_1

;beta_2
	<decay
=learning_rate#m�$m�%m�&m�'m�(m�)m�*m�#v�$v�%v�&v�'v�(v�)v�*v�*

>serving_default* 

%0
&1
'2*
* 

%0
&1
'2*
�
	variables
?layer_metrics
@layer_regularization_losses
regularization_losses
Ametrics
Bnon_trainable_variables

Clayers
trainable_variables

Dstates
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Etrace_0
Ftrace_1
Gtrace_2
Htrace_3* 
6
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_3* 
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S
state_size

%kernel
&recurrent_kernel
'bias*
* 

(0
)1
*2*
* 

(0
)1
*2*
�
	variables
Tlayer_metrics
Ulayer_regularization_losses
regularization_losses
Vmetrics
Wnon_trainable_variables

Xlayers
trainable_variables

Ystates
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
6
^trace_0
_trace_1
`trace_2
atrace_3* 
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h
state_size

(kernel
)recurrent_kernel
*bias*
* 

#0
$1*

#0
$1*
* 
�
	variables
ilayer_metrics
jlayer_regularization_losses
kmetrics
lnon_trainable_variables

mlayers
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_1/lstm_cell_1/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_1/lstm_cell_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

p0
q1*
* 

0
1
2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 

%0
&1
'2*

%0
&1
'2*
* 
�
M	variables
rlayer_metrics
slayer_regularization_losses
tmetrics
unon_trainable_variables

vlayers
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

wtrace_0
xtrace_1* 

ytrace_0
ztrace_1* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 

(0
)1
*2*

(0
)1
*2*
* 
�
b	variables
{layer_metrics
|layer_regularization_losses
}metrics
~non_trainable_variables

layers
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_lstm_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell/kernellstm/lstm_cell/biaslstm/lstm_cell/recurrent_kernellstm_1/lstm_cell_1/kernellstm_1/lstm_cell_1/bias#lstm_1/lstm_cell_1/recurrent_kerneldense/kernel
dense/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_29615
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_33389
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/m Adam/lstm_1/lstm_cell_1/kernel/m*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mAdam/lstm_1/lstm_cell_1/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v Adam/lstm_1/lstm_cell_1/kernel/v*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vAdam/lstm_1/lstm_cell_1/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_33498��2
��
�

lstm_while_body_29773&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0G
4lstm_while_lstm_cell_split_readvariableop_resource_0:	�E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	�A
.lstm_while_lstm_cell_readvariableop_resource_0:	d�
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorE
2lstm_while_lstm_cell_split_readvariableop_resource:	�C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	�?
,lstm_while_lstm_cell_readvariableop_resource:	d���#lstm/while/lstm_cell/ReadVariableOp�%lstm/while/lstm_cell/ReadVariableOp_1�%lstm/while/lstm_cell/ReadVariableOp_2�%lstm/while/lstm_cell/ReadVariableOp_3�)lstm/while/lstm_cell/split/ReadVariableOp�+lstm/while/lstm_cell/split_1/ReadVariableOp�
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dh
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/while/lstm_cell/MatMul_4MatMullstm_while_placeholder_2+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������d_
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>a
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/while/lstm_cell/MulMullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/Add_1AddV2lstm/while/lstm_cell/Mul:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dq
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������di
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/while/lstm_cell/MatMul_5MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������da
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>a
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/while/lstm_cell/Mul_1Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/Add_3AddV2lstm/while/lstm_cell/Mul_1:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������ds
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dk
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/mul_2Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*'
_output_shapes
:���������d�
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/while/lstm_cell/MatMul_6MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������ds
lstm/while/lstm_cell/ReluRelulstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/mul_3Mul&lstm/while/lstm_cell/clip_by_value:z:0'lstm/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_2:z:0lstm/while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/while/lstm_cell/MatMul_7MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������da
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>a
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/while/lstm_cell/Mul_4Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/Add_7AddV2lstm/while/lstm_cell/Mul_4:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������ds
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dk
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������du
lstm/while/lstm_cell/Relu_1Relulstm/while/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/mul_5Mul(lstm/while/lstm_cell/clip_by_value_2:z:0)lstm/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:���R
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: �
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: �
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_5:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"�
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�J
�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_32966

inputs
states_0
states_10
split_readvariableop_resource:	�.
split_1_readvariableop_resource:	�*
readvariableop_resource:	d�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�split/ReadVariableOp�split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	�*
dtype0�
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:���������d\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:���������d\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:���������d\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:���������dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:���������dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:���������dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:���������dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:���������dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_4MatMulstates_0strided_slice:output:0*
T0*'
_output_shapes
:���������dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:���������dJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:���������d[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:���������d\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*'
_output_shapes
:���������dh
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:���������dL
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:���������d]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:���������di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*'
_output_shapes
:���������dh
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:���������dI
ReluRelu	add_4:z:0*
T0*'
_output_shapes
:���������de
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*'
_output_shapes
:���������dV
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*'
_output_shapes
:���������dh
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:���������dL
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:���������d]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_5:z:0*
T0*'
_output_shapes
:���������di
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�
�
while_cond_31102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31102___redundant_placeholder03
/while_while_cond_31102___redundant_placeholder13
/while_while_cond_31102___redundant_placeholder23
/while_while_cond_31102___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�x
�
while_body_29305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	�@
1while_lstm_cell_split_1_readvariableop_resource_0:	�<
)while_lstm_cell_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	�>
/while_lstm_cell_split_1_readvariableop_resource:	�:
'while_lstm_cell_readvariableop_resource:	d���while/lstm_cell/ReadVariableOp� while/lstm_cell/ReadVariableOp_1� while/lstm_cell/ReadVariableOp_2� while/lstm_cell/ReadVariableOp_3�$while/lstm_cell/split/ReadVariableOp�&while/lstm_cell/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dZ
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dl
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dd
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������di
while/lstm_cell/ReluReluwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_32426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_32426___redundant_placeholder03
/while_while_cond_32426___redundant_placeholder13
/while_while_cond_32426___redundant_placeholder23
/while_while_cond_32426___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
Ã
�
?__inference_lstm_layer_call_and_return_conditional_losses_31499

inputs:
'lstm_cell_split_readvariableop_resource:	�8
)lstm_cell_split_1_readvariableop_resource:	�4
!lstm_cell_readvariableop_resource:	d�
identity��lstm_cell/ReadVariableOp�lstm_cell/ReadVariableOp_1�lstm_cell/ReadVariableOp_2�lstm_cell/ReadVariableOp_3�lstm_cell/split/ReadVariableOp� lstm_cell/split_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dT
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������df
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������d]
lstm_cell/ReluRelulstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dt
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_31359*
condR
while_cond_31358*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������db
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�{
�	
while_body_32427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	d�B
3while_lstm_cell_1_split_1_readvariableop_resource_0:	�>
+while_lstm_cell_1_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d�@
1while_lstm_cell_1_split_1_readvariableop_resource:	�<
)while_lstm_cell_1_readvariableop_resource:	d��� while/lstm_cell_1/ReadVariableOp�"while/lstm_cell_1/ReadVariableOp_1�"while/lstm_cell_1/ReadVariableOp_2�"while/lstm_cell_1/ReadVariableOp_3�&while/lstm_cell_1/split/ReadVariableOp�(while/lstm_cell_1/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������de
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/MulMulwhile/lstm_cell_1/add:z:0 while/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_1AddV2while/lstm_cell_1/Mul:z:0"while/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell_1/clip_by_value/MinimumMinimumwhile/lstm_cell_1/Add_1:z:02while/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell_1/clip_by_valueMaximum+while/lstm_cell_1/clip_by_value/Minimum:z:0*while/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_1Mulwhile/lstm_cell_1/add_2:z:0"while/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_3AddV2while/lstm_cell_1/Mul_1:z:0"while/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_1/MinimumMinimumwhile/lstm_cell_1/Add_3:z:04while/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_1Maximum-while/lstm_cell_1/clip_by_value_1/Minimum:z:0,while/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_2Mul%while/lstm_cell_1/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������dm
while/lstm_cell_1/ReluReluwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_3Mul#while/lstm_cell_1/clip_by_value:z:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_5AddV2while/lstm_cell_1/mul_2:z:0while/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_6AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_4Mulwhile/lstm_cell_1/add_6:z:0"while/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_7AddV2while/lstm_cell_1/Mul_4:z:0"while/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_2/MinimumMinimumwhile/lstm_cell_1/Add_7:z:04while/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_2Maximum-while/lstm_cell_1/clip_by_value_2/Minimum:z:0,while/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������do
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_5Mul%while/lstm_cell_1/clip_by_value_2:z:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dx
while/Identity_5Identitywhile/lstm_cell_1/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�J
�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27720

inputs

states
states_10
split_readvariableop_resource:	�.
split_1_readvariableop_resource:	�*
readvariableop_resource:	d�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�split/ReadVariableOp�split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	�*
dtype0�
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:���������d\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:���������d\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:���������d\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:���������dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:���������dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:���������dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:���������dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:���������dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskd
MatMul_4MatMulstatesstrided_slice:output:0*
T0*'
_output_shapes
:���������dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:���������dJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:���������d[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:���������d\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*'
_output_shapes
:���������dh
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:���������dL
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:���������d]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:���������di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*'
_output_shapes
:���������dh
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:���������dI
ReluRelu	add_4:z:0*
T0*'
_output_shapes
:���������de
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*'
_output_shapes
:���������dV
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*'
_output_shapes
:���������dh
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:���������dL
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:���������d]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_5:z:0*
T0*'
_output_shapes
:���������di
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
�"
�
while_body_27532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_27556_0:	�&
while_lstm_cell_27558_0:	�*
while_lstm_cell_27560_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_27556:	�$
while_lstm_cell_27558:	�(
while_lstm_cell_27560:	d���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_27556_0while_lstm_cell_27558_0while_lstm_cell_27560_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27518�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dv

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_27556while_lstm_cell_27556_0"0
while_lstm_cell_27558while_lstm_cell_27558_0"0
while_lstm_cell_27560while_lstm_cell_27560_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
$__inference_lstm_layer_call_fn_30709
inputs_0
unknown:	�
	unknown_0:	�
	unknown_1:	d�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_27847|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�	
�
*__inference_sequential_layer_call_fn_28888

lstm_input
unknown:	�
	unknown_0:	�
	unknown_1:	d�
	unknown_2:	d�
	unknown_3:	�
	unknown_4:	d�
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28869o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:���������
$
_user_specified_name
lstm_input
��
�
?__inference_lstm_layer_call_and_return_conditional_losses_31243
inputs_0:
'lstm_cell_split_readvariableop_resource:	�8
)lstm_cell_split_1_readvariableop_resource:	�4
!lstm_cell_readvariableop_resource:	d�
identity��lstm_cell/ReadVariableOp�lstm_cell/ReadVariableOp_1�lstm_cell/ReadVariableOp_2�lstm_cell/ReadVariableOp_3�lstm_cell/split/ReadVariableOp� lstm_cell/split_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dT
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������df
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������d]
lstm_cell/ReluRelulstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dt
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_31103*
condR
while_cond_31102*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������dk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������d�
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_27980

inputs

states
states_10
split_readvariableop_resource:	d�.
split_1_readvariableop_resource:	�*
readvariableop_resource:	d�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�split/ReadVariableOp�split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:���������d\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:���������d\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:���������d\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:���������dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:���������dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:���������dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:���������dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:���������dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskd
MatMul_4MatMulstatesstrided_slice:output:0*
T0*'
_output_shapes
:���������dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:���������dJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:���������d[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:���������d\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*'
_output_shapes
:���������dh
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:���������dL
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:���������d]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:���������di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*'
_output_shapes
:���������dh
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:���������dI
ReluRelu	add_4:z:0*
T0*'
_output_shapes
:���������de
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*'
_output_shapes
:���������dV
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*'
_output_shapes
:���������dh
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:���������dL
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:���������d]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_5:z:0*
T0*'
_output_shapes
:���������di
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������d:���������d: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
�	
�
*__inference_sequential_layer_call_fn_29657

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	d�
	unknown_2:	d�
	unknown_3:	�
	unknown_4:	d�
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_29500o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
Ã
�
?__inference_lstm_layer_call_and_return_conditional_losses_31755

inputs:
'lstm_cell_split_readvariableop_resource:	�8
)lstm_cell_split_1_readvariableop_resource:	�4
!lstm_cell_readvariableop_resource:	d�
identity��lstm_cell/ReadVariableOp�lstm_cell/ReadVariableOp_1�lstm_cell/ReadVariableOp_2�lstm_cell/ReadVariableOp_3�lstm_cell/split/ReadVariableOp� lstm_cell/split_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dT
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������df
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������d]
lstm_cell/ReluRelulstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dt
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_31615*
condR
while_cond_31614*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������db
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_lstm_cell_layer_call_fn_32877

inputs
states_0
states_1
unknown:	�
	unknown_0:	�
	unknown_1:	d�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27720o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�J
�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_33055

inputs
states_0
states_10
split_readvariableop_resource:	�.
split_1_readvariableop_resource:	�*
readvariableop_resource:	d�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�split/ReadVariableOp�split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	�*
dtype0�
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:���������d\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:���������d\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:���������d\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:���������dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:���������dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:���������dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:���������dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:���������dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_4MatMulstates_0strided_slice:output:0*
T0*'
_output_shapes
:���������dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:���������dJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:���������d[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:���������d\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*'
_output_shapes
:���������dh
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:���������dL
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:���������d]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:���������di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*'
_output_shapes
:���������dh
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:���������dI
ReluRelu	add_4:z:0*
T0*'
_output_shapes
:���������de
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*'
_output_shapes
:���������dV
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*'
_output_shapes
:���������dh
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:���������dL
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:���������d]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_5:z:0*
T0*'
_output_shapes
:���������di
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
��
�
?__inference_lstm_layer_call_and_return_conditional_losses_30987
inputs_0:
'lstm_cell_split_readvariableop_resource:	�8
)lstm_cell_split_1_readvariableop_resource:	�4
!lstm_cell_readvariableop_resource:	d�
identity��lstm_cell/ReadVariableOp�lstm_cell/ReadVariableOp_1�lstm_cell/ReadVariableOp_2�lstm_cell/ReadVariableOp_3�lstm_cell/split/ReadVariableOp� lstm_cell/split_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dT
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������df
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������d]
lstm_cell/ReluRelulstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dt
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30847*
condR
while_cond_30846*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������dk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������d�
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�"
�
while_body_27779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_27803_0:	�&
while_lstm_cell_27805_0:	�*
while_lstm_cell_27807_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_27803:	�$
while_lstm_cell_27805:	�(
while_lstm_cell_27807:	d���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_27803_0while_lstm_cell_27805_0while_lstm_cell_27807_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27720�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dv

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_27803while_lstm_cell_27803_0"0
while_lstm_cell_27805while_lstm_cell_27805_0"0
while_lstm_cell_27807while_lstm_cell_27807_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�	
�
*__inference_sequential_layer_call_fn_29540

lstm_input
unknown:	�
	unknown_0:	�
	unknown_1:	d�
	unknown_2:	d�
	unknown_3:	�
	unknown_4:	d�
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_29500o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:���������
$
_user_specified_name
lstm_input
��
�

lstm_while_body_30288&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0G
4lstm_while_lstm_cell_split_readvariableop_resource_0:	�E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	�A
.lstm_while_lstm_cell_readvariableop_resource_0:	d�
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorE
2lstm_while_lstm_cell_split_readvariableop_resource:	�C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	�?
,lstm_while_lstm_cell_readvariableop_resource:	d���#lstm/while/lstm_cell/ReadVariableOp�%lstm/while/lstm_cell/ReadVariableOp_1�%lstm/while/lstm_cell/ReadVariableOp_2�%lstm/while/lstm_cell/ReadVariableOp_3�)lstm/while/lstm_cell/split/ReadVariableOp�+lstm/while/lstm_cell/split_1/ReadVariableOp�
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dh
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/while/lstm_cell/MatMul_4MatMullstm_while_placeholder_2+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������d_
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>a
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/while/lstm_cell/MulMullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/Add_1AddV2lstm/while/lstm_cell/Mul:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dq
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������di
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/while/lstm_cell/MatMul_5MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������da
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>a
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/while/lstm_cell/Mul_1Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/Add_3AddV2lstm/while/lstm_cell/Mul_1:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������ds
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dk
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/mul_2Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*'
_output_shapes
:���������d�
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/while/lstm_cell/MatMul_6MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������ds
lstm/while/lstm_cell/ReluRelulstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/mul_3Mul&lstm/while/lstm_cell/clip_by_value:z:0'lstm/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_2:z:0lstm/while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/while/lstm_cell/MatMul_7MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������da
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>a
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/while/lstm_cell/Mul_4Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/Add_7AddV2lstm/while/lstm_cell/Mul_4:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������ds
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dk
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������du
lstm/while/lstm_cell/Relu_1Relulstm/while/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm/while/lstm_cell/mul_5Mul(lstm/while/lstm_cell/clip_by_value_2:z:0)lstm/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:���R
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: �
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: �
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_5:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"�
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�x
�
while_body_31103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	�@
1while_lstm_cell_split_1_readvariableop_resource_0:	�<
)while_lstm_cell_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	�>
/while_lstm_cell_split_1_readvariableop_resource:	�:
'while_lstm_cell_readvariableop_resource:	d���while/lstm_cell/ReadVariableOp� while/lstm_cell/ReadVariableOp_1� while/lstm_cell/ReadVariableOp_2� while/lstm_cell/ReadVariableOp_3�$while/lstm_cell/split/ReadVariableOp�&while/lstm_cell/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dZ
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dl
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dd
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������di
while/lstm_cell/ReluReluwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_32170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_32170___redundant_placeholder03
/while_while_cond_32170___redundant_placeholder13
/while_while_cond_32170___redundant_placeholder23
/while_while_cond_32170___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�x
�
while_body_30847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	�@
1while_lstm_cell_split_1_readvariableop_resource_0:	�<
)while_lstm_cell_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	�>
/while_lstm_cell_split_1_readvariableop_resource:	�:
'while_lstm_cell_readvariableop_resource:	d���while/lstm_cell/ReadVariableOp� while/lstm_cell/ReadVariableOp_1� while/lstm_cell/ReadVariableOp_2� while/lstm_cell/ReadVariableOp_3�$while/lstm_cell/split/ReadVariableOp�&while/lstm_cell/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dZ
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dl
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dd
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������di
while/lstm_cell/ReluReluwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
+__inference_lstm_cell_1_layer_call_fn_33072

inputs
states_0
states_1
unknown:	d�
	unknown_0:	�
	unknown_1:	d�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_27980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_30172

inputs?
,lstm_lstm_cell_split_readvariableop_resource:	�=
.lstm_lstm_cell_split_1_readvariableop_resource:	�9
&lstm_lstm_cell_readvariableop_resource:	d�C
0lstm_1_lstm_cell_1_split_readvariableop_resource:	d�A
2lstm_1_lstm_cell_1_split_1_readvariableop_resource:	�=
*lstm_1_lstm_cell_1_readvariableop_resource:	d�6
$dense_matmul_readvariableop_resource:d3
%dense_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�lstm/lstm_cell/ReadVariableOp�lstm/lstm_cell/ReadVariableOp_1�lstm/lstm_cell/ReadVariableOp_2�lstm/lstm_cell/ReadVariableOp_3�#lstm/lstm_cell/split/ReadVariableOp�%lstm/lstm_cell/split_1/ReadVariableOp�
lstm/while�!lstm_1/lstm_cell_1/ReadVariableOp�#lstm_1/lstm_cell_1/ReadVariableOp_1�#lstm_1/lstm_cell_1/ReadVariableOp_2�#lstm_1/lstm_cell_1/ReadVariableOp_3�'lstm_1/lstm_cell_1/split/ReadVariableOp�)lstm_1/lstm_cell_1/split_1/ReadVariableOp�lstm_1/while@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:���������dW
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dh
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:���������N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���d
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������db
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/lstm_cell/MatMul_4MatMullstm/zeros:output:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dY
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>[
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/lstm_cell/MulMullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/Add_1AddV2lstm/lstm_cell/Mul:z:0lstm/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dk
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dc
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/lstm_cell/MatMul_5MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������d[
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>[
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/lstm_cell/Mul_1Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/Add_3AddV2lstm/lstm_cell/Mul_1:z:0lstm/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dm
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������de
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/mul_2Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/lstm_cell/MatMul_6MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������dg
lstm/lstm_cell/ReluRelulstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/mul_3Mul lstm/lstm_cell/clip_by_value:z:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_2:z:0lstm/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/lstm_cell/MatMul_7MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������d[
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>[
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/lstm_cell/Mul_4Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/Add_7AddV2lstm/lstm_cell/Mul_4:z:0lstm/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dm
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������de
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������di
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/mul_5Mul"lstm/lstm_cell/clip_by_value_2:z:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������ds
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_29773*!
condR
lstm_while_cond_29772*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dP
lstm_1/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:���������dY
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dj
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:���������dR
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���f
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskd
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
'lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/MatMul_2MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/MatMul_3MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������df
$lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
)lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_1/lstm_cell_1/split_1Split-lstm_1/lstm_cell_1/split_1/split_dim:output:01lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_1/lstm_cell_1/BiasAddBiasAdd#lstm_1/lstm_cell_1/MatMul:product:0#lstm_1/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/BiasAdd_1BiasAdd%lstm_1/lstm_cell_1/MatMul_1:product:0#lstm_1/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/BiasAdd_2BiasAdd%lstm_1/lstm_cell_1/MatMul_2:product:0#lstm_1/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/BiasAdd_3BiasAdd%lstm_1/lstm_cell_1/MatMul_3:product:0#lstm_1/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
!lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0w
&lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   y
(lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
 lstm_1/lstm_cell_1/strided_sliceStridedSlice)lstm_1/lstm_cell_1/ReadVariableOp:value:0/lstm_1/lstm_cell_1/strided_slice/stack:output:01lstm_1/lstm_cell_1/strided_slice/stack_1:output:01lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_1/lstm_cell_1/MatMul_4MatMullstm_1/zeros:output:0)lstm_1/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/BiasAdd:output:0%lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������d]
lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>_
lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/lstm_cell_1/MulMullstm_1/lstm_cell_1/add:z:0!lstm_1/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/Add_1AddV2lstm_1/lstm_cell_1/Mul:z:0#lstm_1/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������do
*lstm_1/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(lstm_1/lstm_cell_1/clip_by_value/MinimumMinimumlstm_1/lstm_cell_1/Add_1:z:03lstm_1/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dg
"lstm_1/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
 lstm_1/lstm_cell_1/clip_by_valueMaximum,lstm_1/lstm_cell_1/clip_by_value/Minimum:z:0+lstm_1/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
#lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0y
(lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   {
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   {
*lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"lstm_1/lstm_cell_1/strided_slice_1StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_1:value:01lstm_1/lstm_cell_1/strided_slice_1/stack:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_1/lstm_cell_1/MatMul_5MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/add_2AddV2%lstm_1/lstm_cell_1/BiasAdd_1:output:0%lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������d_
lstm_1/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>_
lstm_1/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/lstm_cell_1/Mul_1Mullstm_1/lstm_cell_1/add_2:z:0#lstm_1/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/Add_3AddV2lstm_1/lstm_cell_1/Mul_1:z:0#lstm_1/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dq
,lstm_1/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*lstm_1/lstm_cell_1/clip_by_value_1/MinimumMinimumlstm_1/lstm_cell_1/Add_3:z:05lstm_1/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������di
$lstm_1/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"lstm_1/lstm_cell_1/clip_by_value_1Maximum.lstm_1/lstm_cell_1/clip_by_value_1/Minimum:z:0-lstm_1/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/mul_2Mul&lstm_1/lstm_cell_1/clip_by_value_1:z:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
#lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0y
(lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   {
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  {
*lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"lstm_1/lstm_cell_1/strided_slice_2StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_2:value:01lstm_1/lstm_cell_1/strided_slice_2/stack:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_1/lstm_cell_1/MatMul_6MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/add_4AddV2%lstm_1/lstm_cell_1/BiasAdd_2:output:0%lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������do
lstm_1/lstm_cell_1/ReluRelulstm_1/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/mul_3Mul$lstm_1/lstm_cell_1/clip_by_value:z:0%lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/add_5AddV2lstm_1/lstm_cell_1/mul_2:z:0lstm_1/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
#lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0y
(lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  {
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"lstm_1/lstm_cell_1/strided_slice_3StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_3:value:01lstm_1/lstm_cell_1/strided_slice_3/stack:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_1/lstm_cell_1/MatMul_7MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/add_6AddV2%lstm_1/lstm_cell_1/BiasAdd_3:output:0%lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������d_
lstm_1/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>_
lstm_1/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/lstm_cell_1/Mul_4Mullstm_1/lstm_cell_1/add_6:z:0#lstm_1/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/Add_7AddV2lstm_1/lstm_cell_1/Mul_4:z:0#lstm_1/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dq
,lstm_1/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*lstm_1/lstm_cell_1/clip_by_value_2/MinimumMinimumlstm_1/lstm_cell_1/Add_7:z:05lstm_1/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������di
$lstm_1/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"lstm_1/lstm_cell_1/clip_by_value_2Maximum.lstm_1/lstm_cell_1/clip_by_value_2/Minimum:z:0-lstm_1/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dq
lstm_1/lstm_cell_1/Relu_1Relulstm_1/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/mul_5Mul&lstm_1/lstm_cell_1/clip_by_value_2:z:0'lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������du
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���M
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������[
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_1_split_readvariableop_resource2lstm_1_lstm_cell_1_split_1_readvariableop_resource*lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_1_while_body_30025*#
condR
lstm_1_while_cond_30024*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������h
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
dense/MatMulMatMullstm_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while"^lstm_1/lstm_cell_1/ReadVariableOp$^lstm_1/lstm_cell_1/ReadVariableOp_1$^lstm_1/lstm_cell_1/ReadVariableOp_2$^lstm_1/lstm_cell_1/ReadVariableOp_3(^lstm_1/lstm_cell_1/split/ReadVariableOp*^lstm_1/lstm_cell_1/split_1/ReadVariableOp^lstm_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while2F
!lstm_1/lstm_cell_1/ReadVariableOp!lstm_1/lstm_cell_1/ReadVariableOp2J
#lstm_1/lstm_cell_1/ReadVariableOp_1#lstm_1/lstm_cell_1/ReadVariableOp_12J
#lstm_1/lstm_cell_1/ReadVariableOp_2#lstm_1/lstm_cell_1/ReadVariableOp_22J
#lstm_1/lstm_cell_1/ReadVariableOp_3#lstm_1/lstm_cell_1/ReadVariableOp_32R
'lstm_1/lstm_cell_1/split/ReadVariableOp'lstm_1/lstm_cell_1/split/ReadVariableOp2V
)lstm_1/lstm_cell_1/split_1/ReadVariableOp)lstm_1/lstm_cell_1/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_lstm_layer_call_fn_30698
inputs_0
unknown:	�
	unknown_0:	�
	unknown_1:	d�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_27600|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_33178

inputs
states_0
states_10
split_readvariableop_resource:	d�.
split_1_readvariableop_resource:	�*
readvariableop_resource:	d�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�split/ReadVariableOp�split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:���������d\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:���������d\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:���������d\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:���������dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:���������dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:���������dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:���������dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:���������dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_4MatMulstates_0strided_slice:output:0*
T0*'
_output_shapes
:���������dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:���������dJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:���������d[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:���������d\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*'
_output_shapes
:���������dh
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:���������dL
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:���������d]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:���������di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*'
_output_shapes
:���������dh
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:���������dI
ReluRelu	add_4:z:0*
T0*'
_output_shapes
:���������de
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*'
_output_shapes
:���������dV
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*'
_output_shapes
:���������dh
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:���������dL
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:���������d]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_5:z:0*
T0*'
_output_shapes
:���������di
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������d:���������d: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�
�
+__inference_lstm_cell_1_layer_call_fn_33089

inputs
states_0
states_1
unknown:	d�
	unknown_0:	�
	unknown_1:	d�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_28182o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�
�
while_cond_29304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_29304___redundant_placeholder03
/while_while_cond_29304___redundant_placeholder13
/while_while_cond_29304___redundant_placeholder23
/while_while_cond_29304___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_27778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_27778___redundant_placeholder03
/while_while_cond_27778___redundant_placeholder13
/while_while_cond_27778___redundant_placeholder23
/while_while_cond_27778___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�7
�
A__inference_lstm_1_layer_call_and_return_conditional_losses_28062

inputs$
lstm_cell_1_27981:	d� 
lstm_cell_1_27983:	�$
lstm_cell_1_27985:	d�
identity��#lstm_cell_1/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_27981lstm_cell_1_27983lstm_cell_1_27985*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_27980n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_27981lstm_cell_1_27983lstm_cell_1_27985*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_27994*
condR
while_cond_27993*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������dg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������dt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�J
�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27518

inputs

states
states_10
split_readvariableop_resource:	�.
split_1_readvariableop_resource:	�*
readvariableop_resource:	d�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�split/ReadVariableOp�split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	�*
dtype0�
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:���������d\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:���������d\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:���������d\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:���������dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:���������dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:���������dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:���������dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:���������dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskd
MatMul_4MatMulstatesstrided_slice:output:0*
T0*'
_output_shapes
:���������dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:���������dJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:���������d[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:���������d\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*'
_output_shapes
:���������dh
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:���������dL
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:���������d]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:���������di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*'
_output_shapes
:���������dh
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:���������dI
ReluRelu	add_4:z:0*
T0*'
_output_shapes
:���������de
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*'
_output_shapes
:���������dV
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*'
_output_shapes
:���������dh
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:���������dL
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:���������d]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_5:z:0*
T0*'
_output_shapes
:���������di
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
�
�
while_cond_29026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_29026___redundant_placeholder03
/while_while_cond_29026___redundant_placeholder13
/while_while_cond_29026___redundant_placeholder23
/while_while_cond_29026___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�x
�
while_body_28440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	�@
1while_lstm_cell_split_1_readvariableop_resource_0:	�<
)while_lstm_cell_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	�>
/while_lstm_cell_split_1_readvariableop_resource:	�:
'while_lstm_cell_readvariableop_resource:	d���while/lstm_cell/ReadVariableOp� while/lstm_cell/ReadVariableOp_1� while/lstm_cell/ReadVariableOp_2� while/lstm_cell/ReadVariableOp_3�$while/lstm_cell/split/ReadVariableOp�&while/lstm_cell/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dZ
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dl
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dd
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������di
while/lstm_cell/ReluReluwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
$__inference_lstm_layer_call_fn_30731

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	d�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_29445s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_lstm_1_layer_call_fn_31777
inputs_0
unknown:	d�
	unknown_0:	�
	unknown_1:	d�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_28309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
"sequential_lstm_1_while_cond_27246@
<sequential_lstm_1_while_sequential_lstm_1_while_loop_counterF
Bsequential_lstm_1_while_sequential_lstm_1_while_maximum_iterations'
#sequential_lstm_1_while_placeholder)
%sequential_lstm_1_while_placeholder_1)
%sequential_lstm_1_while_placeholder_2)
%sequential_lstm_1_while_placeholder_3B
>sequential_lstm_1_while_less_sequential_lstm_1_strided_slice_1W
Ssequential_lstm_1_while_sequential_lstm_1_while_cond_27246___redundant_placeholder0W
Ssequential_lstm_1_while_sequential_lstm_1_while_cond_27246___redundant_placeholder1W
Ssequential_lstm_1_while_sequential_lstm_1_while_cond_27246___redundant_placeholder2W
Ssequential_lstm_1_while_sequential_lstm_1_while_cond_27246___redundant_placeholder3$
 sequential_lstm_1_while_identity
�
sequential/lstm_1/while/LessLess#sequential_lstm_1_while_placeholder>sequential_lstm_1_while_less_sequential_lstm_1_strided_slice_1*
T0*
_output_shapes
: o
 sequential/lstm_1/while/IdentityIdentity sequential/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "M
 sequential_lstm_1_while_identity)sequential/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_28240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_28240___redundant_placeholder03
/while_while_cond_28240___redundant_placeholder13
/while_while_cond_28240___redundant_placeholder23
/while_while_cond_28240___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�x
�
while_body_31359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	�@
1while_lstm_cell_split_1_readvariableop_resource_0:	�<
)while_lstm_cell_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	�>
/while_lstm_cell_split_1_readvariableop_resource:	�:
'while_lstm_cell_readvariableop_resource:	d���while/lstm_cell/ReadVariableOp� while/lstm_cell/ReadVariableOp_1� while/lstm_cell/ReadVariableOp_2� while/lstm_cell/ReadVariableOp_3�$while/lstm_cell/split/ReadVariableOp�&while/lstm_cell/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dZ
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dl
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dd
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������di
while/lstm_cell/ReluReluwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
&__inference_lstm_1_layer_call_fn_31766
inputs_0
unknown:	d�
	unknown_0:	�
	unknown_1:	d�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_28062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�{
�	
while_body_32171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	d�B
3while_lstm_cell_1_split_1_readvariableop_resource_0:	�>
+while_lstm_cell_1_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d�@
1while_lstm_cell_1_split_1_readvariableop_resource:	�<
)while_lstm_cell_1_readvariableop_resource:	d��� while/lstm_cell_1/ReadVariableOp�"while/lstm_cell_1/ReadVariableOp_1�"while/lstm_cell_1/ReadVariableOp_2�"while/lstm_cell_1/ReadVariableOp_3�&while/lstm_cell_1/split/ReadVariableOp�(while/lstm_cell_1/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������de
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/MulMulwhile/lstm_cell_1/add:z:0 while/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_1AddV2while/lstm_cell_1/Mul:z:0"while/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell_1/clip_by_value/MinimumMinimumwhile/lstm_cell_1/Add_1:z:02while/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell_1/clip_by_valueMaximum+while/lstm_cell_1/clip_by_value/Minimum:z:0*while/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_1Mulwhile/lstm_cell_1/add_2:z:0"while/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_3AddV2while/lstm_cell_1/Mul_1:z:0"while/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_1/MinimumMinimumwhile/lstm_cell_1/Add_3:z:04while/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_1Maximum-while/lstm_cell_1/clip_by_value_1/Minimum:z:0,while/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_2Mul%while/lstm_cell_1/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������dm
while/lstm_cell_1/ReluReluwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_3Mul#while/lstm_cell_1/clip_by_value:z:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_5AddV2while/lstm_cell_1/mul_2:z:0while/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_6AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_4Mulwhile/lstm_cell_1/add_6:z:0"while/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_7AddV2while/lstm_cell_1/Mul_4:z:0"while/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_2/MinimumMinimumwhile/lstm_cell_1/Add_7:z:04while/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_2Maximum-while/lstm_cell_1/clip_by_value_2/Minimum:z:0,while/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������do
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_5Mul%while/lstm_cell_1/clip_by_value_2:z:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dx
while/Identity_5Identitywhile/lstm_cell_1/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
��
�
A__inference_lstm_1_layer_call_and_return_conditional_losses_32055
inputs_0<
)lstm_cell_1_split_readvariableop_resource:	d�:
+lstm_cell_1_split_1_readvariableop_resource:	�6
#lstm_cell_1_readvariableop_resource:	d�
identity��lstm_cell_1/ReadVariableOp�lstm_cell_1/ReadVariableOp_1�lstm_cell_1/ReadVariableOp_2�lstm_cell_1/ReadVariableOp_3� lstm_cell_1/split/ReadVariableOp�"lstm_cell_1/split_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_4MatMulzeros:output:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_1/MulMullstm_cell_1/add:z:0lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d
lstm_cell_1/Add_1AddV2lstm_cell_1/Mul:z:0lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell_1/clip_by_value/MinimumMinimumlstm_cell_1/Add_1:z:0,lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_valueMaximum%lstm_cell_1/clip_by_value/Minimum:z:0$lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_5MatMulzeros:output:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_1Mullstm_cell_1/add_2:z:0lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_3AddV2lstm_cell_1/Mul_1:z:0lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_1/MinimumMinimumlstm_cell_1/Add_3:z:0.lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_1Maximum'lstm_cell_1/clip_by_value_1/Minimum:z:0&lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell_1/mul_2Mullstm_cell_1/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_6MatMulzeros:output:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������da
lstm_cell_1/ReluRelulstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_3Mullstm_cell_1/clip_by_value:z:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������dz
lstm_cell_1/add_5AddV2lstm_cell_1/mul_2:z:0lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_7MatMulzeros:output:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_6AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_4Mullstm_cell_1/add_6:z:0lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_7AddV2lstm_cell_1/Mul_4:z:0lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_2/MinimumMinimumlstm_cell_1/Add_7:z:0.lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_2Maximum'lstm_cell_1/clip_by_value_2/Minimum:z:0&lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dc
lstm_cell_1/Relu_1Relulstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_5Mullstm_cell_1/clip_by_value_2:z:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_31915*
condR
while_cond_31914*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������dg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�x
�
while_body_31615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	�@
1while_lstm_cell_split_1_readvariableop_resource_0:	�<
)while_lstm_cell_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	�>
/while_lstm_cell_split_1_readvariableop_resource:	�:
'while_lstm_cell_readvariableop_resource:	d���while/lstm_cell/ReadVariableOp� while/lstm_cell/ReadVariableOp_1� while/lstm_cell/ReadVariableOp_2� while/lstm_cell/ReadVariableOp_3�$while/lstm_cell/split/ReadVariableOp�&while/lstm_cell/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dZ
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dl
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dd
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������di
while/lstm_cell/ReluReluwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dv
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�{
�	
while_body_32683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	d�B
3while_lstm_cell_1_split_1_readvariableop_resource_0:	�>
+while_lstm_cell_1_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d�@
1while_lstm_cell_1_split_1_readvariableop_resource:	�<
)while_lstm_cell_1_readvariableop_resource:	d��� while/lstm_cell_1/ReadVariableOp�"while/lstm_cell_1/ReadVariableOp_1�"while/lstm_cell_1/ReadVariableOp_2�"while/lstm_cell_1/ReadVariableOp_3�&while/lstm_cell_1/split/ReadVariableOp�(while/lstm_cell_1/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������de
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/MulMulwhile/lstm_cell_1/add:z:0 while/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_1AddV2while/lstm_cell_1/Mul:z:0"while/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell_1/clip_by_value/MinimumMinimumwhile/lstm_cell_1/Add_1:z:02while/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell_1/clip_by_valueMaximum+while/lstm_cell_1/clip_by_value/Minimum:z:0*while/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_1Mulwhile/lstm_cell_1/add_2:z:0"while/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_3AddV2while/lstm_cell_1/Mul_1:z:0"while/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_1/MinimumMinimumwhile/lstm_cell_1/Add_3:z:04while/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_1Maximum-while/lstm_cell_1/clip_by_value_1/Minimum:z:0,while/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_2Mul%while/lstm_cell_1/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������dm
while/lstm_cell_1/ReluReluwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_3Mul#while/lstm_cell_1/clip_by_value:z:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_5AddV2while/lstm_cell_1/mul_2:z:0while/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_6AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_4Mulwhile/lstm_cell_1/add_6:z:0"while/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_7AddV2while/lstm_cell_1/Mul_4:z:0"while/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_2/MinimumMinimumwhile/lstm_cell_1/Add_7:z:04while/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_2Maximum-while/lstm_cell_1/clip_by_value_2/Minimum:z:0,while/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������do
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_5Mul%while/lstm_cell_1/clip_by_value_2:z:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dx
while/Identity_5Identitywhile/lstm_cell_1/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_27531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_27531___redundant_placeholder03
/while_while_cond_27531___redundant_placeholder13
/while_while_cond_27531___redundant_placeholder23
/while_while_cond_27531___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�

�
@__inference_dense_layer_call_and_return_conditional_losses_28862

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
"sequential_lstm_1_while_body_27247@
<sequential_lstm_1_while_sequential_lstm_1_while_loop_counterF
Bsequential_lstm_1_while_sequential_lstm_1_while_maximum_iterations'
#sequential_lstm_1_while_placeholder)
%sequential_lstm_1_while_placeholder_1)
%sequential_lstm_1_while_placeholder_2)
%sequential_lstm_1_while_placeholder_3?
;sequential_lstm_1_while_sequential_lstm_1_strided_slice_1_0{
wsequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0V
Csequential_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0:	d�T
Esequential_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0:	�P
=sequential_lstm_1_while_lstm_cell_1_readvariableop_resource_0:	d�$
 sequential_lstm_1_while_identity&
"sequential_lstm_1_while_identity_1&
"sequential_lstm_1_while_identity_2&
"sequential_lstm_1_while_identity_3&
"sequential_lstm_1_while_identity_4&
"sequential_lstm_1_while_identity_5=
9sequential_lstm_1_while_sequential_lstm_1_strided_slice_1y
usequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensorT
Asequential_lstm_1_while_lstm_cell_1_split_readvariableop_resource:	d�R
Csequential_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:	�N
;sequential_lstm_1_while_lstm_cell_1_readvariableop_resource:	d���2sequential/lstm_1/while/lstm_cell_1/ReadVariableOp�4sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_1�4sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_2�4sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_3�8sequential/lstm_1/while/lstm_cell_1/split/ReadVariableOp�:sequential/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp�
Isequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
;sequential/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwsequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0#sequential_lstm_1_while_placeholderRsequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0u
3sequential/lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
8sequential/lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOpCsequential_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
)sequential/lstm_1/while/lstm_cell_1/splitSplit<sequential/lstm_1/while/lstm_cell_1/split/split_dim:output:0@sequential/lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
*sequential/lstm_1/while/lstm_cell_1/MatMulMatMulBsequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
,sequential/lstm_1/while/lstm_cell_1/MatMul_1MatMulBsequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
,sequential/lstm_1/while/lstm_cell_1/MatMul_2MatMulBsequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
,sequential/lstm_1/while/lstm_cell_1/MatMul_3MatMulBsequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������dw
5sequential/lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
:sequential/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOpEsequential_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
+sequential/lstm_1/while/lstm_cell_1/split_1Split>sequential/lstm_1/while/lstm_cell_1/split_1/split_dim:output:0Bsequential/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
+sequential/lstm_1/while/lstm_cell_1/BiasAddBiasAdd4sequential/lstm_1/while/lstm_cell_1/MatMul:product:04sequential/lstm_1/while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
-sequential/lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd6sequential/lstm_1/while/lstm_cell_1/MatMul_1:product:04sequential/lstm_1/while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
-sequential/lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd6sequential/lstm_1/while/lstm_cell_1/MatMul_2:product:04sequential/lstm_1/while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
-sequential/lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd6sequential/lstm_1/while/lstm_cell_1/MatMul_3:product:04sequential/lstm_1/while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
2sequential/lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp=sequential_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
7sequential/lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9sequential/lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   �
9sequential/lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1sequential/lstm_1/while/lstm_cell_1/strided_sliceStridedSlice:sequential/lstm_1/while/lstm_cell_1/ReadVariableOp:value:0@sequential/lstm_1/while/lstm_cell_1/strided_slice/stack:output:0Bsequential/lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:0Bsequential/lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
,sequential/lstm_1/while/lstm_cell_1/MatMul_4MatMul%sequential_lstm_1_while_placeholder_2:sequential/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
'sequential/lstm_1/while/lstm_cell_1/addAddV24sequential/lstm_1/while/lstm_cell_1/BiasAdd:output:06sequential/lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dn
)sequential/lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>p
+sequential/lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
'sequential/lstm_1/while/lstm_cell_1/MulMul+sequential/lstm_1/while/lstm_cell_1/add:z:02sequential/lstm_1/while/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/Add_1AddV2+sequential/lstm_1/while/lstm_cell_1/Mul:z:04sequential/lstm_1/while/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������d�
;sequential/lstm_1/while/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
9sequential/lstm_1/while/lstm_cell_1/clip_by_value/MinimumMinimum-sequential/lstm_1/while/lstm_cell_1/Add_1:z:0Dsequential/lstm_1/while/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dx
3sequential/lstm_1/while/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
1sequential/lstm_1/while/lstm_cell_1/clip_by_valueMaximum=sequential/lstm_1/while/lstm_cell_1/clip_by_value/Minimum:z:0<sequential/lstm_1/while/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
4sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp=sequential_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
9sequential/lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   �
;sequential/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   �
;sequential/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
3sequential/lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice<sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:0Bsequential/lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:0Dsequential/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:0Dsequential/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
,sequential/lstm_1/while/lstm_cell_1/MatMul_5MatMul%sequential_lstm_1_while_placeholder_2<sequential/lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/add_2AddV26sequential/lstm_1/while/lstm_cell_1/BiasAdd_1:output:06sequential/lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������dp
+sequential/lstm_1/while/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>p
+sequential/lstm_1/while/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
)sequential/lstm_1/while/lstm_cell_1/Mul_1Mul-sequential/lstm_1/while/lstm_cell_1/add_2:z:04sequential/lstm_1/while/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/Add_3AddV2-sequential/lstm_1/while/lstm_cell_1/Mul_1:z:04sequential/lstm_1/while/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������d�
=sequential/lstm_1/while/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
;sequential/lstm_1/while/lstm_cell_1/clip_by_value_1/MinimumMinimum-sequential/lstm_1/while/lstm_cell_1/Add_3:z:0Fsequential/lstm_1/while/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dz
5sequential/lstm_1/while/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
3sequential/lstm_1/while/lstm_cell_1/clip_by_value_1Maximum?sequential/lstm_1/while/lstm_cell_1/clip_by_value_1/Minimum:z:0>sequential/lstm_1/while/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/mul_2Mul7sequential/lstm_1/while/lstm_cell_1/clip_by_value_1:z:0%sequential_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:���������d�
4sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp=sequential_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
9sequential/lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   �
;sequential/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  �
;sequential/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
3sequential/lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice<sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:0Bsequential/lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:0Dsequential/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:0Dsequential/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
,sequential/lstm_1/while/lstm_cell_1/MatMul_6MatMul%sequential_lstm_1_while_placeholder_2<sequential/lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/add_4AddV26sequential/lstm_1/while/lstm_cell_1/BiasAdd_2:output:06sequential/lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������d�
(sequential/lstm_1/while/lstm_cell_1/ReluRelu-sequential/lstm_1/while/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/mul_3Mul5sequential/lstm_1/while/lstm_cell_1/clip_by_value:z:06sequential/lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/add_5AddV2-sequential/lstm_1/while/lstm_cell_1/mul_2:z:0-sequential/lstm_1/while/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
4sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp=sequential_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
9sequential/lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  �
;sequential/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
;sequential/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
3sequential/lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice<sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:0Bsequential/lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:0Dsequential/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:0Dsequential/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
,sequential/lstm_1/while/lstm_cell_1/MatMul_7MatMul%sequential_lstm_1_while_placeholder_2<sequential/lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/add_6AddV26sequential/lstm_1/while/lstm_cell_1/BiasAdd_3:output:06sequential/lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������dp
+sequential/lstm_1/while/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>p
+sequential/lstm_1/while/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
)sequential/lstm_1/while/lstm_cell_1/Mul_4Mul-sequential/lstm_1/while/lstm_cell_1/add_6:z:04sequential/lstm_1/while/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/Add_7AddV2-sequential/lstm_1/while/lstm_cell_1/Mul_4:z:04sequential/lstm_1/while/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������d�
=sequential/lstm_1/while/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
;sequential/lstm_1/while/lstm_cell_1/clip_by_value_2/MinimumMinimum-sequential/lstm_1/while/lstm_cell_1/Add_7:z:0Fsequential/lstm_1/while/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dz
5sequential/lstm_1/while/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
3sequential/lstm_1/while/lstm_cell_1/clip_by_value_2Maximum?sequential/lstm_1/while/lstm_cell_1/clip_by_value_2/Minimum:z:0>sequential/lstm_1/while/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d�
*sequential/lstm_1/while/lstm_cell_1/Relu_1Relu-sequential/lstm_1/while/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm_1/while/lstm_cell_1/mul_5Mul7sequential/lstm_1/while/lstm_cell_1/clip_by_value_2:z:08sequential/lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
<sequential/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%sequential_lstm_1_while_placeholder_1#sequential_lstm_1_while_placeholder-sequential/lstm_1/while/lstm_cell_1/mul_5:z:0*
_output_shapes
: *
element_dtype0:���_
sequential/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential/lstm_1/while/addAddV2#sequential_lstm_1_while_placeholder&sequential/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: a
sequential/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential/lstm_1/while/add_1AddV2<sequential_lstm_1_while_sequential_lstm_1_while_loop_counter(sequential/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
 sequential/lstm_1/while/IdentityIdentity!sequential/lstm_1/while/add_1:z:0^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: �
"sequential/lstm_1/while/Identity_1IdentityBsequential_lstm_1_while_sequential_lstm_1_while_maximum_iterations^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: �
"sequential/lstm_1/while/Identity_2Identitysequential/lstm_1/while/add:z:0^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: �
"sequential/lstm_1/while/Identity_3IdentityLsequential/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: �
"sequential/lstm_1/while/Identity_4Identity-sequential/lstm_1/while/lstm_cell_1/mul_5:z:0^sequential/lstm_1/while/NoOp*
T0*'
_output_shapes
:���������d�
"sequential/lstm_1/while/Identity_5Identity-sequential/lstm_1/while/lstm_cell_1/add_5:z:0^sequential/lstm_1/while/NoOp*
T0*'
_output_shapes
:���������d�
sequential/lstm_1/while/NoOpNoOp3^sequential/lstm_1/while/lstm_cell_1/ReadVariableOp5^sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_15^sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_25^sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_39^sequential/lstm_1/while/lstm_cell_1/split/ReadVariableOp;^sequential/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "M
 sequential_lstm_1_while_identity)sequential/lstm_1/while/Identity:output:0"Q
"sequential_lstm_1_while_identity_1+sequential/lstm_1/while/Identity_1:output:0"Q
"sequential_lstm_1_while_identity_2+sequential/lstm_1/while/Identity_2:output:0"Q
"sequential_lstm_1_while_identity_3+sequential/lstm_1/while/Identity_3:output:0"Q
"sequential_lstm_1_while_identity_4+sequential/lstm_1/while/Identity_4:output:0"Q
"sequential_lstm_1_while_identity_5+sequential/lstm_1/while/Identity_5:output:0"|
;sequential_lstm_1_while_lstm_cell_1_readvariableop_resource=sequential_lstm_1_while_lstm_cell_1_readvariableop_resource_0"�
Csequential_lstm_1_while_lstm_cell_1_split_1_readvariableop_resourceEsequential_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"�
Asequential_lstm_1_while_lstm_cell_1_split_readvariableop_resourceCsequential_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"x
9sequential_lstm_1_while_sequential_lstm_1_strided_slice_1;sequential_lstm_1_while_sequential_lstm_1_strided_slice_1_0"�
usequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensorwsequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2h
2sequential/lstm_1/while/lstm_cell_1/ReadVariableOp2sequential/lstm_1/while/lstm_cell_1/ReadVariableOp2l
4sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_14sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_12l
4sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_24sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_22l
4sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_34sequential/lstm_1/while/lstm_cell_1/ReadVariableOp_32t
8sequential/lstm_1/while/lstm_cell_1/split/ReadVariableOp8sequential/lstm_1/while/lstm_cell_1/split/ReadVariableOp2x
:sequential/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:sequential/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�"
�
while_body_27994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_1_28018_0:	d�(
while_lstm_cell_1_28020_0:	�,
while_lstm_cell_1_28022_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_1_28018:	d�&
while_lstm_cell_1_28020:	�*
while_lstm_cell_1_28022:	d���)while/lstm_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_28018_0while_lstm_cell_1_28020_0while_lstm_cell_1_28022_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_27980�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dx

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_28018while_lstm_cell_1_28018_0"4
while_lstm_cell_1_28020while_lstm_cell_1_28020_0"4
while_lstm_cell_1_28022while_lstm_cell_1_28022_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
&__inference_lstm_1_layer_call_fn_31788

inputs
unknown:	d�
	unknown_0:	�
	unknown_1:	d�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_28843o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�	
�
*__inference_sequential_layer_call_fn_29636

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	d�
	unknown_2:	d�
	unknown_3:	�
	unknown_4:	d�
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28869o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�6
�
?__inference_lstm_layer_call_and_return_conditional_losses_27847

inputs"
lstm_cell_27766:	�
lstm_cell_27768:	�"
lstm_cell_27770:	d�
identity��!lstm_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_27766lstm_cell_27768lstm_cell_27770*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27720n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_27766lstm_cell_27768lstm_cell_27770*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_27779*
condR
while_cond_27778*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������dk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������dr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
&__inference_lstm_1_layer_call_fn_31799

inputs
unknown:	d�
	unknown_0:	�
	unknown_1:	d�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_29167o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
A__inference_lstm_1_layer_call_and_return_conditional_losses_29167

inputs<
)lstm_cell_1_split_readvariableop_resource:	d�:
+lstm_cell_1_split_1_readvariableop_resource:	�6
#lstm_cell_1_readvariableop_resource:	d�
identity��lstm_cell_1/ReadVariableOp�lstm_cell_1/ReadVariableOp_1�lstm_cell_1/ReadVariableOp_2�lstm_cell_1/ReadVariableOp_3� lstm_cell_1/split/ReadVariableOp�"lstm_cell_1/split_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_4MatMulzeros:output:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_1/MulMullstm_cell_1/add:z:0lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d
lstm_cell_1/Add_1AddV2lstm_cell_1/Mul:z:0lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell_1/clip_by_value/MinimumMinimumlstm_cell_1/Add_1:z:0,lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_valueMaximum%lstm_cell_1/clip_by_value/Minimum:z:0$lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_5MatMulzeros:output:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_1Mullstm_cell_1/add_2:z:0lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_3AddV2lstm_cell_1/Mul_1:z:0lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_1/MinimumMinimumlstm_cell_1/Add_3:z:0.lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_1Maximum'lstm_cell_1/clip_by_value_1/Minimum:z:0&lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell_1/mul_2Mullstm_cell_1/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_6MatMulzeros:output:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������da
lstm_cell_1/ReluRelulstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_3Mullstm_cell_1/clip_by_value:z:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������dz
lstm_cell_1/add_5AddV2lstm_cell_1/mul_2:z:0lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_7MatMulzeros:output:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_6AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_4Mullstm_cell_1/add_6:z:0lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_7AddV2lstm_cell_1/Mul_4:z:0lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_2/MinimumMinimumlstm_cell_1/Add_7:z:0.lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_2Maximum'lstm_cell_1/clip_by_value_2/Minimum:z:0&lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dc
lstm_cell_1/Relu_1Relulstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_5Mullstm_cell_1/clip_by_value_2:z:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_29027*
condR
while_cond_29026*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
A__inference_lstm_1_layer_call_and_return_conditional_losses_28843

inputs<
)lstm_cell_1_split_readvariableop_resource:	d�:
+lstm_cell_1_split_1_readvariableop_resource:	�6
#lstm_cell_1_readvariableop_resource:	d�
identity��lstm_cell_1/ReadVariableOp�lstm_cell_1/ReadVariableOp_1�lstm_cell_1/ReadVariableOp_2�lstm_cell_1/ReadVariableOp_3� lstm_cell_1/split/ReadVariableOp�"lstm_cell_1/split_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_4MatMulzeros:output:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_1/MulMullstm_cell_1/add:z:0lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d
lstm_cell_1/Add_1AddV2lstm_cell_1/Mul:z:0lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell_1/clip_by_value/MinimumMinimumlstm_cell_1/Add_1:z:0,lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_valueMaximum%lstm_cell_1/clip_by_value/Minimum:z:0$lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_5MatMulzeros:output:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_1Mullstm_cell_1/add_2:z:0lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_3AddV2lstm_cell_1/Mul_1:z:0lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_1/MinimumMinimumlstm_cell_1/Add_3:z:0.lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_1Maximum'lstm_cell_1/clip_by_value_1/Minimum:z:0&lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell_1/mul_2Mullstm_cell_1/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_6MatMulzeros:output:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������da
lstm_cell_1/ReluRelulstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_3Mullstm_cell_1/clip_by_value:z:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������dz
lstm_cell_1/add_5AddV2lstm_cell_1/mul_2:z:0lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_7MatMulzeros:output:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_6AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_4Mullstm_cell_1/add_6:z:0lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_7AddV2lstm_cell_1/Mul_4:z:0lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_2/MinimumMinimumlstm_cell_1/Add_7:z:0.lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_2Maximum'lstm_cell_1/clip_by_value_2/Minimum:z:0&lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dc
lstm_cell_1/Relu_1Relulstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_5Mullstm_cell_1/clip_by_value_2:z:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_28703*
condR
while_cond_28702*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_32832

inputs
unknown:d
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_28862o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
 sequential_lstm_while_cond_26994<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1S
Osequential_lstm_while_sequential_lstm_while_cond_26994___redundant_placeholder0S
Osequential_lstm_while_sequential_lstm_while_cond_26994___redundant_placeholder1S
Osequential_lstm_while_sequential_lstm_while_cond_26994___redundant_placeholder2S
Osequential_lstm_while_sequential_lstm_while_cond_26994___redundant_placeholder3"
sequential_lstm_while_identity
�
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: k
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
��
�
lstm_1_while_body_30540*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0:	d�I
:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0:	�E
2lstm_1_while_lstm_cell_1_readvariableop_resource_0:	d�
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorI
6lstm_1_while_lstm_cell_1_split_readvariableop_resource:	d�G
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:	�C
0lstm_1_while_lstm_cell_1_readvariableop_resource:	d���'lstm_1/while/lstm_cell_1/ReadVariableOp�)lstm_1/while/lstm_cell_1/ReadVariableOp_1�)lstm_1/while/lstm_cell_1/ReadVariableOp_2�)lstm_1/while/lstm_cell_1/ReadVariableOp_3�-lstm_1/while/lstm_cell_1/split/ReadVariableOp�/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp�
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0j
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
-lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:05lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_1/while/lstm_cell_1/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
!lstm_1/while/lstm_cell_1/MatMul_1MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
!lstm_1/while/lstm_cell_1/MatMul_2MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_1/while/lstm_cell_1/MatMul_3MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������dl
*lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
 lstm_1/while/lstm_cell_1/split_1Split3lstm_1/while/lstm_cell_1/split_1/split_dim:output:07lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd)lstm_1/while/lstm_cell_1/MatMul:product:0)lstm_1/while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
"lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_1/MatMul_1:product:0)lstm_1/while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
"lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_1/MatMul_2:product:0)lstm_1/while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
"lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_1/MatMul_3:product:0)lstm_1/while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
'lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0}
,lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   
.lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&lstm_1/while/lstm_cell_1/strided_sliceStridedSlice/lstm_1/while/lstm_cell_1/ReadVariableOp:value:05lstm_1/while/lstm_cell_1/strided_slice/stack:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
!lstm_1/while/lstm_cell_1/MatMul_4MatMullstm_1_while_placeholder_2/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/BiasAdd:output:0+lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dc
lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>e
 lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/while/lstm_cell_1/MulMul lstm_1/while/lstm_cell_1/add:z:0'lstm_1/while/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/Add_1AddV2 lstm_1/while/lstm_cell_1/Mul:z:0)lstm_1/while/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������du
0lstm_1/while/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.lstm_1/while/lstm_cell_1/clip_by_value/MinimumMinimum"lstm_1/while/lstm_cell_1/Add_1:z:09lstm_1/while/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dm
(lstm_1/while/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&lstm_1/while/lstm_cell_1/clip_by_valueMaximum2lstm_1/while/lstm_cell_1/clip_by_value/Minimum:z:01lstm_1/while/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
)lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0
.lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   �
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   �
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
!lstm_1/while/lstm_cell_1/MatMul_5MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/add_2AddV2+lstm_1/while/lstm_cell_1/BiasAdd_1:output:0+lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������de
 lstm_1/while/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>e
 lstm_1/while/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/while/lstm_cell_1/Mul_1Mul"lstm_1/while/lstm_cell_1/add_2:z:0)lstm_1/while/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/Add_3AddV2"lstm_1/while/lstm_cell_1/Mul_1:z:0)lstm_1/while/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dw
2lstm_1/while/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0lstm_1/while/lstm_cell_1/clip_by_value_1/MinimumMinimum"lstm_1/while/lstm_cell_1/Add_3:z:0;lstm_1/while/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������do
*lstm_1/while/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
(lstm_1/while/lstm_cell_1/clip_by_value_1Maximum4lstm_1/while/lstm_cell_1/clip_by_value_1/Minimum:z:03lstm_1/while/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/mul_2Mul,lstm_1/while/lstm_cell_1/clip_by_value_1:z:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:���������d�
)lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0
.lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   �
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  �
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
!lstm_1/while/lstm_cell_1/MatMul_6MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/add_4AddV2+lstm_1/while/lstm_cell_1/BiasAdd_2:output:0+lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������d{
lstm_1/while/lstm_cell_1/ReluRelu"lstm_1/while/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/mul_3Mul*lstm_1/while/lstm_cell_1/clip_by_value:z:0+lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/add_5AddV2"lstm_1/while/lstm_cell_1/mul_2:z:0"lstm_1/while/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
)lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0
.lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  �
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
!lstm_1/while/lstm_cell_1/MatMul_7MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/add_6AddV2+lstm_1/while/lstm_cell_1/BiasAdd_3:output:0+lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������de
 lstm_1/while/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>e
 lstm_1/while/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/while/lstm_cell_1/Mul_4Mul"lstm_1/while/lstm_cell_1/add_6:z:0)lstm_1/while/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/Add_7AddV2"lstm_1/while/lstm_cell_1/Mul_4:z:0)lstm_1/while/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dw
2lstm_1/while/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0lstm_1/while/lstm_cell_1/clip_by_value_2/MinimumMinimum"lstm_1/while/lstm_cell_1/Add_7:z:0;lstm_1/while/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������do
*lstm_1/while/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
(lstm_1/while/lstm_cell_1/clip_by_value_2Maximum4lstm_1/while/lstm_cell_1/clip_by_value_2/Minimum:z:03lstm_1/while/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_1/while/lstm_cell_1/Relu_1Relu"lstm_1/while/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/mul_5Mul,lstm_1/while/lstm_cell_1/clip_by_value_2:z:0-lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_1/mul_5:z:0*
_output_shapes
: *
element_dtype0:���T
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: �
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: �
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: �
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_1/mul_5:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_5:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_1/while/NoOpNoOp(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_1_readvariableop_resource2lstm_1_while_lstm_cell_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_1_split_readvariableop_resource8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"�
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2R
'lstm_1/while/lstm_cell_1/ReadVariableOp'lstm_1/while/lstm_cell_1/ReadVariableOp2V
)lstm_1/while/lstm_cell_1/ReadVariableOp_1)lstm_1/while/lstm_cell_1/ReadVariableOp_12V
)lstm_1/while/lstm_cell_1/ReadVariableOp_2)lstm_1/while/lstm_cell_1/ReadVariableOp_22V
)lstm_1/while/lstm_cell_1/ReadVariableOp_3)lstm_1/while/lstm_cell_1/ReadVariableOp_32^
-lstm_1/while/lstm_cell_1/split/ReadVariableOp-lstm_1/while/lstm_cell_1/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
 sequential_lstm_while_body_26995<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0R
?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0:	�P
Asequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0:	�L
9sequential_lstm_while_lstm_cell_readvariableop_resource_0:	d�"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorP
=sequential_lstm_while_lstm_cell_split_readvariableop_resource:	�N
?sequential_lstm_while_lstm_cell_split_1_readvariableop_resource:	�J
7sequential_lstm_while_lstm_cell_readvariableop_resource:	d���.sequential/lstm/while/lstm_cell/ReadVariableOp�0sequential/lstm/while/lstm_cell/ReadVariableOp_1�0sequential/lstm/while/lstm_cell/ReadVariableOp_2�0sequential/lstm/while/lstm_cell/ReadVariableOp_3�4sequential/lstm/while/lstm_cell/split/ReadVariableOp�6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp�
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0q
/sequential/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
4sequential/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
%sequential/lstm/while/lstm_cell/splitSplit8sequential/lstm/while/lstm_cell/split/split_dim:output:0<sequential/lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
&sequential/lstm/while/lstm_cell/MatMulMatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0.sequential/lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
(sequential/lstm/while/lstm_cell/MatMul_1MatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0.sequential/lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
(sequential/lstm/while/lstm_cell/MatMul_2MatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0.sequential/lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
(sequential/lstm/while/lstm_cell/MatMul_3MatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0.sequential/lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������ds
1sequential/lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpAsequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'sequential/lstm/while/lstm_cell/split_1Split:sequential/lstm/while/lstm_cell/split_1/split_dim:output:0>sequential/lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
'sequential/lstm/while/lstm_cell/BiasAddBiasAdd0sequential/lstm/while/lstm_cell/MatMul:product:00sequential/lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
)sequential/lstm/while/lstm_cell/BiasAdd_1BiasAdd2sequential/lstm/while/lstm_cell/MatMul_1:product:00sequential/lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
)sequential/lstm/while/lstm_cell/BiasAdd_2BiasAdd2sequential/lstm/while/lstm_cell/MatMul_2:product:00sequential/lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
)sequential/lstm/while/lstm_cell/BiasAdd_3BiasAdd2sequential/lstm/while/lstm_cell/MatMul_3:product:00sequential/lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
.sequential/lstm/while/lstm_cell/ReadVariableOpReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
3sequential/lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
5sequential/lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   �
5sequential/lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
-sequential/lstm/while/lstm_cell/strided_sliceStridedSlice6sequential/lstm/while/lstm_cell/ReadVariableOp:value:0<sequential/lstm/while/lstm_cell/strided_slice/stack:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_1:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
(sequential/lstm/while/lstm_cell/MatMul_4MatMul#sequential_lstm_while_placeholder_26sequential/lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm/while/lstm_cell/addAddV20sequential/lstm/while/lstm_cell/BiasAdd:output:02sequential/lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dj
%sequential/lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>l
'sequential/lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
#sequential/lstm/while/lstm_cell/MulMul'sequential/lstm/while/lstm_cell/add:z:0.sequential/lstm/while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/Add_1AddV2'sequential/lstm/while/lstm_cell/Mul:z:00sequential/lstm/while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������d|
7sequential/lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential/lstm/while/lstm_cell/clip_by_value/MinimumMinimum)sequential/lstm/while/lstm_cell/Add_1:z:0@sequential/lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dt
/sequential/lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-sequential/lstm/while/lstm_cell/clip_by_valueMaximum9sequential/lstm/while/lstm_cell/clip_by_value/Minimum:z:08sequential/lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
0sequential/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
5sequential/lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   �
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   �
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/sequential/lstm/while/lstm_cell/strided_slice_1StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_1:value:0>sequential/lstm/while/lstm_cell/strided_slice_1/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
(sequential/lstm/while/lstm_cell/MatMul_5MatMul#sequential_lstm_while_placeholder_28sequential/lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/add_2AddV22sequential/lstm/while/lstm_cell/BiasAdd_1:output:02sequential/lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������dl
'sequential/lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>l
'sequential/lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
%sequential/lstm/while/lstm_cell/Mul_1Mul)sequential/lstm/while/lstm_cell/add_2:z:00sequential/lstm/while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/Add_3AddV2)sequential/lstm/while/lstm_cell/Mul_1:z:00sequential/lstm/while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������d~
9sequential/lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7sequential/lstm/while/lstm_cell/clip_by_value_1/MinimumMinimum)sequential/lstm/while/lstm_cell/Add_3:z:0Bsequential/lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dv
1sequential/lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
/sequential/lstm/while/lstm_cell/clip_by_value_1Maximum;sequential/lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0:sequential/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/mul_2Mul3sequential/lstm/while/lstm_cell/clip_by_value_1:z:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:���������d�
0sequential/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
5sequential/lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   �
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  �
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/sequential/lstm/while/lstm_cell/strided_slice_2StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_2:value:0>sequential/lstm/while/lstm_cell/strided_slice_2/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
(sequential/lstm/while/lstm_cell/MatMul_6MatMul#sequential_lstm_while_placeholder_28sequential/lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/add_4AddV22sequential/lstm/while/lstm_cell/BiasAdd_2:output:02sequential/lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������d�
$sequential/lstm/while/lstm_cell/ReluRelu)sequential/lstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/mul_3Mul1sequential/lstm/while/lstm_cell/clip_by_value:z:02sequential/lstm/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/add_5AddV2)sequential/lstm/while/lstm_cell/mul_2:z:0)sequential/lstm/while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
0sequential/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
5sequential/lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  �
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/sequential/lstm/while/lstm_cell/strided_slice_3StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_3:value:0>sequential/lstm/while/lstm_cell/strided_slice_3/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
(sequential/lstm/while/lstm_cell/MatMul_7MatMul#sequential_lstm_while_placeholder_28sequential/lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/add_6AddV22sequential/lstm/while/lstm_cell/BiasAdd_3:output:02sequential/lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������dl
'sequential/lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>l
'sequential/lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
%sequential/lstm/while/lstm_cell/Mul_4Mul)sequential/lstm/while/lstm_cell/add_6:z:00sequential/lstm/while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/Add_7AddV2)sequential/lstm/while/lstm_cell/Mul_4:z:00sequential/lstm/while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������d~
9sequential/lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7sequential/lstm/while/lstm_cell/clip_by_value_2/MinimumMinimum)sequential/lstm/while/lstm_cell/Add_7:z:0Bsequential/lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dv
1sequential/lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
/sequential/lstm/while/lstm_cell/clip_by_value_2Maximum;sequential/lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0:sequential/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d�
&sequential/lstm/while/lstm_cell/Relu_1Relu)sequential/lstm/while/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
%sequential/lstm/while/lstm_cell/mul_5Mul3sequential/lstm/while/lstm_cell/clip_by_value_2:z:04sequential/lstm/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder)sequential/lstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:���]
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: _
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: �
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: �
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations^sequential/lstm/while/NoOp*
T0*
_output_shapes
: �
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: �
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: �
 sequential/lstm/while/Identity_4Identity)sequential/lstm/while/lstm_cell/mul_5:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:���������d�
 sequential/lstm/while/Identity_5Identity)sequential/lstm/while/lstm_cell/add_5:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:���������d�
sequential/lstm/while/NoOpNoOp/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"t
7sequential_lstm_while_lstm_cell_readvariableop_resource9sequential_lstm_while_lstm_cell_readvariableop_resource_0"�
?sequential_lstm_while_lstm_cell_split_1_readvariableop_resourceAsequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0"�
=sequential_lstm_while_lstm_cell_split_readvariableop_resource?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"�
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2`
.sequential/lstm/while/lstm_cell/ReadVariableOp.sequential/lstm/while/lstm_cell/ReadVariableOp2d
0sequential/lstm/while/lstm_cell/ReadVariableOp_10sequential/lstm/while/lstm_cell/ReadVariableOp_12d
0sequential/lstm/while/lstm_cell/ReadVariableOp_20sequential/lstm/while/lstm_cell/ReadVariableOp_22d
0sequential/lstm/while/lstm_cell/ReadVariableOp_30sequential/lstm/while/lstm_cell/ReadVariableOp_32l
4sequential/lstm/while/lstm_cell/split/ReadVariableOp4sequential/lstm/while/lstm_cell/split/ReadVariableOp2p
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�

�
@__inference_dense_layer_call_and_return_conditional_losses_32843

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_31358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31358___redundant_placeholder03
/while_while_cond_31358___redundant_placeholder13
/while_while_cond_31358___redundant_placeholder23
/while_while_cond_31358___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�
�
$__inference_lstm_layer_call_fn_30720

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	d�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_28580s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_32682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_32682___redundant_placeholder03
/while_while_cond_32682___redundant_placeholder13
/while_while_cond_32682___redundant_placeholder23
/while_while_cond_32682___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�{
�	
while_body_28703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	d�B
3while_lstm_cell_1_split_1_readvariableop_resource_0:	�>
+while_lstm_cell_1_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d�@
1while_lstm_cell_1_split_1_readvariableop_resource:	�<
)while_lstm_cell_1_readvariableop_resource:	d��� while/lstm_cell_1/ReadVariableOp�"while/lstm_cell_1/ReadVariableOp_1�"while/lstm_cell_1/ReadVariableOp_2�"while/lstm_cell_1/ReadVariableOp_3�&while/lstm_cell_1/split/ReadVariableOp�(while/lstm_cell_1/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������de
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/MulMulwhile/lstm_cell_1/add:z:0 while/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_1AddV2while/lstm_cell_1/Mul:z:0"while/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell_1/clip_by_value/MinimumMinimumwhile/lstm_cell_1/Add_1:z:02while/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell_1/clip_by_valueMaximum+while/lstm_cell_1/clip_by_value/Minimum:z:0*while/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_1Mulwhile/lstm_cell_1/add_2:z:0"while/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_3AddV2while/lstm_cell_1/Mul_1:z:0"while/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_1/MinimumMinimumwhile/lstm_cell_1/Add_3:z:04while/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_1Maximum-while/lstm_cell_1/clip_by_value_1/Minimum:z:0,while/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_2Mul%while/lstm_cell_1/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������dm
while/lstm_cell_1/ReluReluwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_3Mul#while/lstm_cell_1/clip_by_value:z:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_5AddV2while/lstm_cell_1/mul_2:z:0while/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_6AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_4Mulwhile/lstm_cell_1/add_6:z:0"while/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_7AddV2while/lstm_cell_1/Mul_4:z:0"while/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_2/MinimumMinimumwhile/lstm_cell_1/Add_7:z:04while/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_2Maximum-while/lstm_cell_1/clip_by_value_2/Minimum:z:0,while/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������do
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_5Mul%while/lstm_cell_1/clip_by_value_2:z:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dx
while/Identity_5Identitywhile/lstm_cell_1/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�	
�
lstm_1_while_cond_30024*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1A
=lstm_1_while_lstm_1_while_cond_30024___redundant_placeholder0A
=lstm_1_while_lstm_1_while_cond_30024___redundant_placeholder1A
=lstm_1_while_lstm_1_while_cond_30024___redundant_placeholder2A
=lstm_1_while_lstm_1_while_cond_30024___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�{
�	
while_body_29027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	d�B
3while_lstm_cell_1_split_1_readvariableop_resource_0:	�>
+while_lstm_cell_1_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d�@
1while_lstm_cell_1_split_1_readvariableop_resource:	�<
)while_lstm_cell_1_readvariableop_resource:	d��� while/lstm_cell_1/ReadVariableOp�"while/lstm_cell_1/ReadVariableOp_1�"while/lstm_cell_1/ReadVariableOp_2�"while/lstm_cell_1/ReadVariableOp_3�&while/lstm_cell_1/split/ReadVariableOp�(while/lstm_cell_1/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������de
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/MulMulwhile/lstm_cell_1/add:z:0 while/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_1AddV2while/lstm_cell_1/Mul:z:0"while/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell_1/clip_by_value/MinimumMinimumwhile/lstm_cell_1/Add_1:z:02while/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell_1/clip_by_valueMaximum+while/lstm_cell_1/clip_by_value/Minimum:z:0*while/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_1Mulwhile/lstm_cell_1/add_2:z:0"while/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_3AddV2while/lstm_cell_1/Mul_1:z:0"while/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_1/MinimumMinimumwhile/lstm_cell_1/Add_3:z:04while/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_1Maximum-while/lstm_cell_1/clip_by_value_1/Minimum:z:0,while/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_2Mul%while/lstm_cell_1/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������dm
while/lstm_cell_1/ReluReluwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_3Mul#while/lstm_cell_1/clip_by_value:z:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_5AddV2while/lstm_cell_1/mul_2:z:0while/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_6AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_4Mulwhile/lstm_cell_1/add_6:z:0"while/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_7AddV2while/lstm_cell_1/Mul_4:z:0"while/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_2/MinimumMinimumwhile/lstm_cell_1/Add_7:z:04while/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_2Maximum-while/lstm_cell_1/clip_by_value_2/Minimum:z:0,while/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������do
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_5Mul%while/lstm_cell_1/clip_by_value_2:z:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dx
while/Identity_5Identitywhile/lstm_cell_1/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�G
�
__inference__traced_save_33389
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :d::	�:	d�:�:	d�:	d�:�: : : : : : : : : :d::	�:	d�:�:	d�:	d�:�:d::	�:	d�:�:	d�:	d�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	d�:!

_output_shapes	
:�:%!

_output_shapes
:	d�:%!

_output_shapes
:	d�:!

_output_shapes	
:�:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	d�:!

_output_shapes	
:�:%!

_output_shapes
:	d�:%!

_output_shapes
:	d�:!

_output_shapes	
:�:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	d�:!

_output_shapes	
:�:%!

_output_shapes
:	d�:% !

_output_shapes
:	d�:!!

_output_shapes	
:�:"

_output_shapes
: 
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_29586

lstm_input

lstm_29566:	�

lstm_29568:	�

lstm_29570:	d�
lstm_1_29573:	d�
lstm_1_29575:	�
lstm_1_29577:	d�
dense_29580:d
dense_29582:
identity��dense/StatefulPartitionedCall�lstm/StatefulPartitionedCall�lstm_1/StatefulPartitionedCall�
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input
lstm_29566
lstm_29568
lstm_29570*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_29445�
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_29573lstm_1_29575lstm_1_29577*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_29167�
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_29580dense_29582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_28862u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:W S
+
_output_shapes
:���������
$
_user_specified_name
lstm_input
��
�
A__inference_lstm_1_layer_call_and_return_conditional_losses_32567

inputs<
)lstm_cell_1_split_readvariableop_resource:	d�:
+lstm_cell_1_split_1_readvariableop_resource:	�6
#lstm_cell_1_readvariableop_resource:	d�
identity��lstm_cell_1/ReadVariableOp�lstm_cell_1/ReadVariableOp_1�lstm_cell_1/ReadVariableOp_2�lstm_cell_1/ReadVariableOp_3� lstm_cell_1/split/ReadVariableOp�"lstm_cell_1/split_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_4MatMulzeros:output:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_1/MulMullstm_cell_1/add:z:0lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d
lstm_cell_1/Add_1AddV2lstm_cell_1/Mul:z:0lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell_1/clip_by_value/MinimumMinimumlstm_cell_1/Add_1:z:0,lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_valueMaximum%lstm_cell_1/clip_by_value/Minimum:z:0$lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_5MatMulzeros:output:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_1Mullstm_cell_1/add_2:z:0lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_3AddV2lstm_cell_1/Mul_1:z:0lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_1/MinimumMinimumlstm_cell_1/Add_3:z:0.lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_1Maximum'lstm_cell_1/clip_by_value_1/Minimum:z:0&lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell_1/mul_2Mullstm_cell_1/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_6MatMulzeros:output:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������da
lstm_cell_1/ReluRelulstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_3Mullstm_cell_1/clip_by_value:z:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������dz
lstm_cell_1/add_5AddV2lstm_cell_1/mul_2:z:0lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_7MatMulzeros:output:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_6AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_4Mullstm_cell_1/add_6:z:0lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_7AddV2lstm_cell_1/Mul_4:z:0lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_2/MinimumMinimumlstm_cell_1/Add_7:z:0.lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_2Maximum'lstm_cell_1/clip_by_value_2/Minimum:z:0&lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dc
lstm_cell_1/Relu_1Relulstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_5Mullstm_cell_1/clip_by_value_2:z:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_32427*
condR
while_cond_32426*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
while_cond_31914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31914___redundant_placeholder03
/while_while_cond_31914___redundant_placeholder13
/while_while_cond_31914___redundant_placeholder23
/while_while_cond_31914___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
��
�
!__inference__traced_restore_33498
file_prefix/
assignvariableop_dense_kernel:d+
assignvariableop_1_dense_bias:;
(assignvariableop_2_lstm_lstm_cell_kernel:	�E
2assignvariableop_3_lstm_lstm_cell_recurrent_kernel:	d�5
&assignvariableop_4_lstm_lstm_cell_bias:	�?
,assignvariableop_5_lstm_1_lstm_cell_1_kernel:	d�I
6assignvariableop_6_lstm_1_lstm_cell_1_recurrent_kernel:	d�9
*assignvariableop_7_lstm_1_lstm_cell_1_bias:	�&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: 9
'assignvariableop_17_adam_dense_kernel_m:d3
%assignvariableop_18_adam_dense_bias_m:C
0assignvariableop_19_adam_lstm_lstm_cell_kernel_m:	�M
:assignvariableop_20_adam_lstm_lstm_cell_recurrent_kernel_m:	d�=
.assignvariableop_21_adam_lstm_lstm_cell_bias_m:	�G
4assignvariableop_22_adam_lstm_1_lstm_cell_1_kernel_m:	d�Q
>assignvariableop_23_adam_lstm_1_lstm_cell_1_recurrent_kernel_m:	d�A
2assignvariableop_24_adam_lstm_1_lstm_cell_1_bias_m:	�9
'assignvariableop_25_adam_dense_kernel_v:d3
%assignvariableop_26_adam_dense_bias_v:C
0assignvariableop_27_adam_lstm_lstm_cell_kernel_v:	�M
:assignvariableop_28_adam_lstm_lstm_cell_recurrent_kernel_v:	d�=
.assignvariableop_29_adam_lstm_lstm_cell_bias_v:	�G
4assignvariableop_30_adam_lstm_1_lstm_cell_1_kernel_v:	d�Q
>assignvariableop_31_adam_lstm_1_lstm_cell_1_recurrent_kernel_v:	d�A
2assignvariableop_32_adam_lstm_1_lstm_cell_1_bias_v:	�
identity_34��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp(assignvariableop_2_lstm_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp2assignvariableop_3_lstm_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp&assignvariableop_4_lstm_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_1_lstm_cell_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp6assignvariableop_6_lstm_1_lstm_cell_1_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp*assignvariableop_7_lstm_1_lstm_cell_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp0assignvariableop_19_adam_lstm_lstm_cell_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp:assignvariableop_20_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp.assignvariableop_21_adam_lstm_lstm_cell_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_1_lstm_cell_1_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_lstm_1_lstm_cell_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_lstm_lstm_cell_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp:assignvariableop_28_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_lstm_lstm_cell_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_lstm_1_lstm_cell_1_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp>assignvariableop_31_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp2assignvariableop_32_adam_lstm_1_lstm_cell_1_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�J
�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_33267

inputs
states_0
states_10
split_readvariableop_resource:	d�.
split_1_readvariableop_resource:	�*
readvariableop_resource:	d�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�split/ReadVariableOp�split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:���������d\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:���������d\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:���������d\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:���������dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:���������dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:���������dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:���������dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:���������dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_4MatMulstates_0strided_slice:output:0*
T0*'
_output_shapes
:���������dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:���������dJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:���������d[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:���������d\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*'
_output_shapes
:���������dh
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:���������dL
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:���������d]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:���������di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*'
_output_shapes
:���������dh
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:���������dI
ReluRelu	add_4:z:0*
T0*'
_output_shapes
:���������de
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*'
_output_shapes
:���������dV
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskh
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*'
_output_shapes
:���������dh
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:���������dL
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:���������d]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_5:z:0*
T0*'
_output_shapes
:���������di
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������d:���������d: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
�J
�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_28182

inputs

states
states_10
split_readvariableop_resource:	d�.
split_1_readvariableop_resource:	�*
readvariableop_resource:	d�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�split/ReadVariableOp�split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:���������d\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:���������d\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:���������d\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:���������dS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:���������dl
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:���������dl
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:���������dl
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:���������dg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskd
MatMul_4MatMulstatesstrided_slice:output:0*
T0*'
_output_shapes
:���������dd
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:���������dJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:���������d[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:���������d\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*'
_output_shapes
:���������dh
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:���������dL
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:���������d]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:���������di
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*'
_output_shapes
:���������dh
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:���������dI
ReluRelu	add_4:z:0*
T0*'
_output_shapes
:���������de
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*'
_output_shapes
:���������dV
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:���������di
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	d�*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_maskf
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*'
_output_shapes
:���������dh
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:���������dL
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:���������d]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:���������d^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dV
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dK
Relu_1Relu	add_5:z:0*
T0*'
_output_shapes
:���������di
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*'
_output_shapes
:���������dX
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:���������dZ

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d:���������d:���������d: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_namestates:OK
'
_output_shapes
:���������d
 
_user_specified_namestates
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_30687

inputs?
,lstm_lstm_cell_split_readvariableop_resource:	�=
.lstm_lstm_cell_split_1_readvariableop_resource:	�9
&lstm_lstm_cell_readvariableop_resource:	d�C
0lstm_1_lstm_cell_1_split_readvariableop_resource:	d�A
2lstm_1_lstm_cell_1_split_1_readvariableop_resource:	�=
*lstm_1_lstm_cell_1_readvariableop_resource:	d�6
$dense_matmul_readvariableop_resource:d3
%dense_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�lstm/lstm_cell/ReadVariableOp�lstm/lstm_cell/ReadVariableOp_1�lstm/lstm_cell/ReadVariableOp_2�lstm/lstm_cell/ReadVariableOp_3�#lstm/lstm_cell/split/ReadVariableOp�%lstm/lstm_cell/split_1/ReadVariableOp�
lstm/while�!lstm_1/lstm_cell_1/ReadVariableOp�#lstm_1/lstm_cell_1/ReadVariableOp_1�#lstm_1/lstm_cell_1/ReadVariableOp_2�#lstm_1/lstm_cell_1/ReadVariableOp_3�'lstm_1/lstm_cell_1/split/ReadVariableOp�)lstm_1/lstm_cell_1/split_1/ReadVariableOp�lstm_1/while@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:���������dW
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dh
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:���������N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���d
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������db
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/lstm_cell/MatMul_4MatMullstm/zeros:output:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dY
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>[
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/lstm_cell/MulMullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/Add_1AddV2lstm/lstm_cell/Mul:z:0lstm/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dk
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dc
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/lstm_cell/MatMul_5MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������d[
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>[
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/lstm_cell/Mul_1Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/Add_3AddV2lstm/lstm_cell/Mul_1:z:0lstm/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dm
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������de
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/mul_2Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/lstm_cell/MatMul_6MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������dg
lstm/lstm_cell/ReluRelulstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/mul_3Mul lstm/lstm_cell/clip_by_value:z:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_2:z:0lstm/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm/lstm_cell/MatMul_7MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������d[
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>[
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm/lstm_cell/Mul_4Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/Add_7AddV2lstm/lstm_cell/Mul_4:z:0lstm/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dm
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������de
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������di
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm/lstm_cell/mul_5Mul"lstm/lstm_cell/clip_by_value_2:z:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������ds
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_30288*!
condR
lstm_while_cond_30287*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dP
lstm_1/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:���������dY
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dj
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:���������dR
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���f
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskd
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
'lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/MatMul_2MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/MatMul_3MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������df
$lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
)lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_1/lstm_cell_1/split_1Split-lstm_1/lstm_cell_1/split_1/split_dim:output:01lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_1/lstm_cell_1/BiasAddBiasAdd#lstm_1/lstm_cell_1/MatMul:product:0#lstm_1/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/BiasAdd_1BiasAdd%lstm_1/lstm_cell_1/MatMul_1:product:0#lstm_1/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/BiasAdd_2BiasAdd%lstm_1/lstm_cell_1/MatMul_2:product:0#lstm_1/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/BiasAdd_3BiasAdd%lstm_1/lstm_cell_1/MatMul_3:product:0#lstm_1/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
!lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0w
&lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   y
(lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
 lstm_1/lstm_cell_1/strided_sliceStridedSlice)lstm_1/lstm_cell_1/ReadVariableOp:value:0/lstm_1/lstm_cell_1/strided_slice/stack:output:01lstm_1/lstm_cell_1/strided_slice/stack_1:output:01lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_1/lstm_cell_1/MatMul_4MatMullstm_1/zeros:output:0)lstm_1/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/BiasAdd:output:0%lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������d]
lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>_
lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/lstm_cell_1/MulMullstm_1/lstm_cell_1/add:z:0!lstm_1/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/Add_1AddV2lstm_1/lstm_cell_1/Mul:z:0#lstm_1/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������do
*lstm_1/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(lstm_1/lstm_cell_1/clip_by_value/MinimumMinimumlstm_1/lstm_cell_1/Add_1:z:03lstm_1/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dg
"lstm_1/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
 lstm_1/lstm_cell_1/clip_by_valueMaximum,lstm_1/lstm_cell_1/clip_by_value/Minimum:z:0+lstm_1/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
#lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0y
(lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   {
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   {
*lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"lstm_1/lstm_cell_1/strided_slice_1StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_1:value:01lstm_1/lstm_cell_1/strided_slice_1/stack:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_1/lstm_cell_1/MatMul_5MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/add_2AddV2%lstm_1/lstm_cell_1/BiasAdd_1:output:0%lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������d_
lstm_1/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>_
lstm_1/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/lstm_cell_1/Mul_1Mullstm_1/lstm_cell_1/add_2:z:0#lstm_1/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/Add_3AddV2lstm_1/lstm_cell_1/Mul_1:z:0#lstm_1/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dq
,lstm_1/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*lstm_1/lstm_cell_1/clip_by_value_1/MinimumMinimumlstm_1/lstm_cell_1/Add_3:z:05lstm_1/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������di
$lstm_1/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"lstm_1/lstm_cell_1/clip_by_value_1Maximum.lstm_1/lstm_cell_1/clip_by_value_1/Minimum:z:0-lstm_1/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/mul_2Mul&lstm_1/lstm_cell_1/clip_by_value_1:z:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
#lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0y
(lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   {
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  {
*lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"lstm_1/lstm_cell_1/strided_slice_2StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_2:value:01lstm_1/lstm_cell_1/strided_slice_2/stack:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_1/lstm_cell_1/MatMul_6MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/add_4AddV2%lstm_1/lstm_cell_1/BiasAdd_2:output:0%lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������do
lstm_1/lstm_cell_1/ReluRelulstm_1/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/mul_3Mul$lstm_1/lstm_cell_1/clip_by_value:z:0%lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/add_5AddV2lstm_1/lstm_cell_1/mul_2:z:0lstm_1/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
#lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0y
(lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  {
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
"lstm_1/lstm_cell_1/strided_slice_3StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_3:value:01lstm_1/lstm_cell_1/strided_slice_3/stack:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_1/lstm_cell_1/MatMul_7MatMullstm_1/zeros:output:0+lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/add_6AddV2%lstm_1/lstm_cell_1/BiasAdd_3:output:0%lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������d_
lstm_1/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>_
lstm_1/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/lstm_cell_1/Mul_4Mullstm_1/lstm_cell_1/add_6:z:0#lstm_1/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/Add_7AddV2lstm_1/lstm_cell_1/Mul_4:z:0#lstm_1/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dq
,lstm_1/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*lstm_1/lstm_cell_1/clip_by_value_2/MinimumMinimumlstm_1/lstm_cell_1/Add_7:z:05lstm_1/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������di
$lstm_1/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"lstm_1/lstm_cell_1/clip_by_value_2Maximum.lstm_1/lstm_cell_1/clip_by_value_2/Minimum:z:0-lstm_1/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dq
lstm_1/lstm_cell_1/Relu_1Relulstm_1/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_1/lstm_cell_1/mul_5Mul&lstm_1/lstm_cell_1/clip_by_value_2:z:0'lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������du
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���M
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������[
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_1_split_readvariableop_resource2lstm_1_lstm_cell_1_split_1_readvariableop_resource*lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_1_while_body_30540*#
condR
lstm_1_while_cond_30539*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������h
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
dense/MatMulMatMullstm_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while"^lstm_1/lstm_cell_1/ReadVariableOp$^lstm_1/lstm_cell_1/ReadVariableOp_1$^lstm_1/lstm_cell_1/ReadVariableOp_2$^lstm_1/lstm_cell_1/ReadVariableOp_3(^lstm_1/lstm_cell_1/split/ReadVariableOp*^lstm_1/lstm_cell_1/split_1/ReadVariableOp^lstm_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while2F
!lstm_1/lstm_cell_1/ReadVariableOp!lstm_1/lstm_cell_1/ReadVariableOp2J
#lstm_1/lstm_cell_1/ReadVariableOp_1#lstm_1/lstm_cell_1/ReadVariableOp_12J
#lstm_1/lstm_cell_1/ReadVariableOp_2#lstm_1/lstm_cell_1/ReadVariableOp_22J
#lstm_1/lstm_cell_1/ReadVariableOp_3#lstm_1/lstm_cell_1/ReadVariableOp_32R
'lstm_1/lstm_cell_1/split/ReadVariableOp'lstm_1/lstm_cell_1/split/ReadVariableOp2V
)lstm_1/lstm_cell_1/split_1/ReadVariableOp)lstm_1/lstm_cell_1/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_28702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_28702___redundant_placeholder03
/while_while_cond_28702___redundant_placeholder13
/while_while_cond_28702___redundant_placeholder23
/while_while_cond_28702___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�	
�
lstm_1_while_cond_30539*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1A
=lstm_1_while_lstm_1_while_cond_30539___redundant_placeholder0A
=lstm_1_while_lstm_1_while_cond_30539___redundant_placeholder1A
=lstm_1_while_lstm_1_while_cond_30539___redundant_placeholder2A
=lstm_1_while_lstm_1_while_cond_30539___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�7
�
A__inference_lstm_1_layer_call_and_return_conditional_losses_28309

inputs$
lstm_cell_1_28228:	d� 
lstm_cell_1_28230:	�$
lstm_cell_1_28232:	d�
identity��#lstm_cell_1/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask�
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_28228lstm_cell_1_28230lstm_cell_1_28232*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_28182n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_28228lstm_cell_1_28230lstm_cell_1_28232*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_28241*
condR
while_cond_28240*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������dg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������dt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������d
 
_user_specified_nameinputs
�
�
while_cond_28439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_28439___redundant_placeholder03
/while_while_cond_28439___redundant_placeholder13
/while_while_cond_28439___redundant_placeholder23
/while_while_cond_28439___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
Ã
�
?__inference_lstm_layer_call_and_return_conditional_losses_29445

inputs:
'lstm_cell_split_readvariableop_resource:	�8
)lstm_cell_split_1_readvariableop_resource:	�4
!lstm_cell_readvariableop_resource:	d�
identity��lstm_cell/ReadVariableOp�lstm_cell/ReadVariableOp_1�lstm_cell/ReadVariableOp_2�lstm_cell/ReadVariableOp_3�lstm_cell/split/ReadVariableOp� lstm_cell/split_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dT
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������df
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������d]
lstm_cell/ReluRelulstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dt
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_29305*
condR
while_cond_29304*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������db
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
Ã
�
?__inference_lstm_layer_call_and_return_conditional_losses_28580

inputs:
'lstm_cell_split_readvariableop_resource:	�8
)lstm_cell_split_1_readvariableop_resource:	�4
!lstm_cell_readvariableop_resource:	d�
identity��lstm_cell/ReadVariableOp�lstm_cell/ReadVariableOp_1�lstm_cell/ReadVariableOp_2�lstm_cell/ReadVariableOp_3�lstm_cell/split/ReadVariableOp� lstm_cell/split_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:���������d]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dT
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������df
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������dy
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������d]
lstm_cell/ReluRelulstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������dt
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d_
lstm_cell/Relu_1Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_28440*
condR
while_cond_28439*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������db
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_29500

inputs

lstm_29480:	�

lstm_29482:	�

lstm_29484:	d�
lstm_1_29487:	d�
lstm_1_29489:	�
lstm_1_29491:	d�
dense_29494:d
dense_29496:
identity��dense/StatefulPartitionedCall�lstm/StatefulPartitionedCall�lstm_1/StatefulPartitionedCall�
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs
lstm_29480
lstm_29482
lstm_29484*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_29445�
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_29487lstm_1_29489lstm_1_29491*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_29167�
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_29494dense_29496*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_28862u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_27993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_27993___redundant_placeholder03
/while_while_cond_27993___redundant_placeholder13
/while_while_cond_27993___redundant_placeholder23
/while_while_cond_27993___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�	
�
lstm_while_cond_30287&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_30287___redundant_placeholder0=
9lstm_while_lstm_while_cond_30287___redundant_placeholder1=
9lstm_while_lstm_while_cond_30287___redundant_placeholder2=
9lstm_while_lstm_while_cond_30287___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
��
�
lstm_1_while_body_30025*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0:	d�I
:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0:	�E
2lstm_1_while_lstm_cell_1_readvariableop_resource_0:	d�
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorI
6lstm_1_while_lstm_cell_1_split_readvariableop_resource:	d�G
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:	�C
0lstm_1_while_lstm_cell_1_readvariableop_resource:	d���'lstm_1/while/lstm_cell_1/ReadVariableOp�)lstm_1/while/lstm_cell_1/ReadVariableOp_1�)lstm_1/while/lstm_cell_1/ReadVariableOp_2�)lstm_1/while/lstm_cell_1/ReadVariableOp_3�-lstm_1/while/lstm_cell_1/split/ReadVariableOp�/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp�
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0j
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
-lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:05lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_1/while/lstm_cell_1/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
!lstm_1/while/lstm_cell_1/MatMul_1MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
!lstm_1/while/lstm_cell_1/MatMul_2MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
!lstm_1/while/lstm_cell_1/MatMul_3MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������dl
*lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
 lstm_1/while/lstm_cell_1/split_1Split3lstm_1/while/lstm_cell_1/split_1/split_dim:output:07lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd)lstm_1/while/lstm_cell_1/MatMul:product:0)lstm_1/while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
"lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_1/MatMul_1:product:0)lstm_1/while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
"lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_1/MatMul_2:product:0)lstm_1/while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
"lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_1/MatMul_3:product:0)lstm_1/while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
'lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0}
,lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   
.lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&lstm_1/while/lstm_cell_1/strided_sliceStridedSlice/lstm_1/while/lstm_cell_1/ReadVariableOp:value:05lstm_1/while/lstm_cell_1/strided_slice/stack:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
!lstm_1/while/lstm_cell_1/MatMul_4MatMullstm_1_while_placeholder_2/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/BiasAdd:output:0+lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dc
lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>e
 lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/while/lstm_cell_1/MulMul lstm_1/while/lstm_cell_1/add:z:0'lstm_1/while/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/Add_1AddV2 lstm_1/while/lstm_cell_1/Mul:z:0)lstm_1/while/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������du
0lstm_1/while/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.lstm_1/while/lstm_cell_1/clip_by_value/MinimumMinimum"lstm_1/while/lstm_cell_1/Add_1:z:09lstm_1/while/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dm
(lstm_1/while/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&lstm_1/while/lstm_cell_1/clip_by_valueMaximum2lstm_1/while/lstm_cell_1/clip_by_value/Minimum:z:01lstm_1/while/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
)lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0
.lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   �
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   �
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
!lstm_1/while/lstm_cell_1/MatMul_5MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/add_2AddV2+lstm_1/while/lstm_cell_1/BiasAdd_1:output:0+lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������de
 lstm_1/while/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>e
 lstm_1/while/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/while/lstm_cell_1/Mul_1Mul"lstm_1/while/lstm_cell_1/add_2:z:0)lstm_1/while/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/Add_3AddV2"lstm_1/while/lstm_cell_1/Mul_1:z:0)lstm_1/while/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dw
2lstm_1/while/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0lstm_1/while/lstm_cell_1/clip_by_value_1/MinimumMinimum"lstm_1/while/lstm_cell_1/Add_3:z:0;lstm_1/while/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������do
*lstm_1/while/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
(lstm_1/while/lstm_cell_1/clip_by_value_1Maximum4lstm_1/while/lstm_cell_1/clip_by_value_1/Minimum:z:03lstm_1/while/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/mul_2Mul,lstm_1/while/lstm_cell_1/clip_by_value_1:z:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:���������d�
)lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0
.lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   �
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  �
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
!lstm_1/while/lstm_cell_1/MatMul_6MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/add_4AddV2+lstm_1/while/lstm_cell_1/BiasAdd_2:output:0+lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������d{
lstm_1/while/lstm_cell_1/ReluRelu"lstm_1/while/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/mul_3Mul*lstm_1/while/lstm_cell_1/clip_by_value:z:0+lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/add_5AddV2"lstm_1/while/lstm_cell_1/mul_2:z:0"lstm_1/while/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
)lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0
.lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  �
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
!lstm_1/while/lstm_cell_1/MatMul_7MatMullstm_1_while_placeholder_21lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/add_6AddV2+lstm_1/while/lstm_cell_1/BiasAdd_3:output:0+lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������de
 lstm_1/while/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>e
 lstm_1/while/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
lstm_1/while/lstm_cell_1/Mul_4Mul"lstm_1/while/lstm_cell_1/add_6:z:0)lstm_1/while/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/Add_7AddV2"lstm_1/while/lstm_cell_1/Mul_4:z:0)lstm_1/while/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dw
2lstm_1/while/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0lstm_1/while/lstm_cell_1/clip_by_value_2/MinimumMinimum"lstm_1/while/lstm_cell_1/Add_7:z:0;lstm_1/while/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������do
*lstm_1/while/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
(lstm_1/while/lstm_cell_1/clip_by_value_2Maximum4lstm_1/while/lstm_cell_1/clip_by_value_2/Minimum:z:03lstm_1/while/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_1/while/lstm_cell_1/Relu_1Relu"lstm_1/while/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_1/while/lstm_cell_1/mul_5Mul,lstm_1/while/lstm_cell_1/clip_by_value_2:z:0-lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_1/mul_5:z:0*
_output_shapes
: *
element_dtype0:���T
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: �
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: �
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: �
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_1/mul_5:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_5:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:���������d�
lstm_1/while/NoOpNoOp(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_1_readvariableop_resource2lstm_1_while_lstm_cell_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_1_split_readvariableop_resource8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"�
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2R
'lstm_1/while/lstm_cell_1/ReadVariableOp'lstm_1/while/lstm_cell_1/ReadVariableOp2V
)lstm_1/while/lstm_cell_1/ReadVariableOp_1)lstm_1/while/lstm_cell_1/ReadVariableOp_12V
)lstm_1/while/lstm_cell_1/ReadVariableOp_2)lstm_1/while/lstm_cell_1/ReadVariableOp_22V
)lstm_1/while/lstm_cell_1/ReadVariableOp_3)lstm_1/while/lstm_cell_1/ReadVariableOp_32^
-lstm_1/while/lstm_cell_1/split/ReadVariableOp-lstm_1/while/lstm_cell_1/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_29563

lstm_input

lstm_29543:	�

lstm_29545:	�

lstm_29547:	d�
lstm_1_29550:	d�
lstm_1_29552:	�
lstm_1_29554:	d�
dense_29557:d
dense_29559:
identity��dense/StatefulPartitionedCall�lstm/StatefulPartitionedCall�lstm_1/StatefulPartitionedCall�
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input
lstm_29543
lstm_29545
lstm_29547*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_28580�
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_29550lstm_1_29552lstm_1_29554*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_28843�
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_29557dense_29559*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_28862u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:W S
+
_output_shapes
:���������
$
_user_specified_name
lstm_input
�
�
)__inference_lstm_cell_layer_call_fn_32860

inputs
states_0
states_1
unknown:	�
	unknown_0:	�
	unknown_1:	d�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27518o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������d:���������d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
states/1
��
�
A__inference_lstm_1_layer_call_and_return_conditional_losses_32823

inputs<
)lstm_cell_1_split_readvariableop_resource:	d�:
+lstm_cell_1_split_1_readvariableop_resource:	�6
#lstm_cell_1_readvariableop_resource:	d�
identity��lstm_cell_1/ReadVariableOp�lstm_cell_1/ReadVariableOp_1�lstm_cell_1/ReadVariableOp_2�lstm_cell_1/ReadVariableOp_3� lstm_cell_1/split/ReadVariableOp�"lstm_cell_1/split_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_4MatMulzeros:output:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_1/MulMullstm_cell_1/add:z:0lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d
lstm_cell_1/Add_1AddV2lstm_cell_1/Mul:z:0lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell_1/clip_by_value/MinimumMinimumlstm_cell_1/Add_1:z:0,lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_valueMaximum%lstm_cell_1/clip_by_value/Minimum:z:0$lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_5MatMulzeros:output:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_1Mullstm_cell_1/add_2:z:0lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_3AddV2lstm_cell_1/Mul_1:z:0lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_1/MinimumMinimumlstm_cell_1/Add_3:z:0.lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_1Maximum'lstm_cell_1/clip_by_value_1/Minimum:z:0&lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell_1/mul_2Mullstm_cell_1/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_6MatMulzeros:output:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������da
lstm_cell_1/ReluRelulstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_3Mullstm_cell_1/clip_by_value:z:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������dz
lstm_cell_1/add_5AddV2lstm_cell_1/mul_2:z:0lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_7MatMulzeros:output:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_6AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_4Mullstm_cell_1/add_6:z:0lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_7AddV2lstm_cell_1/Mul_4:z:0lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_2/MinimumMinimumlstm_cell_1/Add_7:z:0.lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_2Maximum'lstm_cell_1/clip_by_value_2/Minimum:z:0&lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dc
lstm_cell_1/Relu_1Relulstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_5Mullstm_cell_1/clip_by_value_2:z:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_32683*
condR
while_cond_32682*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������dg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������d: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_28869

inputs

lstm_28581:	�

lstm_28583:	�

lstm_28585:	d�
lstm_1_28844:	d�
lstm_1_28846:	�
lstm_1_28848:	d�
dense_28863:d
dense_28865:
identity��dense/StatefulPartitionedCall�lstm/StatefulPartitionedCall�lstm_1/StatefulPartitionedCall�
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs
lstm_28581
lstm_28583
lstm_28585*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_28580�
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_28844lstm_1_28846lstm_1_28848*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_28843�
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_28863dense_28865*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_28862u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
A__inference_lstm_1_layer_call_and_return_conditional_losses_32311
inputs_0<
)lstm_cell_1_split_readvariableop_resource:	d�:
+lstm_cell_1_split_1_readvariableop_resource:	�6
#lstm_cell_1_readvariableop_resource:	d�
identity��lstm_cell_1/ReadVariableOp�lstm_cell_1/ReadVariableOp_1�lstm_cell_1/ReadVariableOp_2�lstm_cell_1/ReadVariableOp_3� lstm_cell_1/split/ReadVariableOp�"lstm_cell_1/split_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_mask]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������d_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_4MatMulzeros:output:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dV
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell_1/MulMullstm_cell_1/add:z:0lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d
lstm_cell_1/Add_1AddV2lstm_cell_1/Mul:z:0lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dh
#lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!lstm_cell_1/clip_by_value/MinimumMinimumlstm_cell_1/Add_1:z:0,lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������d`
lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_valueMaximum%lstm_cell_1/clip_by_value/Minimum:z:0$lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_5MatMulzeros:output:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_1Mullstm_cell_1/add_2:z:0lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_3AddV2lstm_cell_1/Mul_1:z:0lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_1/MinimumMinimumlstm_cell_1/Add_3:z:0.lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_1Maximum'lstm_cell_1/clip_by_value_1/Minimum:z:0&lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d}
lstm_cell_1/mul_2Mullstm_cell_1/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_6MatMulzeros:output:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������da
lstm_cell_1/ReluRelulstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_3Mullstm_cell_1/clip_by_value:z:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������dz
lstm_cell_1/add_5AddV2lstm_cell_1/mul_2:z:0lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
lstm_cell_1/MatMul_7MatMulzeros:output:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/add_6AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������dX
lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>X
lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_1/Mul_4Mullstm_cell_1/add_6:z:0lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/Add_7AddV2lstm_cell_1/Mul_4:z:0lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dj
%lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#lstm_cell_1/clip_by_value_2/MinimumMinimumlstm_cell_1/Add_7:z:0.lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������db
lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_cell_1/clip_by_value_2Maximum'lstm_cell_1/clip_by_value_2/Minimum:z:0&lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������dc
lstm_cell_1/Relu_1Relulstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
lstm_cell_1/mul_5Mullstm_cell_1/clip_by_value_2:z:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_32171*
condR
while_cond_32170*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������dg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������d: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������d
"
_user_specified_name
inputs/0
�
�
while_cond_31614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31614___redundant_placeholder03
/while_while_cond_31614___redundant_placeholder13
/while_while_cond_31614___redundant_placeholder23
/while_while_cond_31614___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�6
�
?__inference_lstm_layer_call_and_return_conditional_losses_27600

inputs"
lstm_cell_27519:	�
lstm_cell_27521:	�"
lstm_cell_27523:	d�
identity��!lstm_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_27519lstm_cell_27521lstm_cell_27523*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27518n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_27519lstm_cell_27521lstm_cell_27523*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_27532*
condR
while_cond_27531*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������dk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������dr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�"
�
while_body_28241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_1_28265_0:	d�(
while_lstm_cell_1_28267_0:	�,
while_lstm_cell_1_28269_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_1_28265:	d�&
while_lstm_cell_1_28267:	�*
while_lstm_cell_1_28269:	d���)while/lstm_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0�
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_28265_0while_lstm_cell_1_28267_0while_lstm_cell_1_28269_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_28182�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������d�
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������dx

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_28265while_lstm_cell_1_28265_0"4
while_lstm_cell_1_28267while_lstm_cell_1_28267_0"4
while_lstm_cell_1_28269while_lstm_cell_1_28269_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
�	
�
#__inference_signature_wrapper_29615

lstm_input
unknown:	�
	unknown_0:	�
	unknown_1:	d�
	unknown_2:	d�
	unknown_3:	�
	unknown_4:	d�
	unknown_5:d
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_27394o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:���������
$
_user_specified_name
lstm_input
�
�
while_cond_30846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_30846___redundant_placeholder03
/while_while_cond_30846___redundant_placeholder13
/while_while_cond_30846___redundant_placeholder23
/while_while_cond_30846___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�	
�
lstm_while_cond_29772&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_29772___redundant_placeholder0=
9lstm_while_lstm_while_cond_29772___redundant_placeholder1=
9lstm_while_lstm_while_cond_29772___redundant_placeholder2=
9lstm_while_lstm_while_cond_29772___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������d:���������d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
:
�{
�	
while_body_31915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	d�B
3while_lstm_cell_1_split_1_readvariableop_resource_0:	�>
+while_lstm_cell_1_readvariableop_resource_0:	d�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d�@
1while_lstm_cell_1_split_1_readvariableop_resource:	�<
)while_lstm_cell_1_readvariableop_resource:	d��� while/lstm_cell_1/ReadVariableOp�"while/lstm_cell_1/ReadVariableOp_1�"while/lstm_cell_1/ReadVariableOp_2�"while/lstm_cell_1/ReadVariableOp_3�&while/lstm_cell_1/split/ReadVariableOp�(while/lstm_cell_1/split_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������d*
element_dtype0c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������de
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_4MatMulwhile_placeholder_2(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������d\
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/MulMulwhile/lstm_cell_1/add:z:0 while/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_1AddV2while/lstm_cell_1/Mul:z:0"while/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dn
)while/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'while/lstm_cell_1/clip_by_value/MinimumMinimumwhile/lstm_cell_1/Add_1:z:02while/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������df
!while/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
while/lstm_cell_1/clip_by_valueMaximum+while/lstm_cell_1/clip_by_value/Minimum:z:0*while/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_5MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_1Mulwhile/lstm_cell_1/add_2:z:0"while/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_3AddV2while/lstm_cell_1/Mul_1:z:0"while/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_1/MinimumMinimumwhile/lstm_cell_1/Add_3:z:04while/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_1Maximum-while/lstm_cell_1/clip_by_value_1/Minimum:z:0,while/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_2Mul%while/lstm_cell_1/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_6MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������dm
while/lstm_cell_1/ReluReluwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_3Mul#while/lstm_cell_1/clip_by_value:z:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_5AddV2while/lstm_cell_1/mul_2:z:0while/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	d�*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
while/lstm_cell_1/MatMul_7MatMulwhile_placeholder_2*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/add_6AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������d^
while/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>^
while/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
while/lstm_cell_1/Mul_4Mulwhile/lstm_cell_1/add_6:z:0"while/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/Add_7AddV2while/lstm_cell_1/Mul_4:z:0"while/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������dp
+while/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)while/lstm_cell_1/clip_by_value_2/MinimumMinimumwhile/lstm_cell_1/Add_7:z:04while/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dh
#while/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!while/lstm_cell_1/clip_by_value_2Maximum-while/lstm_cell_1/clip_by_value_2/Minimum:z:0,while/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������do
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
while/lstm_cell_1/mul_5Mul%while/lstm_cell_1/clip_by_value_2:z:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_5:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������dx
while/Identity_5Identitywhile/lstm_cell_1/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:���������d�

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������d:���������d: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:

_output_shapes
: :

_output_shapes
: 
��
�

 __inference__wrapped_model_27394

lstm_inputJ
7sequential_lstm_lstm_cell_split_readvariableop_resource:	�H
9sequential_lstm_lstm_cell_split_1_readvariableop_resource:	�D
1sequential_lstm_lstm_cell_readvariableop_resource:	d�N
;sequential_lstm_1_lstm_cell_1_split_readvariableop_resource:	d�L
=sequential_lstm_1_lstm_cell_1_split_1_readvariableop_resource:	�H
5sequential_lstm_1_lstm_cell_1_readvariableop_resource:	d�A
/sequential_dense_matmul_readvariableop_resource:d>
0sequential_dense_biasadd_readvariableop_resource:
identity��'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�(sequential/lstm/lstm_cell/ReadVariableOp�*sequential/lstm/lstm_cell/ReadVariableOp_1�*sequential/lstm/lstm_cell/ReadVariableOp_2�*sequential/lstm/lstm_cell/ReadVariableOp_3�.sequential/lstm/lstm_cell/split/ReadVariableOp�0sequential/lstm/lstm_cell/split_1/ReadVariableOp�sequential/lstm/while�,sequential/lstm_1/lstm_cell_1/ReadVariableOp�.sequential/lstm_1/lstm_cell_1/ReadVariableOp_1�.sequential/lstm_1/lstm_cell_1/ReadVariableOp_2�.sequential/lstm_1/lstm_cell_1/ReadVariableOp_3�2sequential/lstm_1/lstm_cell_1/split/ReadVariableOp�4sequential/lstm_1/lstm_cell_1/split_1/ReadVariableOp�sequential/lstm_1/whileO
sequential/lstm/ShapeShape
lstm_input*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:���������db
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������ds
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential/lstm/transpose	Transpose
lstm_input'sequential/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:���������d
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:o
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskk
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
.sequential/lstm/lstm_cell/split/ReadVariableOpReadVariableOp7sequential_lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:06sequential/lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d:d:d:d*
	num_split�
 sequential/lstm/lstm_cell/MatMulMatMul(sequential/lstm/strided_slice_2:output:0(sequential/lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������d�
"sequential/lstm/lstm_cell/MatMul_1MatMul(sequential/lstm/strided_slice_2:output:0(sequential/lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������d�
"sequential/lstm/lstm_cell/MatMul_2MatMul(sequential/lstm/strided_slice_2:output:0(sequential/lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������d�
"sequential/lstm/lstm_cell/MatMul_3MatMul(sequential/lstm/strided_slice_2:output:0(sequential/lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������dm
+sequential/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
0sequential/lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp9sequential_lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!sequential/lstm/lstm_cell/split_1Split4sequential/lstm/lstm_cell/split_1/split_dim:output:08sequential/lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
!sequential/lstm/lstm_cell/BiasAddBiasAdd*sequential/lstm/lstm_cell/MatMul:product:0*sequential/lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm/lstm_cell/BiasAdd_1BiasAdd,sequential/lstm/lstm_cell/MatMul_1:product:0*sequential/lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:���������d�
#sequential/lstm/lstm_cell/BiasAdd_2BiasAdd,sequential/lstm/lstm_cell/MatMul_2:product:0*sequential/lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:���������d�
#sequential/lstm/lstm_cell/BiasAdd_3BiasAdd,sequential/lstm/lstm_cell/MatMul_3:product:0*sequential/lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:���������d�
(sequential/lstm/lstm_cell/ReadVariableOpReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0~
-sequential/lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
/sequential/lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   �
/sequential/lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
'sequential/lstm/lstm_cell/strided_sliceStridedSlice0sequential/lstm/lstm_cell/ReadVariableOp:value:06sequential/lstm/lstm_cell/strided_slice/stack:output:08sequential/lstm/lstm_cell/strided_slice/stack_1:output:08sequential/lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
"sequential/lstm/lstm_cell/MatMul_4MatMulsequential/lstm/zeros:output:00sequential/lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/BiasAdd:output:0,sequential/lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:���������dd
sequential/lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>f
!sequential/lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
sequential/lstm/lstm_cell/MulMul!sequential/lstm/lstm_cell/add:z:0(sequential/lstm/lstm_cell/Const:output:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/Add_1AddV2!sequential/lstm/lstm_cell/Mul:z:0*sequential/lstm/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:���������dv
1sequential/lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
/sequential/lstm/lstm_cell/clip_by_value/MinimumMinimum#sequential/lstm/lstm_cell/Add_1:z:0:sequential/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dn
)sequential/lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'sequential/lstm/lstm_cell/clip_by_valueMaximum3sequential/lstm/lstm_cell/clip_by_value/Minimum:z:02sequential/lstm/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
*sequential/lstm/lstm_cell/ReadVariableOp_1ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
/sequential/lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   �
1sequential/lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   �
1sequential/lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
)sequential/lstm/lstm_cell/strided_slice_1StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_1:value:08sequential/lstm/lstm_cell/strided_slice_1/stack:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
"sequential/lstm/lstm_cell/MatMul_5MatMulsequential/lstm/zeros:output:02sequential/lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/add_2AddV2,sequential/lstm/lstm_cell/BiasAdd_1:output:0,sequential/lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:���������df
!sequential/lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>f
!sequential/lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
sequential/lstm/lstm_cell/Mul_1Mul#sequential/lstm/lstm_cell/add_2:z:0*sequential/lstm/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/Add_3AddV2#sequential/lstm/lstm_cell/Mul_1:z:0*sequential/lstm/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:���������dx
3sequential/lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
1sequential/lstm/lstm_cell/clip_by_value_1/MinimumMinimum#sequential/lstm/lstm_cell/Add_3:z:0<sequential/lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dp
+sequential/lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)sequential/lstm/lstm_cell/clip_by_value_1Maximum5sequential/lstm/lstm_cell/clip_by_value_1/Minimum:z:04sequential/lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/mul_2Mul-sequential/lstm/lstm_cell/clip_by_value_1:z:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
*sequential/lstm/lstm_cell/ReadVariableOp_2ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
/sequential/lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   �
1sequential/lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  �
1sequential/lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
)sequential/lstm/lstm_cell/strided_slice_2StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_2:value:08sequential/lstm/lstm_cell/strided_slice_2/stack:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
"sequential/lstm/lstm_cell/MatMul_6MatMulsequential/lstm/zeros:output:02sequential/lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/add_4AddV2,sequential/lstm/lstm_cell/BiasAdd_2:output:0,sequential/lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:���������d}
sequential/lstm/lstm_cell/ReluRelu#sequential/lstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/mul_3Mul+sequential/lstm/lstm_cell/clip_by_value:z:0,sequential/lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/add_5AddV2#sequential/lstm/lstm_cell/mul_2:z:0#sequential/lstm/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:���������d�
*sequential/lstm/lstm_cell/ReadVariableOp_3ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
/sequential/lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  �
1sequential/lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
1sequential/lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
)sequential/lstm/lstm_cell/strided_slice_3StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_3:value:08sequential/lstm/lstm_cell/strided_slice_3/stack:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
"sequential/lstm/lstm_cell/MatMul_7MatMulsequential/lstm/zeros:output:02sequential/lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/add_6AddV2,sequential/lstm/lstm_cell/BiasAdd_3:output:0,sequential/lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:���������df
!sequential/lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>f
!sequential/lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
sequential/lstm/lstm_cell/Mul_4Mul#sequential/lstm/lstm_cell/add_6:z:0*sequential/lstm/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/Add_7AddV2#sequential/lstm/lstm_cell/Mul_4:z:0*sequential/lstm/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:���������dx
3sequential/lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
1sequential/lstm/lstm_cell/clip_by_value_2/MinimumMinimum#sequential/lstm/lstm_cell/Add_7:z:0<sequential/lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dp
+sequential/lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)sequential/lstm/lstm_cell/clip_by_value_2Maximum5sequential/lstm/lstm_cell/clip_by_value_2/Minimum:z:04sequential/lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d
 sequential/lstm/lstm_cell/Relu_1Relu#sequential/lstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:���������d�
sequential/lstm/lstm_cell/mul_5Mul-sequential/lstm/lstm_cell/clip_by_value_2:z:0.sequential/lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������d~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07sequential_lstm_lstm_cell_split_readvariableop_resource9sequential_lstm_lstm_cell_split_1_readvariableop_resource1sequential_lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 sequential_lstm_while_body_26995*,
cond$R"
 sequential_lstm_while_cond_26994*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0x
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������df
sequential/lstm_1/ShapeShapesequential/lstm/transpose_1:y:0*
T0*
_output_shapes
:o
%sequential/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
sequential/lstm_1/strided_sliceStridedSlice sequential/lstm_1/Shape:output:0.sequential/lstm_1/strided_slice/stack:output:00sequential/lstm_1/strided_slice/stack_1:output:00sequential/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 sequential/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
sequential/lstm_1/zeros/packedPack(sequential/lstm_1/strided_slice:output:0)sequential/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/lstm_1/zerosFill'sequential/lstm_1/zeros/packed:output:0&sequential/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:���������dd
"sequential/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d�
 sequential/lstm_1/zeros_1/packedPack(sequential/lstm_1/strided_slice:output:0+sequential/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/lstm_1/zeros_1Fill)sequential/lstm_1/zeros_1/packed:output:0(sequential/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������du
 sequential/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential/lstm_1/transpose	Transposesequential/lstm/transpose_1:y:0)sequential/lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:���������dh
sequential/lstm_1/Shape_1Shapesequential/lstm_1/transpose:y:0*
T0*
_output_shapes
:q
'sequential/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!sequential/lstm_1/strided_slice_1StridedSlice"sequential/lstm_1/Shape_1:output:00sequential/lstm_1/strided_slice_1/stack:output:02sequential/lstm_1/strided_slice_1/stack_1:output:02sequential/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-sequential/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
sequential/lstm_1/TensorArrayV2TensorListReserve6sequential/lstm_1/TensorArrayV2/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Gsequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
9sequential/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm_1/transpose:y:0Psequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���q
'sequential/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!sequential/lstm_1/strided_slice_2StridedSlicesequential/lstm_1/transpose:y:00sequential/lstm_1/strided_slice_2/stack:output:02sequential/lstm_1/strided_slice_2/stack_1:output:02sequential/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_masko
-sequential/lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
2sequential/lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp;sequential_lstm_1_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
#sequential/lstm_1/lstm_cell_1/splitSplit6sequential/lstm_1/lstm_cell_1/split/split_dim:output:0:sequential/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_split�
$sequential/lstm_1/lstm_cell_1/MatMulMatMul*sequential/lstm_1/strided_slice_2:output:0,sequential/lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:���������d�
&sequential/lstm_1/lstm_cell_1/MatMul_1MatMul*sequential/lstm_1/strided_slice_2:output:0,sequential/lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:���������d�
&sequential/lstm_1/lstm_cell_1/MatMul_2MatMul*sequential/lstm_1/strided_slice_2:output:0,sequential/lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:���������d�
&sequential/lstm_1/lstm_cell_1/MatMul_3MatMul*sequential/lstm_1/strided_slice_2:output:0,sequential/lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:���������dq
/sequential/lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
4sequential/lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp=sequential_lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%sequential/lstm_1/lstm_cell_1/split_1Split8sequential/lstm_1/lstm_cell_1/split_1/split_dim:output:0<sequential/lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:d:d:d:d*
	num_split�
%sequential/lstm_1/lstm_cell_1/BiasAddBiasAdd.sequential/lstm_1/lstm_cell_1/MatMul:product:0.sequential/lstm_1/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:���������d�
'sequential/lstm_1/lstm_cell_1/BiasAdd_1BiasAdd0sequential/lstm_1/lstm_cell_1/MatMul_1:product:0.sequential/lstm_1/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:���������d�
'sequential/lstm_1/lstm_cell_1/BiasAdd_2BiasAdd0sequential/lstm_1/lstm_cell_1/MatMul_2:product:0.sequential/lstm_1/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:���������d�
'sequential/lstm_1/lstm_cell_1/BiasAdd_3BiasAdd0sequential/lstm_1/lstm_cell_1/MatMul_3:product:0.sequential/lstm_1/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:���������d�
,sequential/lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp5sequential_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
1sequential/lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
3sequential/lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   �
3sequential/lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
+sequential/lstm_1/lstm_cell_1/strided_sliceStridedSlice4sequential/lstm_1/lstm_cell_1/ReadVariableOp:value:0:sequential/lstm_1/lstm_cell_1/strided_slice/stack:output:0<sequential/lstm_1/lstm_cell_1/strided_slice/stack_1:output:0<sequential/lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
&sequential/lstm_1/lstm_cell_1/MatMul_4MatMul sequential/lstm_1/zeros:output:04sequential/lstm_1/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:���������d�
!sequential/lstm_1/lstm_cell_1/addAddV2.sequential/lstm_1/lstm_cell_1/BiasAdd:output:00sequential/lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:���������dh
#sequential/lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>j
%sequential/lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
!sequential/lstm_1/lstm_cell_1/MulMul%sequential/lstm_1/lstm_cell_1/add:z:0,sequential/lstm_1/lstm_cell_1/Const:output:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/Add_1AddV2%sequential/lstm_1/lstm_cell_1/Mul:z:0.sequential/lstm_1/lstm_cell_1/Const_1:output:0*
T0*'
_output_shapes
:���������dz
5sequential/lstm_1/lstm_cell_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
3sequential/lstm_1/lstm_cell_1/clip_by_value/MinimumMinimum'sequential/lstm_1/lstm_cell_1/Add_1:z:0>sequential/lstm_1/lstm_cell_1/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:���������dr
-sequential/lstm_1/lstm_cell_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
+sequential/lstm_1/lstm_cell_1/clip_by_valueMaximum7sequential/lstm_1/lstm_cell_1/clip_by_value/Minimum:z:06sequential/lstm_1/lstm_cell_1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������d�
.sequential/lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp5sequential_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
3sequential/lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   �
5sequential/lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   �
5sequential/lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
-sequential/lstm_1/lstm_cell_1/strided_slice_1StridedSlice6sequential/lstm_1/lstm_cell_1/ReadVariableOp_1:value:0<sequential/lstm_1/lstm_cell_1/strided_slice_1/stack:output:0>sequential/lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:0>sequential/lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
&sequential/lstm_1/lstm_cell_1/MatMul_5MatMul sequential/lstm_1/zeros:output:06sequential/lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/add_2AddV20sequential/lstm_1/lstm_cell_1/BiasAdd_1:output:00sequential/lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:���������dj
%sequential/lstm_1/lstm_cell_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L>j
%sequential/lstm_1/lstm_cell_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
#sequential/lstm_1/lstm_cell_1/Mul_1Mul'sequential/lstm_1/lstm_cell_1/add_2:z:0.sequential/lstm_1/lstm_cell_1/Const_2:output:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/Add_3AddV2'sequential/lstm_1/lstm_cell_1/Mul_1:z:0.sequential/lstm_1/lstm_cell_1/Const_3:output:0*
T0*'
_output_shapes
:���������d|
7sequential/lstm_1/lstm_cell_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential/lstm_1/lstm_cell_1/clip_by_value_1/MinimumMinimum'sequential/lstm_1/lstm_cell_1/Add_3:z:0@sequential/lstm_1/lstm_cell_1/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������dt
/sequential/lstm_1/lstm_cell_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-sequential/lstm_1/lstm_cell_1/clip_by_value_1Maximum9sequential/lstm_1/lstm_cell_1/clip_by_value_1/Minimum:z:08sequential/lstm_1/lstm_cell_1/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/mul_2Mul1sequential/lstm_1/lstm_cell_1/clip_by_value_1:z:0"sequential/lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:���������d�
.sequential/lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp5sequential_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
3sequential/lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   �
5sequential/lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  �
5sequential/lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
-sequential/lstm_1/lstm_cell_1/strided_slice_2StridedSlice6sequential/lstm_1/lstm_cell_1/ReadVariableOp_2:value:0<sequential/lstm_1/lstm_cell_1/strided_slice_2/stack:output:0>sequential/lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:0>sequential/lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
&sequential/lstm_1/lstm_cell_1/MatMul_6MatMul sequential/lstm_1/zeros:output:06sequential/lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/add_4AddV20sequential/lstm_1/lstm_cell_1/BiasAdd_2:output:00sequential/lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:���������d�
"sequential/lstm_1/lstm_cell_1/ReluRelu'sequential/lstm_1/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/mul_3Mul/sequential/lstm_1/lstm_cell_1/clip_by_value:z:00sequential/lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/add_5AddV2'sequential/lstm_1/lstm_cell_1/mul_2:z:0'sequential/lstm_1/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:���������d�
.sequential/lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp5sequential_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
3sequential/lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  �
5sequential/lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
5sequential/lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
-sequential/lstm_1/lstm_cell_1/strided_slice_3StridedSlice6sequential/lstm_1/lstm_cell_1/ReadVariableOp_3:value:0<sequential/lstm_1/lstm_cell_1/strided_slice_3/stack:output:0>sequential/lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:0>sequential/lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:dd*

begin_mask*
end_mask�
&sequential/lstm_1/lstm_cell_1/MatMul_7MatMul sequential/lstm_1/zeros:output:06sequential/lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/add_6AddV20sequential/lstm_1/lstm_cell_1/BiasAdd_3:output:00sequential/lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:���������dj
%sequential/lstm_1/lstm_cell_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *��L>j
%sequential/lstm_1/lstm_cell_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
#sequential/lstm_1/lstm_cell_1/Mul_4Mul'sequential/lstm_1/lstm_cell_1/add_6:z:0.sequential/lstm_1/lstm_cell_1/Const_4:output:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/Add_7AddV2'sequential/lstm_1/lstm_cell_1/Mul_4:z:0.sequential/lstm_1/lstm_cell_1/Const_5:output:0*
T0*'
_output_shapes
:���������d|
7sequential/lstm_1/lstm_cell_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential/lstm_1/lstm_cell_1/clip_by_value_2/MinimumMinimum'sequential/lstm_1/lstm_cell_1/Add_7:z:0@sequential/lstm_1/lstm_cell_1/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:���������dt
/sequential/lstm_1/lstm_cell_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-sequential/lstm_1/lstm_cell_1/clip_by_value_2Maximum9sequential/lstm_1/lstm_cell_1/clip_by_value_2/Minimum:z:08sequential/lstm_1/lstm_cell_1/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:���������d�
$sequential/lstm_1/lstm_cell_1/Relu_1Relu'sequential/lstm_1/lstm_cell_1/add_5:z:0*
T0*'
_output_shapes
:���������d�
#sequential/lstm_1/lstm_cell_1/mul_5Mul1sequential/lstm_1/lstm_cell_1/clip_by_value_2:z:02sequential/lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:���������d�
/sequential/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
!sequential/lstm_1/TensorArrayV2_1TensorListReserve8sequential/lstm_1/TensorArrayV2_1/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
sequential/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : u
*sequential/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������f
$sequential/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential/lstm_1/whileWhile-sequential/lstm_1/while/loop_counter:output:03sequential/lstm_1/while/maximum_iterations:output:0sequential/lstm_1/time:output:0*sequential/lstm_1/TensorArrayV2_1:handle:0 sequential/lstm_1/zeros:output:0"sequential/lstm_1/zeros_1:output:0*sequential/lstm_1/strided_slice_1:output:0Isequential/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0;sequential_lstm_1_lstm_cell_1_split_readvariableop_resource=sequential_lstm_1_lstm_cell_1_split_1_readvariableop_resource5sequential_lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������d:���������d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"sequential_lstm_1_while_body_27247*.
cond&R$
"sequential_lstm_1_while_cond_27246*K
output_shapes:
8: : : : :���������d:���������d: : : : : *
parallel_iterations �
Bsequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����d   �
4sequential/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack sequential/lstm_1/while:output:3Ksequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������d*
element_dtype0z
'sequential/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������s
)sequential/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!sequential/lstm_1/strided_slice_3StridedSlice=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:00sequential/lstm_1/strided_slice_3/stack:output:02sequential/lstm_1/strided_slice_3/stack_1:output:02sequential/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������d*
shrink_axis_maskw
"sequential/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential/lstm_1/transpose_1	Transpose=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0+sequential/lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������d�
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
sequential/dense/MatMulMatMul*sequential/lstm_1/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
sequential/dense/SoftmaxSoftmax!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"sequential/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp)^sequential/lstm/lstm_cell/ReadVariableOp+^sequential/lstm/lstm_cell/ReadVariableOp_1+^sequential/lstm/lstm_cell/ReadVariableOp_2+^sequential/lstm/lstm_cell/ReadVariableOp_3/^sequential/lstm/lstm_cell/split/ReadVariableOp1^sequential/lstm/lstm_cell/split_1/ReadVariableOp^sequential/lstm/while-^sequential/lstm_1/lstm_cell_1/ReadVariableOp/^sequential/lstm_1/lstm_cell_1/ReadVariableOp_1/^sequential/lstm_1/lstm_cell_1/ReadVariableOp_2/^sequential/lstm_1/lstm_cell_1/ReadVariableOp_33^sequential/lstm_1/lstm_cell_1/split/ReadVariableOp5^sequential/lstm_1/lstm_cell_1/split_1/ReadVariableOp^sequential/lstm_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2T
(sequential/lstm/lstm_cell/ReadVariableOp(sequential/lstm/lstm_cell/ReadVariableOp2X
*sequential/lstm/lstm_cell/ReadVariableOp_1*sequential/lstm/lstm_cell/ReadVariableOp_12X
*sequential/lstm/lstm_cell/ReadVariableOp_2*sequential/lstm/lstm_cell/ReadVariableOp_22X
*sequential/lstm/lstm_cell/ReadVariableOp_3*sequential/lstm/lstm_cell/ReadVariableOp_32`
.sequential/lstm/lstm_cell/split/ReadVariableOp.sequential/lstm/lstm_cell/split/ReadVariableOp2d
0sequential/lstm/lstm_cell/split_1/ReadVariableOp0sequential/lstm/lstm_cell/split_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while2\
,sequential/lstm_1/lstm_cell_1/ReadVariableOp,sequential/lstm_1/lstm_cell_1/ReadVariableOp2`
.sequential/lstm_1/lstm_cell_1/ReadVariableOp_1.sequential/lstm_1/lstm_cell_1/ReadVariableOp_12`
.sequential/lstm_1/lstm_cell_1/ReadVariableOp_2.sequential/lstm_1/lstm_cell_1/ReadVariableOp_22`
.sequential/lstm_1/lstm_cell_1/ReadVariableOp_3.sequential/lstm_1/lstm_cell_1/ReadVariableOp_32h
2sequential/lstm_1/lstm_cell_1/split/ReadVariableOp2sequential/lstm_1/lstm_cell_1/split/ReadVariableOp2l
4sequential/lstm_1/lstm_cell_1/split_1/ReadVariableOp4sequential/lstm_1/lstm_cell_1/split_1/ReadVariableOp22
sequential/lstm_1/whilesequential/lstm_1/while:W S
+
_output_shapes
:���������
$
_user_specified_name
lstm_input"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E

lstm_input7
serving_default_lstm_input:0���������9
dense0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
	_default_save_signature
*
&call_and_return_all_conditional_losses
	optimizer

signatures"
_tf_keras_sequential
�
	variables
regularization_losses
trainable_variables
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
regularization_losses
trainable_variables
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
X
%0
&1
'2
(3
)4
*5
#6
$7"
trackable_list_wrapper
X
%0
&1
'2
(3
)4
*5
#6
$7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
+layer_metrics
,layer_regularization_losses
-metrics
.non_trainable_variables

/layers
trainable_variables
regularization_losses
__call__
	_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�
0trace_0
1trace_1
2trace_2
3trace_32�
*__inference_sequential_layer_call_fn_28888
*__inference_sequential_layer_call_fn_29636
*__inference_sequential_layer_call_fn_29657
*__inference_sequential_layer_call_fn_29540�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z0trace_0z1trace_1z2trace_2z3trace_3
�
4trace_02�
 __inference__wrapped_model_27394�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *-�*
(�%

lstm_input���������z4trace_0
�
5trace_0
6trace_1
7trace_2
8trace_32�
E__inference_sequential_layer_call_and_return_conditional_losses_30172
E__inference_sequential_layer_call_and_return_conditional_losses_30687
E__inference_sequential_layer_call_and_return_conditional_losses_29563
E__inference_sequential_layer_call_and_return_conditional_losses_29586�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z5trace_0z6trace_1z7trace_2z8trace_3
�
9iter

:beta_1

;beta_2
	<decay
=learning_rate#m�$m�%m�&m�'m�(m�)m�*m�#v�$v�%v�&v�'v�(v�)v�*v�"
tf_deprecated_optimizer
,
>serving_default"
signature_map
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
�
	variables
?layer_metrics
@layer_regularization_losses
regularization_losses
Ametrics
Bnon_trainable_variables

Clayers
trainable_variables

Dstates
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Etrace_0
Ftrace_1
Gtrace_2
Htrace_32�
$__inference_lstm_layer_call_fn_30698
$__inference_lstm_layer_call_fn_30709
$__inference_lstm_layer_call_fn_30720
$__inference_lstm_layer_call_fn_30731�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zEtrace_0zFtrace_1zGtrace_2zHtrace_3
�
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_32�
?__inference_lstm_layer_call_and_return_conditional_losses_30987
?__inference_lstm_layer_call_and_return_conditional_losses_31243
?__inference_lstm_layer_call_and_return_conditional_losses_31499
?__inference_lstm_layer_call_and_return_conditional_losses_31755�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zItrace_0zJtrace_1zKtrace_2zLtrace_3
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S
state_size

%kernel
&recurrent_kernel
'bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
�
	variables
Tlayer_metrics
Ulayer_regularization_losses
regularization_losses
Vmetrics
Wnon_trainable_variables

Xlayers
trainable_variables

Ystates
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ztrace_0
[trace_1
\trace_2
]trace_32�
&__inference_lstm_1_layer_call_fn_31766
&__inference_lstm_1_layer_call_fn_31777
&__inference_lstm_1_layer_call_fn_31788
&__inference_lstm_1_layer_call_fn_31799�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zZtrace_0z[trace_1z\trace_2z]trace_3
�
^trace_0
_trace_1
`trace_2
atrace_32�
A__inference_lstm_1_layer_call_and_return_conditional_losses_32055
A__inference_lstm_1_layer_call_and_return_conditional_losses_32311
A__inference_lstm_1_layer_call_and_return_conditional_losses_32567
A__inference_lstm_1_layer_call_and_return_conditional_losses_32823�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z^trace_0z_trace_1z`trace_2zatrace_3
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h
state_size

(kernel
)recurrent_kernel
*bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
ilayer_metrics
jlayer_regularization_losses
kmetrics
lnon_trainable_variables

mlayers
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
ntrace_02�
%__inference_dense_layer_call_fn_32832�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zntrace_0
�
otrace_02�
@__inference_dense_layer_call_and_return_conditional_losses_32843�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zotrace_0
:d2dense/kernel
:2
dense/bias
(:&	�2lstm/lstm_cell/kernel
2:0	d�2lstm/lstm_cell/recurrent_kernel
": �2lstm/lstm_cell/bias
,:*	d�2lstm_1/lstm_cell_1/kernel
6:4	d�2#lstm_1/lstm_cell_1/recurrent_kernel
&:$�2lstm_1/lstm_cell_1/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
�B�
*__inference_sequential_layer_call_fn_28888
lstm_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_29636inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_29657inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_29540
lstm_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
 __inference__wrapped_model_27394
lstm_input"�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *-�*
(�%

lstm_input���������
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_30172inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_30687inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_29563
lstm_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_29586
lstm_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
#__inference_signature_wrapper_29615
lstm_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
$__inference_lstm_layer_call_fn_30698inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
$__inference_lstm_layer_call_fn_30709inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
$__inference_lstm_layer_call_fn_30720inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
$__inference_lstm_layer_call_fn_30731inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
?__inference_lstm_layer_call_and_return_conditional_losses_30987inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
?__inference_lstm_layer_call_and_return_conditional_losses_31243inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
?__inference_lstm_layer_call_and_return_conditional_losses_31499inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
?__inference_lstm_layer_call_and_return_conditional_losses_31755inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
M	variables
rlayer_metrics
slayer_regularization_losses
tmetrics
unon_trainable_variables

vlayers
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_0
xtrace_12�
)__inference_lstm_cell_layer_call_fn_32860
)__inference_lstm_cell_layer_call_fn_32877�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zwtrace_0zxtrace_1
�
ytrace_0
ztrace_12�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_32966
D__inference_lstm_cell_layer_call_and_return_conditional_losses_33055�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zytrace_0zztrace_1
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
&__inference_lstm_1_layer_call_fn_31766inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
&__inference_lstm_1_layer_call_fn_31777inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
&__inference_lstm_1_layer_call_fn_31788inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
&__inference_lstm_1_layer_call_fn_31799inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
A__inference_lstm_1_layer_call_and_return_conditional_losses_32055inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
A__inference_lstm_1_layer_call_and_return_conditional_losses_32311inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
A__inference_lstm_1_layer_call_and_return_conditional_losses_32567inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
A__inference_lstm_1_layer_call_and_return_conditional_losses_32823inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
b	variables
{layer_metrics
|layer_regularization_losses
}metrics
~non_trainable_variables

layers
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_lstm_cell_1_layer_call_fn_33072
+__inference_lstm_cell_1_layer_call_fn_33089�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_33178
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_33267�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
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
�B�
%__inference_dense_layer_call_fn_32832inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_32843inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
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
�B�
)__inference_lstm_cell_layer_call_fn_32860inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_lstm_cell_layer_call_fn_32877inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_32966inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_33055inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
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
�B�
+__inference_lstm_cell_1_layer_call_fn_33072inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_lstm_cell_1_layer_call_fn_33089inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_33178inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_33267inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
#:!d2Adam/dense/kernel/m
:2Adam/dense/bias/m
-:+	�2Adam/lstm/lstm_cell/kernel/m
7:5	d�2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%�2Adam/lstm/lstm_cell/bias/m
1:/	d�2 Adam/lstm_1/lstm_cell_1/kernel/m
;:9	d�2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
+:)�2Adam/lstm_1/lstm_cell_1/bias/m
#:!d2Adam/dense/kernel/v
:2Adam/dense/bias/v
-:+	�2Adam/lstm/lstm_cell/kernel/v
7:5	d�2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%�2Adam/lstm/lstm_cell/bias/v
1:/	d�2 Adam/lstm_1/lstm_cell_1/kernel/v
;:9	d�2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
+:)�2Adam/lstm_1/lstm_cell_1/bias/v�
 __inference__wrapped_model_27394r%'&(*)#$7�4
-�*
(�%

lstm_input���������
� "-�*
(
dense�
dense����������
@__inference_dense_layer_call_and_return_conditional_losses_32843\#$/�,
%�"
 �
inputs���������d
� "%�"
�
0���������
� x
%__inference_dense_layer_call_fn_32832O#$/�,
%�"
 �
inputs���������d
� "�����������
A__inference_lstm_1_layer_call_and_return_conditional_losses_32055}(*)O�L
E�B
4�1
/�,
inputs/0������������������d

 
p 

 
� "%�"
�
0���������d
� �
A__inference_lstm_1_layer_call_and_return_conditional_losses_32311}(*)O�L
E�B
4�1
/�,
inputs/0������������������d

 
p

 
� "%�"
�
0���������d
� �
A__inference_lstm_1_layer_call_and_return_conditional_losses_32567m(*)?�<
5�2
$�!
inputs���������d

 
p 

 
� "%�"
�
0���������d
� �
A__inference_lstm_1_layer_call_and_return_conditional_losses_32823m(*)?�<
5�2
$�!
inputs���������d

 
p

 
� "%�"
�
0���������d
� �
&__inference_lstm_1_layer_call_fn_31766p(*)O�L
E�B
4�1
/�,
inputs/0������������������d

 
p 

 
� "����������d�
&__inference_lstm_1_layer_call_fn_31777p(*)O�L
E�B
4�1
/�,
inputs/0������������������d

 
p

 
� "����������d�
&__inference_lstm_1_layer_call_fn_31788`(*)?�<
5�2
$�!
inputs���������d

 
p 

 
� "����������d�
&__inference_lstm_1_layer_call_fn_31799`(*)?�<
5�2
$�!
inputs���������d

 
p

 
� "����������d�
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_33178�(*)��}
v�s
 �
inputs���������d
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_33267�(*)��}
v�s
 �
inputs���������d
K�H
"�
states/0���������d
"�
states/1���������d
p
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
+__inference_lstm_cell_1_layer_call_fn_33072�(*)��}
v�s
 �
inputs���������d
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
+__inference_lstm_cell_1_layer_call_fn_33089�(*)��}
v�s
 �
inputs���������d
K�H
"�
states/0���������d
"�
states/1���������d
p
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
D__inference_lstm_cell_layer_call_and_return_conditional_losses_32966�%'&��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
D__inference_lstm_cell_layer_call_and_return_conditional_losses_33055�%'&��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p
� "s�p
i�f
�
0/0���������d
E�B
�
0/1/0���������d
�
0/1/1���������d
� �
)__inference_lstm_cell_layer_call_fn_32860�%'&��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p 
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
)__inference_lstm_cell_layer_call_fn_32877�%'&��}
v�s
 �
inputs���������
K�H
"�
states/0���������d
"�
states/1���������d
p
� "c�`
�
0���������d
A�>
�
1/0���������d
�
1/1���������d�
?__inference_lstm_layer_call_and_return_conditional_losses_30987�%'&O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������d
� �
?__inference_lstm_layer_call_and_return_conditional_losses_31243�%'&O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������d
� �
?__inference_lstm_layer_call_and_return_conditional_losses_31499q%'&?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������d
� �
?__inference_lstm_layer_call_and_return_conditional_losses_31755q%'&?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������d
� �
$__inference_lstm_layer_call_fn_30698}%'&O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������d�
$__inference_lstm_layer_call_fn_30709}%'&O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������d�
$__inference_lstm_layer_call_fn_30720d%'&?�<
5�2
$�!
inputs���������

 
p 

 
� "����������d�
$__inference_lstm_layer_call_fn_30731d%'&?�<
5�2
$�!
inputs���������

 
p

 
� "����������d�
E__inference_sequential_layer_call_and_return_conditional_losses_29563r%'&(*)#$?�<
5�2
(�%

lstm_input���������
p 

 
� "%�"
�
0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_29586r%'&(*)#$?�<
5�2
(�%

lstm_input���������
p

 
� "%�"
�
0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_30172n%'&(*)#$;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_30687n%'&(*)#$;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
*__inference_sequential_layer_call_fn_28888e%'&(*)#$?�<
5�2
(�%

lstm_input���������
p 

 
� "�����������
*__inference_sequential_layer_call_fn_29540e%'&(*)#$?�<
5�2
(�%

lstm_input���������
p

 
� "�����������
*__inference_sequential_layer_call_fn_29636a%'&(*)#$;�8
1�.
$�!
inputs���������
p 

 
� "�����������
*__inference_sequential_layer_call_fn_29657a%'&(*)#$;�8
1�.
$�!
inputs���������
p

 
� "�����������
#__inference_signature_wrapper_29615�%'&(*)#$E�B
� 
;�8
6

lstm_input(�%

lstm_input���������"-�*
(
dense�
dense���������