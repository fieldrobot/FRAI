ήκ
ο
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ΐ
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
E
Relu
features"T
activations"T"
Ttype:
2	

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
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
0
Sigmoid
x"T
y"T"
Ttype:

2
Α
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
φ
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758»υ
|
Conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv1/kernel
u
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*&
_output_shapes
:*
dtype0
l

Conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Conv1/bias
e
Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
_output_shapes
:*
dtype0
|
Conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv2/kernel
u
 Conv2/kernel/Read/ReadVariableOpReadVariableOpConv2/kernel*&
_output_shapes
:*
dtype0
l

Conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Conv2/bias
e
Conv2/bias/Read/ReadVariableOpReadVariableOp
Conv2/bias*
_output_shapes
:*
dtype0
|
Conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv3/kernel
u
 Conv3/kernel/Read/ReadVariableOpReadVariableOpConv3/kernel*&
_output_shapes
:*
dtype0
l

Conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Conv3/bias
e
Conv3/bias/Read/ReadVariableOpReadVariableOp
Conv3/bias*
_output_shapes
:*
dtype0
|
Conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameConv4/kernel
u
 Conv4/kernel/Read/ReadVariableOpReadVariableOpConv4/kernel*&
_output_shapes
: *
dtype0
l

Conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Conv4/bias
e
Conv4/bias/Read/ReadVariableOpReadVariableOp
Conv4/bias*
_output_shapes
: *
dtype0
|
Conv5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_nameConv5/kernel
u
 Conv5/kernel/Read/ReadVariableOpReadVariableOpConv5/kernel*&
_output_shapes
:  *
dtype0
l

Conv5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Conv5/bias
e
Conv5/bias/Read/ReadVariableOpReadVariableOp
Conv5/bias*
_output_shapes
: *
dtype0

Deconv5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_nameDeconv5/kernel
y
"Deconv5/kernel/Read/ReadVariableOpReadVariableOpDeconv5/kernel*&
_output_shapes
:  *
dtype0
p
Deconv5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameDeconv5/bias
i
 Deconv5/bias/Read/ReadVariableOpReadVariableOpDeconv5/bias*
_output_shapes
: *
dtype0

Deconv6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_nameDeconv6/kernel
y
"Deconv6/kernel/Read/ReadVariableOpReadVariableOpDeconv6/kernel*&
_output_shapes
:  *
dtype0
p
Deconv6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameDeconv6/bias
i
 Deconv6/bias/Read/ReadVariableOpReadVariableOpDeconv6/bias*
_output_shapes
: *
dtype0

Deconv7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameDeconv7/kernel
y
"Deconv7/kernel/Read/ReadVariableOpReadVariableOpDeconv7/kernel*&
_output_shapes
: *
dtype0
p
Deconv7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameDeconv7/bias
i
 Deconv7/bias/Read/ReadVariableOpReadVariableOpDeconv7/bias*
_output_shapes
:*
dtype0

Deconv8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameDeconv8/kernel
y
"Deconv8/kernel/Read/ReadVariableOpReadVariableOpDeconv8/kernel*&
_output_shapes
:*
dtype0
p
Deconv8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameDeconv8/bias
i
 Deconv8/bias/Read/ReadVariableOpReadVariableOpDeconv8/bias*
_output_shapes
:*
dtype0
|
Final/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameFinal/kernel
u
 Final/kernel/Read/ReadVariableOpReadVariableOpFinal/kernel*&
_output_shapes
:*
dtype0
l

Final/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Final/bias
e
Final/bias/Read/ReadVariableOpReadVariableOp
Final/bias*
_output_shapes
:*
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

Adam/Conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv1/kernel/m

'Adam/Conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv1/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/Conv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv1/bias/m
s
%Adam/Conv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv1/bias/m*
_output_shapes
:*
dtype0

Adam/Conv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv2/kernel/m

'Adam/Conv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv2/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/Conv2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv2/bias/m
s
%Adam/Conv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv2/bias/m*
_output_shapes
:*
dtype0

Adam/Conv3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv3/kernel/m

'Adam/Conv3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv3/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/Conv3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv3/bias/m
s
%Adam/Conv3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv3/bias/m*
_output_shapes
:*
dtype0

Adam/Conv4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Conv4/kernel/m

'Adam/Conv4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv4/kernel/m*&
_output_shapes
: *
dtype0
z
Adam/Conv4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv4/bias/m
s
%Adam/Conv4/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv4/bias/m*
_output_shapes
: *
dtype0

Adam/Conv5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *$
shared_nameAdam/Conv5/kernel/m

'Adam/Conv5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv5/kernel/m*&
_output_shapes
:  *
dtype0
z
Adam/Conv5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv5/bias/m
s
%Adam/Conv5/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv5/bias/m*
_output_shapes
: *
dtype0

Adam/Deconv5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *&
shared_nameAdam/Deconv5/kernel/m

)Adam/Deconv5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv5/kernel/m*&
_output_shapes
:  *
dtype0
~
Adam/Deconv5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv5/bias/m
w
'Adam/Deconv5/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv5/bias/m*
_output_shapes
: *
dtype0

Adam/Deconv6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *&
shared_nameAdam/Deconv6/kernel/m

)Adam/Deconv6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv6/kernel/m*&
_output_shapes
:  *
dtype0
~
Adam/Deconv6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv6/bias/m
w
'Adam/Deconv6/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv6/bias/m*
_output_shapes
: *
dtype0

Adam/Deconv7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/Deconv7/kernel/m

)Adam/Deconv7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv7/kernel/m*&
_output_shapes
: *
dtype0
~
Adam/Deconv7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Deconv7/bias/m
w
'Adam/Deconv7/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv7/bias/m*
_output_shapes
:*
dtype0

Adam/Deconv8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Deconv8/kernel/m

)Adam/Deconv8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv8/kernel/m*&
_output_shapes
:*
dtype0
~
Adam/Deconv8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Deconv8/bias/m
w
'Adam/Deconv8/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv8/bias/m*
_output_shapes
:*
dtype0

Adam/Final/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Final/kernel/m

'Adam/Final/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Final/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/Final/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Final/bias/m
s
%Adam/Final/bias/m/Read/ReadVariableOpReadVariableOpAdam/Final/bias/m*
_output_shapes
:*
dtype0

Adam/Conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv1/kernel/v

'Adam/Conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv1/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/Conv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv1/bias/v
s
%Adam/Conv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv1/bias/v*
_output_shapes
:*
dtype0

Adam/Conv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv2/kernel/v

'Adam/Conv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv2/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/Conv2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv2/bias/v
s
%Adam/Conv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv2/bias/v*
_output_shapes
:*
dtype0

Adam/Conv3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv3/kernel/v

'Adam/Conv3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv3/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/Conv3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv3/bias/v
s
%Adam/Conv3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv3/bias/v*
_output_shapes
:*
dtype0

Adam/Conv4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Conv4/kernel/v

'Adam/Conv4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv4/kernel/v*&
_output_shapes
: *
dtype0
z
Adam/Conv4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv4/bias/v
s
%Adam/Conv4/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv4/bias/v*
_output_shapes
: *
dtype0

Adam/Conv5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *$
shared_nameAdam/Conv5/kernel/v

'Adam/Conv5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv5/kernel/v*&
_output_shapes
:  *
dtype0
z
Adam/Conv5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv5/bias/v
s
%Adam/Conv5/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv5/bias/v*
_output_shapes
: *
dtype0

Adam/Deconv5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *&
shared_nameAdam/Deconv5/kernel/v

)Adam/Deconv5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv5/kernel/v*&
_output_shapes
:  *
dtype0
~
Adam/Deconv5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv5/bias/v
w
'Adam/Deconv5/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv5/bias/v*
_output_shapes
: *
dtype0

Adam/Deconv6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *&
shared_nameAdam/Deconv6/kernel/v

)Adam/Deconv6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv6/kernel/v*&
_output_shapes
:  *
dtype0
~
Adam/Deconv6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv6/bias/v
w
'Adam/Deconv6/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv6/bias/v*
_output_shapes
: *
dtype0

Adam/Deconv7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/Deconv7/kernel/v

)Adam/Deconv7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv7/kernel/v*&
_output_shapes
: *
dtype0
~
Adam/Deconv7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Deconv7/bias/v
w
'Adam/Deconv7/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv7/bias/v*
_output_shapes
:*
dtype0

Adam/Deconv8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Deconv8/kernel/v

)Adam/Deconv8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv8/kernel/v*&
_output_shapes
:*
dtype0
~
Adam/Deconv8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Deconv8/bias/v
w
'Adam/Deconv8/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv8/bias/v*
_output_shapes
:*
dtype0

Adam/Final/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Final/kernel/v

'Adam/Final/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Final/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/Final/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Final/bias/v
s
%Adam/Final/bias/v/Read/ReadVariableOpReadVariableOpAdam/Final/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ζ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* 
valueB B
ή
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer_with_weights-8
layer-18
layer_with_weights-9
layer-19
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
¦

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses*

.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
¦

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses*
₯
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@_random_generator
A__call__
*B&call_and_return_all_conditional_losses* 
¦

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses*
₯
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses* 
¦

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses*
₯
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^_random_generator
___call__
*`&call_and_return_all_conditional_losses* 

a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 

g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses* 
¦

mkernel
nbias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses*
₯
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y_random_generator
z__call__
*{&call_and_return_all_conditional_losses* 
ͺ

|kernel
}bias
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¬
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 
?
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¬
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
?
 kernel
	‘bias
’	variables
£trainable_variables
€regularization_losses
₯	keras_api
¦__call__
+§&call_and_return_all_conditional_losses*
?
¨kernel
	©bias
ͺ	variables
«trainable_variables
¬regularization_losses
­	keras_api
?__call__
+―&call_and_return_all_conditional_losses*
ε
	°iter
±beta_1
²beta_2

³decay
΄learning_ratemͺm«&m¬'m­4m?5m―Cm°Dm±Rm²Sm³mm΄nm΅|mΆ}m·	mΈ	mΉ	 mΊ	‘m»	¨mΌ	©m½vΎvΏ&vΐ'vΑ4vΒ5vΓCvΔDvΕRvΖSvΗmvΘnvΙ|vΚ}vΛ	vΜ	vΝ	 vΞ	‘vΟ	¨vΠ	©vΡ*
 
0
1
&2
'3
44
55
C6
D7
R8
S9
m10
n11
|12
}13
14
15
 16
‘17
¨18
©19*
 
0
1
&2
'3
44
55
C6
D7
R8
S9
m10
n11
|12
}13
14
15
 16
‘17
¨18
©19*
* 
΅
΅non_trainable_variables
Άlayers
·metrics
 Έlayer_regularization_losses
Ήlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Ίserving_default* 
\V
VARIABLE_VALUEConv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

»non_trainable_variables
Όlayers
½metrics
 Ύlayer_regularization_losses
Ώlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEConv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

&0
'1*

&0
'1*
* 

ΐnon_trainable_variables
Αlayers
Βmetrics
 Γlayer_regularization_losses
Δlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Εnon_trainable_variables
Ζlayers
Ηmetrics
 Θlayer_regularization_losses
Ιlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEConv3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

40
51*

40
51*
* 

Κnon_trainable_variables
Λlayers
Μmetrics
 Νlayer_regularization_losses
Ξlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Οnon_trainable_variables
Πlayers
Ρmetrics
 ?layer_regularization_losses
Σlayer_metrics
<	variables
=trainable_variables
>regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 
* 
* 
* 
\V
VARIABLE_VALUEConv4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

C0
D1*

C0
D1*
* 

Τnon_trainable_variables
Υlayers
Φmetrics
 Χlayer_regularization_losses
Ψlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ωnon_trainable_variables
Ϊlayers
Ϋmetrics
 άlayer_regularization_losses
έlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 
* 
* 
* 
\V
VARIABLE_VALUEConv5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

R0
S1*

R0
S1*
* 

ήnon_trainable_variables
ίlayers
ΰmetrics
 αlayer_regularization_losses
βlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

γnon_trainable_variables
δlayers
εmetrics
 ζlayer_regularization_losses
ηlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

θnon_trainable_variables
ιlayers
κmetrics
 λlayer_regularization_losses
μlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

νnon_trainable_variables
ξlayers
οmetrics
 πlayer_regularization_losses
ρlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEDeconv5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

m0
n1*

m0
n1*
* 

ςnon_trainable_variables
σlayers
τmetrics
 υlayer_regularization_losses
φlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

χnon_trainable_variables
ψlayers
ωmetrics
 ϊlayer_regularization_losses
ϋlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEDeconv6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

|0
}1*

|0
}1*
* 

όnon_trainable_variables
ύlayers
ώmetrics
 ?layer_regularization_losses
layer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEDeconv7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEDeconv8/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv8/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
‘1*

 0
‘1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
’	variables
£trainable_variables
€regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEFinal/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Final/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

¨0
©1*

¨0
©1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ͺ	variables
«trainable_variables
¬regularization_losses
?__call__
+―&call_and_return_all_conditional_losses
'―"call_and_return_conditional_losses*
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

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19*

0
 1*
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
<

‘total

’count
£	variables
€	keras_api*
M

₯total

¦count
§
_fn_kwargs
¨	variables
©	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

‘0
’1*

£	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

₯0
¦1*

¨	variables*
y
VARIABLE_VALUEAdam/Conv1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv5/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv5/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv5/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv5/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv7/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv8/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv8/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Final/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Final/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv5/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv5/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv5/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv5/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv7/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv8/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv8/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Final/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Final/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_Conv1_inputPlaceholder*0
_output_shapes
:?????????x *
dtype0*%
shape:?????????x 
ύ
StatefulPartitionedCallStatefulPartitionedCallserving_default_Conv1_inputConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv4/kernel
Conv4/biasConv5/kernel
Conv5/biasDeconv5/kernelDeconv5/biasDeconv6/kernelDeconv6/biasDeconv7/kernelDeconv7/biasDeconv8/kernelDeconv8/biasFinal/kernel
Final/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????x *6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_11790
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename Conv1/kernel/Read/ReadVariableOpConv1/bias/Read/ReadVariableOp Conv2/kernel/Read/ReadVariableOpConv2/bias/Read/ReadVariableOp Conv3/kernel/Read/ReadVariableOpConv3/bias/Read/ReadVariableOp Conv4/kernel/Read/ReadVariableOpConv4/bias/Read/ReadVariableOp Conv5/kernel/Read/ReadVariableOpConv5/bias/Read/ReadVariableOp"Deconv5/kernel/Read/ReadVariableOp Deconv5/bias/Read/ReadVariableOp"Deconv6/kernel/Read/ReadVariableOp Deconv6/bias/Read/ReadVariableOp"Deconv7/kernel/Read/ReadVariableOp Deconv7/bias/Read/ReadVariableOp"Deconv8/kernel/Read/ReadVariableOp Deconv8/bias/Read/ReadVariableOp Final/kernel/Read/ReadVariableOpFinal/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/Conv1/kernel/m/Read/ReadVariableOp%Adam/Conv1/bias/m/Read/ReadVariableOp'Adam/Conv2/kernel/m/Read/ReadVariableOp%Adam/Conv2/bias/m/Read/ReadVariableOp'Adam/Conv3/kernel/m/Read/ReadVariableOp%Adam/Conv3/bias/m/Read/ReadVariableOp'Adam/Conv4/kernel/m/Read/ReadVariableOp%Adam/Conv4/bias/m/Read/ReadVariableOp'Adam/Conv5/kernel/m/Read/ReadVariableOp%Adam/Conv5/bias/m/Read/ReadVariableOp)Adam/Deconv5/kernel/m/Read/ReadVariableOp'Adam/Deconv5/bias/m/Read/ReadVariableOp)Adam/Deconv6/kernel/m/Read/ReadVariableOp'Adam/Deconv6/bias/m/Read/ReadVariableOp)Adam/Deconv7/kernel/m/Read/ReadVariableOp'Adam/Deconv7/bias/m/Read/ReadVariableOp)Adam/Deconv8/kernel/m/Read/ReadVariableOp'Adam/Deconv8/bias/m/Read/ReadVariableOp'Adam/Final/kernel/m/Read/ReadVariableOp%Adam/Final/bias/m/Read/ReadVariableOp'Adam/Conv1/kernel/v/Read/ReadVariableOp%Adam/Conv1/bias/v/Read/ReadVariableOp'Adam/Conv2/kernel/v/Read/ReadVariableOp%Adam/Conv2/bias/v/Read/ReadVariableOp'Adam/Conv3/kernel/v/Read/ReadVariableOp%Adam/Conv3/bias/v/Read/ReadVariableOp'Adam/Conv4/kernel/v/Read/ReadVariableOp%Adam/Conv4/bias/v/Read/ReadVariableOp'Adam/Conv5/kernel/v/Read/ReadVariableOp%Adam/Conv5/bias/v/Read/ReadVariableOp)Adam/Deconv5/kernel/v/Read/ReadVariableOp'Adam/Deconv5/bias/v/Read/ReadVariableOp)Adam/Deconv6/kernel/v/Read/ReadVariableOp'Adam/Deconv6/bias/v/Read/ReadVariableOp)Adam/Deconv7/kernel/v/Read/ReadVariableOp'Adam/Deconv7/bias/v/Read/ReadVariableOp)Adam/Deconv8/kernel/v/Read/ReadVariableOp'Adam/Deconv8/bias/v/Read/ReadVariableOp'Adam/Final/kernel/v/Read/ReadVariableOp%Adam/Final/bias/v/Read/ReadVariableOpConst*R
TinK
I2G	*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_12571

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv4/kernel
Conv4/biasConv5/kernel
Conv5/biasDeconv5/kernelDeconv5/biasDeconv6/kernelDeconv6/biasDeconv7/kernelDeconv7/biasDeconv8/kernelDeconv8/biasFinal/kernel
Final/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Conv1/kernel/mAdam/Conv1/bias/mAdam/Conv2/kernel/mAdam/Conv2/bias/mAdam/Conv3/kernel/mAdam/Conv3/bias/mAdam/Conv4/kernel/mAdam/Conv4/bias/mAdam/Conv5/kernel/mAdam/Conv5/bias/mAdam/Deconv5/kernel/mAdam/Deconv5/bias/mAdam/Deconv6/kernel/mAdam/Deconv6/bias/mAdam/Deconv7/kernel/mAdam/Deconv7/bias/mAdam/Deconv8/kernel/mAdam/Deconv8/bias/mAdam/Final/kernel/mAdam/Final/bias/mAdam/Conv1/kernel/vAdam/Conv1/bias/vAdam/Conv2/kernel/vAdam/Conv2/bias/vAdam/Conv3/kernel/vAdam/Conv3/bias/vAdam/Conv4/kernel/vAdam/Conv4/bias/vAdam/Conv5/kernel/vAdam/Conv5/bias/vAdam/Deconv5/kernel/vAdam/Deconv5/bias/vAdam/Deconv6/kernel/vAdam/Deconv6/bias/vAdam/Deconv7/kernel/vAdam/Deconv7/bias/vAdam/Deconv8/kernel/vAdam/Deconv8/bias/vAdam/Final/kernel/vAdam/Final/bias/v*Q
TinJ
H2F*
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_12788¨¨
³

d
E__inference_dropout_10_layer_call_and_return_conditional_losses_11887

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????8LC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????8L*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????8Lw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????8Lq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????8La
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????8L"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????8L:W S
/
_output_shapes
:?????????8L
 
_user_specified_nameinputs
Ή
K
/__inference_max_pooling2d_4_layer_call_fn_11986

inputs
identityΫ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_10287
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
γ#

B__inference_Deconv7_layer_call_and_return_conditional_losses_10449

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
Μ
?
__inference__traced_save_12571
file_prefix+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop+
'savev2_conv2_kernel_read_readvariableop)
%savev2_conv2_bias_read_readvariableop+
'savev2_conv3_kernel_read_readvariableop)
%savev2_conv3_bias_read_readvariableop+
'savev2_conv4_kernel_read_readvariableop)
%savev2_conv4_bias_read_readvariableop+
'savev2_conv5_kernel_read_readvariableop)
%savev2_conv5_bias_read_readvariableop-
)savev2_deconv5_kernel_read_readvariableop+
'savev2_deconv5_bias_read_readvariableop-
)savev2_deconv6_kernel_read_readvariableop+
'savev2_deconv6_bias_read_readvariableop-
)savev2_deconv7_kernel_read_readvariableop+
'savev2_deconv7_bias_read_readvariableop-
)savev2_deconv8_kernel_read_readvariableop+
'savev2_deconv8_bias_read_readvariableop+
'savev2_final_kernel_read_readvariableop)
%savev2_final_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_conv1_kernel_m_read_readvariableop0
,savev2_adam_conv1_bias_m_read_readvariableop2
.savev2_adam_conv2_kernel_m_read_readvariableop0
,savev2_adam_conv2_bias_m_read_readvariableop2
.savev2_adam_conv3_kernel_m_read_readvariableop0
,savev2_adam_conv3_bias_m_read_readvariableop2
.savev2_adam_conv4_kernel_m_read_readvariableop0
,savev2_adam_conv4_bias_m_read_readvariableop2
.savev2_adam_conv5_kernel_m_read_readvariableop0
,savev2_adam_conv5_bias_m_read_readvariableop4
0savev2_adam_deconv5_kernel_m_read_readvariableop2
.savev2_adam_deconv5_bias_m_read_readvariableop4
0savev2_adam_deconv6_kernel_m_read_readvariableop2
.savev2_adam_deconv6_bias_m_read_readvariableop4
0savev2_adam_deconv7_kernel_m_read_readvariableop2
.savev2_adam_deconv7_bias_m_read_readvariableop4
0savev2_adam_deconv8_kernel_m_read_readvariableop2
.savev2_adam_deconv8_bias_m_read_readvariableop2
.savev2_adam_final_kernel_m_read_readvariableop0
,savev2_adam_final_bias_m_read_readvariableop2
.savev2_adam_conv1_kernel_v_read_readvariableop0
,savev2_adam_conv1_bias_v_read_readvariableop2
.savev2_adam_conv2_kernel_v_read_readvariableop0
,savev2_adam_conv2_bias_v_read_readvariableop2
.savev2_adam_conv3_kernel_v_read_readvariableop0
,savev2_adam_conv3_bias_v_read_readvariableop2
.savev2_adam_conv4_kernel_v_read_readvariableop0
,savev2_adam_conv4_bias_v_read_readvariableop2
.savev2_adam_conv5_kernel_v_read_readvariableop0
,savev2_adam_conv5_bias_v_read_readvariableop4
0savev2_adam_deconv5_kernel_v_read_readvariableop2
.savev2_adam_deconv5_bias_v_read_readvariableop4
0savev2_adam_deconv6_kernel_v_read_readvariableop2
.savev2_adam_deconv6_bias_v_read_readvariableop4
0savev2_adam_deconv7_kernel_v_read_readvariableop2
.savev2_adam_deconv7_bias_v_read_readvariableop4
0savev2_adam_deconv8_kernel_v_read_readvariableop2
.savev2_adam_deconv8_bias_v_read_readvariableop2
.savev2_adam_final_kernel_v_read_readvariableop0
,savev2_adam_final_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
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
: '
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*΄&
valueͺ&B§&FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHό
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*‘
valueBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B υ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop'savev2_conv3_kernel_read_readvariableop%savev2_conv3_bias_read_readvariableop'savev2_conv4_kernel_read_readvariableop%savev2_conv4_bias_read_readvariableop'savev2_conv5_kernel_read_readvariableop%savev2_conv5_bias_read_readvariableop)savev2_deconv5_kernel_read_readvariableop'savev2_deconv5_bias_read_readvariableop)savev2_deconv6_kernel_read_readvariableop'savev2_deconv6_bias_read_readvariableop)savev2_deconv7_kernel_read_readvariableop'savev2_deconv7_bias_read_readvariableop)savev2_deconv8_kernel_read_readvariableop'savev2_deconv8_bias_read_readvariableop'savev2_final_kernel_read_readvariableop%savev2_final_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_conv1_kernel_m_read_readvariableop,savev2_adam_conv1_bias_m_read_readvariableop.savev2_adam_conv2_kernel_m_read_readvariableop,savev2_adam_conv2_bias_m_read_readvariableop.savev2_adam_conv3_kernel_m_read_readvariableop,savev2_adam_conv3_bias_m_read_readvariableop.savev2_adam_conv4_kernel_m_read_readvariableop,savev2_adam_conv4_bias_m_read_readvariableop.savev2_adam_conv5_kernel_m_read_readvariableop,savev2_adam_conv5_bias_m_read_readvariableop0savev2_adam_deconv5_kernel_m_read_readvariableop.savev2_adam_deconv5_bias_m_read_readvariableop0savev2_adam_deconv6_kernel_m_read_readvariableop.savev2_adam_deconv6_bias_m_read_readvariableop0savev2_adam_deconv7_kernel_m_read_readvariableop.savev2_adam_deconv7_bias_m_read_readvariableop0savev2_adam_deconv8_kernel_m_read_readvariableop.savev2_adam_deconv8_bias_m_read_readvariableop.savev2_adam_final_kernel_m_read_readvariableop,savev2_adam_final_bias_m_read_readvariableop.savev2_adam_conv1_kernel_v_read_readvariableop,savev2_adam_conv1_bias_v_read_readvariableop.savev2_adam_conv2_kernel_v_read_readvariableop,savev2_adam_conv2_bias_v_read_readvariableop.savev2_adam_conv3_kernel_v_read_readvariableop,savev2_adam_conv3_bias_v_read_readvariableop.savev2_adam_conv4_kernel_v_read_readvariableop,savev2_adam_conv4_bias_v_read_readvariableop.savev2_adam_conv5_kernel_v_read_readvariableop,savev2_adam_conv5_bias_v_read_readvariableop0savev2_adam_deconv5_kernel_v_read_readvariableop.savev2_adam_deconv5_bias_v_read_readvariableop0savev2_adam_deconv6_kernel_v_read_readvariableop.savev2_adam_deconv6_bias_v_read_readvariableop0savev2_adam_deconv7_kernel_v_read_readvariableop.savev2_adam_deconv7_bias_v_read_readvariableop0savev2_adam_deconv8_kernel_v_read_readvariableop.savev2_adam_deconv8_bias_v_read_readvariableop.savev2_adam_final_kernel_v_read_readvariableop,savev2_adam_final_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *T
dtypesJ
H2F	
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

identity_1Identity_1:output:0*ϋ
_input_shapesι
ζ: ::::::: : :  : :  : :  : : :::::: : : : : : : : : ::::::: : :  : :  : :  : : :::::::::::: : :  : :  : :  : : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,	(
&
_output_shapes
:  : 


_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
: : %

_output_shapes
: :,&(
&
_output_shapes
:  : '

_output_shapes
: :,((
&
_output_shapes
:  : )

_output_shapes
: :,*(
&
_output_shapes
:  : +

_output_shapes
: :,,(
&
_output_shapes
: : -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
::,8(
&
_output_shapes
: : 9

_output_shapes
: :,:(
&
_output_shapes
:  : ;

_output_shapes
: :,<(
&
_output_shapes
:  : =

_output_shapes
: :,>(
&
_output_shapes
:  : ?

_output_shapes
: :,@(
&
_output_shapes
: : A

_output_shapes
::,B(
&
_output_shapes
:: C

_output_shapes
::,D(
&
_output_shapes
:: E

_output_shapes
::F

_output_shapes
: 

f
J__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_10472

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:΅
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
€
Τ
#__inference_signature_wrapper_11790
conv1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity’StatefulPartitionedCallΉ
StatefulPartitionedCallStatefulPartitionedCallconv1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????x *6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_10266x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????x `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:?????????x 
%
_user_specified_nameConv1_input
Ε
d
E__inference_dropout_13_layer_call_and_return_conditional_losses_12082

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>ΐ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ι

%__inference_Conv1_layer_call_fn_11799

inputs!
unknown:
	unknown_0:
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????v*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_10591x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????v`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????x : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????x 
 
_user_specified_nameinputs
Ή
K
/__inference_up_sampling2d_3_layer_call_fn_11996

inputs
identityΫ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_10306
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

ω
@__inference_Conv2_layer_call_and_return_conditional_losses_11830

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????t*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????tY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????tj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????tw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????v: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????v
 
_user_specified_nameinputs
Ή
K
/__inference_max_pooling2d_3_layer_call_fn_11835

inputs
identityΫ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_10275
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Β
F
*__inference_dropout_11_layer_call_fn_11912

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_10661h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????6J "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6J :W S
/
_output_shapes
:?????????6J 
 
_user_specified_nameinputs
γ#

B__inference_Deconv6_layer_call_and_return_conditional_losses_10400

inputsB
(conv2d_transpose_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ΰZ
΅

G__inference_sequential_1_layer_call_and_return_conditional_losses_11295
conv1_input%
conv1_11234:
conv1_11236:%
conv2_11239:
conv2_11241:%
conv3_11245:
conv3_11247:%
conv4_11251: 
conv4_11253: %
conv5_11257:  
conv5_11259: '
deconv5_11265:  
deconv5_11267: '
deconv6_11271:  
deconv6_11273: '
deconv7_11277: 
deconv7_11279:'
deconv8_11284:
deconv8_11286:%
final_11289:
final_11291:
identity’Conv1/StatefulPartitionedCall’Conv2/StatefulPartitionedCall’Conv3/StatefulPartitionedCall’Conv4/StatefulPartitionedCall’Conv5/StatefulPartitionedCall’Deconv5/StatefulPartitionedCall’Deconv6/StatefulPartitionedCall’Deconv7/StatefulPartitionedCall’Deconv8/StatefulPartitionedCall’Final/StatefulPartitionedCall’"dropout_10/StatefulPartitionedCall’"dropout_11/StatefulPartitionedCall’"dropout_12/StatefulPartitionedCall’"dropout_13/StatefulPartitionedCall’"dropout_14/StatefulPartitionedCall’"dropout_15/StatefulPartitionedCallς
Conv1/StatefulPartitionedCallStatefulPartitionedCallconv1_inputconv1_11234conv1_11236*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????v*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_10591
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_11239conv2_11241*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????t*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_10608π
max_pooling2d_3/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_10275
Conv3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv3_11245conv3_11247*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_10626φ
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_10935
Conv4/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0conv4_11251conv4_11253*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_10650
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall&Conv4/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_10902
Conv5/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0conv5_11257conv5_11259*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_10674
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall&Conv5/StatefulPartitionedCall:output:0#^dropout_11/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_10869υ
max_pooling2d_4/PartitionedCallPartitionedCall+dropout_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_10287
up_sampling2d_3/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_10306¨
Deconv5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0deconv5_11265deconv5_11267*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_10351―
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall(Deconv5/StatefulPartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_10846«
Deconv6/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0deconv6_11271deconv6_11273*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_10400―
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall(Deconv6/StatefulPartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_10823«
Deconv7/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0deconv7_11277deconv7_11279*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_10449―
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall(Deconv7/StatefulPartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_10800
up_sampling2d_4/PartitionedCallPartitionedCall+dropout_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_10472¨
Deconv8/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0deconv8_11284deconv8_11286*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_10517 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_11289final_11291*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_10566
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????μ
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^Conv5/StatefulPartitionedCall ^Deconv5/StatefulPartitionedCall ^Deconv6/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2>
Conv5/StatefulPartitionedCallConv5/StatefulPartitionedCall2B
Deconv5/StatefulPartitionedCallDeconv5/StatefulPartitionedCall2B
Deconv6/StatefulPartitionedCallDeconv6/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall:] Y
0
_output_shapes
:?????????x 
%
_user_specified_nameConv1_input
ε

%__inference_Conv4_layer_call_fn_11896

inputs!
unknown: 
	unknown_0: 
identity’StatefulPartitionedCallΰ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_10650w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????6J `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????8L: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????8L
 
_user_specified_nameinputs
Ε
d
E__inference_dropout_14_layer_call_and_return_conditional_losses_12156

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>ΐ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

f
J__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12008

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:΅
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ψ
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_10637

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????8Lc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????8L"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????8L:W S
/
_output_shapes
:?????????8L
 
_user_specified_nameinputs

ω
@__inference_Conv5_layer_call_and_return_conditional_losses_10674

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????4H i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????4H w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6J : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????6J 
 
_user_specified_nameinputs
³

d
E__inference_dropout_10_layer_call_and_return_conditional_losses_10935

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????8LC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????8L*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????8Lw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????8Lq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????8La
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????8L"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????8L:W S
/
_output_shapes
:?????????8L
 
_user_specified_nameinputs
Β
F
*__inference_dropout_10_layer_call_fn_11865

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_10637h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????8L"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????8L:W S
/
_output_shapes
:?????????8L
 
_user_specified_nameinputs
³

d
E__inference_dropout_11_layer_call_and_return_conditional_losses_11934

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????6J C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????6J *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????6J w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????6J q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????6J a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????6J "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6J :W S
/
_output_shapes
:?????????6J 
 
_user_specified_nameinputs
ε

%__inference_Conv5_layer_call_fn_11943

inputs!
unknown:  
	unknown_0: 
identity’StatefulPartitionedCallΰ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_10674w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????4H `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6J : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????6J 
 
_user_specified_nameinputs
Ψ
Δ
 __inference__wrapped_model_10266
conv1_inputK
1sequential_1_conv1_conv2d_readvariableop_resource:@
2sequential_1_conv1_biasadd_readvariableop_resource:K
1sequential_1_conv2_conv2d_readvariableop_resource:@
2sequential_1_conv2_biasadd_readvariableop_resource:K
1sequential_1_conv3_conv2d_readvariableop_resource:@
2sequential_1_conv3_biasadd_readvariableop_resource:K
1sequential_1_conv4_conv2d_readvariableop_resource: @
2sequential_1_conv4_biasadd_readvariableop_resource: K
1sequential_1_conv5_conv2d_readvariableop_resource:  @
2sequential_1_conv5_biasadd_readvariableop_resource: W
=sequential_1_deconv5_conv2d_transpose_readvariableop_resource:  B
4sequential_1_deconv5_biasadd_readvariableop_resource: W
=sequential_1_deconv6_conv2d_transpose_readvariableop_resource:  B
4sequential_1_deconv6_biasadd_readvariableop_resource: W
=sequential_1_deconv7_conv2d_transpose_readvariableop_resource: B
4sequential_1_deconv7_biasadd_readvariableop_resource:W
=sequential_1_deconv8_conv2d_transpose_readvariableop_resource:B
4sequential_1_deconv8_biasadd_readvariableop_resource:U
;sequential_1_final_conv2d_transpose_readvariableop_resource:@
2sequential_1_final_biasadd_readvariableop_resource:
identity’)sequential_1/Conv1/BiasAdd/ReadVariableOp’(sequential_1/Conv1/Conv2D/ReadVariableOp’)sequential_1/Conv2/BiasAdd/ReadVariableOp’(sequential_1/Conv2/Conv2D/ReadVariableOp’)sequential_1/Conv3/BiasAdd/ReadVariableOp’(sequential_1/Conv3/Conv2D/ReadVariableOp’)sequential_1/Conv4/BiasAdd/ReadVariableOp’(sequential_1/Conv4/Conv2D/ReadVariableOp’)sequential_1/Conv5/BiasAdd/ReadVariableOp’(sequential_1/Conv5/Conv2D/ReadVariableOp’+sequential_1/Deconv5/BiasAdd/ReadVariableOp’4sequential_1/Deconv5/conv2d_transpose/ReadVariableOp’+sequential_1/Deconv6/BiasAdd/ReadVariableOp’4sequential_1/Deconv6/conv2d_transpose/ReadVariableOp’+sequential_1/Deconv7/BiasAdd/ReadVariableOp’4sequential_1/Deconv7/conv2d_transpose/ReadVariableOp’+sequential_1/Deconv8/BiasAdd/ReadVariableOp’4sequential_1/Deconv8/conv2d_transpose/ReadVariableOp’)sequential_1/Final/BiasAdd/ReadVariableOp’2sequential_1/Final/conv2d_transpose/ReadVariableOp’
(sequential_1/Conv1/Conv2D/ReadVariableOpReadVariableOp1sequential_1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ζ
sequential_1/Conv1/Conv2DConv2Dconv1_input0sequential_1/Conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????v*
paddingVALID*
strides

)sequential_1/Conv1/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0·
sequential_1/Conv1/BiasAddBiasAdd"sequential_1/Conv1/Conv2D:output:01sequential_1/Conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????v
sequential_1/Conv1/ReluRelu#sequential_1/Conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????v’
(sequential_1/Conv2/Conv2D/ReadVariableOpReadVariableOp1sequential_1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ΰ
sequential_1/Conv2/Conv2DConv2D%sequential_1/Conv1/Relu:activations:00sequential_1/Conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????t*
paddingVALID*
strides

)sequential_1/Conv2/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0·
sequential_1/Conv2/BiasAddBiasAdd"sequential_1/Conv2/Conv2D:output:01sequential_1/Conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????t
sequential_1/Conv2/ReluRelu#sequential_1/Conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????tΓ
$sequential_1/max_pooling2d_3/MaxPoolMaxPool%sequential_1/Conv2/Relu:activations:0*/
_output_shapes
:?????????:N*
ksize
*
paddingVALID*
strides
’
(sequential_1/Conv3/Conv2D/ReadVariableOpReadVariableOp1sequential_1_conv3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0η
sequential_1/Conv3/Conv2DConv2D-sequential_1/max_pooling2d_3/MaxPool:output:00sequential_1/Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8L*
paddingVALID*
strides

)sequential_1/Conv3/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_conv3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ά
sequential_1/Conv3/BiasAddBiasAdd"sequential_1/Conv3/Conv2D:output:01sequential_1/Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8L~
sequential_1/Conv3/ReluRelu#sequential_1/Conv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????8L
 sequential_1/dropout_10/IdentityIdentity%sequential_1/Conv3/Relu:activations:0*
T0*/
_output_shapes
:?????????8L’
(sequential_1/Conv4/Conv2D/ReadVariableOpReadVariableOp1sequential_1_conv4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0γ
sequential_1/Conv4/Conv2DConv2D)sequential_1/dropout_10/Identity:output:00sequential_1/Conv4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J *
paddingVALID*
strides

)sequential_1/Conv4/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_conv4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ά
sequential_1/Conv4/BiasAddBiasAdd"sequential_1/Conv4/Conv2D:output:01sequential_1/Conv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J ~
sequential_1/Conv4/ReluRelu#sequential_1/Conv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????6J 
 sequential_1/dropout_11/IdentityIdentity%sequential_1/Conv4/Relu:activations:0*
T0*/
_output_shapes
:?????????6J ’
(sequential_1/Conv5/Conv2D/ReadVariableOpReadVariableOp1sequential_1_conv5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0γ
sequential_1/Conv5/Conv2DConv2D)sequential_1/dropout_11/Identity:output:00sequential_1/Conv5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H *
paddingVALID*
strides

)sequential_1/Conv5/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_conv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ά
sequential_1/Conv5/BiasAddBiasAdd"sequential_1/Conv5/Conv2D:output:01sequential_1/Conv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H ~
sequential_1/Conv5/ReluRelu#sequential_1/Conv5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????4H 
 sequential_1/dropout_12/IdentityIdentity%sequential_1/Conv5/Relu:activations:0*
T0*/
_output_shapes
:?????????4H Η
$sequential_1/max_pooling2d_4/MaxPoolMaxPool)sequential_1/dropout_12/Identity:output:0*/
_output_shapes
:?????????$ *
ksize
*
paddingVALID*
strides
s
"sequential_1/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"   $   u
$sequential_1/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ¨
 sequential_1/up_sampling2d_3/mulMul+sequential_1/up_sampling2d_3/Const:output:0-sequential_1/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:ϋ
9sequential_1/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor-sequential_1/max_pooling2d_4/MaxPool:output:0$sequential_1/up_sampling2d_3/mul:z:0*
T0*/
_output_shapes
:?????????4H *
half_pixel_centers(
sequential_1/Deconv5/ShapeShapeJsequential_1/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:r
(sequential_1/Deconv5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/Deconv5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/Deconv5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ί
"sequential_1/Deconv5/strided_sliceStridedSlice#sequential_1/Deconv5/Shape:output:01sequential_1/Deconv5/strided_slice/stack:output:03sequential_1/Deconv5/strided_slice/stack_1:output:03sequential_1/Deconv5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
sequential_1/Deconv5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :6^
sequential_1/Deconv5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :J^
sequential_1/Deconv5/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ς
sequential_1/Deconv5/stackPack+sequential_1/Deconv5/strided_slice:output:0%sequential_1/Deconv5/stack/1:output:0%sequential_1/Deconv5/stack/2:output:0%sequential_1/Deconv5/stack/3:output:0*
N*
T0*
_output_shapes
:t
*sequential_1/Deconv5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_1/Deconv5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_1/Deconv5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Β
$sequential_1/Deconv5/strided_slice_1StridedSlice#sequential_1/Deconv5/stack:output:03sequential_1/Deconv5/strided_slice_1/stack:output:05sequential_1/Deconv5/strided_slice_1/stack_1:output:05sequential_1/Deconv5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΊ
4sequential_1/Deconv5/conv2d_transpose/ReadVariableOpReadVariableOp=sequential_1_deconv5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0Ξ
%sequential_1/Deconv5/conv2d_transposeConv2DBackpropInput#sequential_1/Deconv5/stack:output:0<sequential_1/Deconv5/conv2d_transpose/ReadVariableOp:value:0Jsequential_1/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????6J *
paddingVALID*
strides

+sequential_1/Deconv5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_deconv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ζ
sequential_1/Deconv5/BiasAddBiasAdd.sequential_1/Deconv5/conv2d_transpose:output:03sequential_1/Deconv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J 
sequential_1/Deconv5/ReluRelu%sequential_1/Deconv5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????6J 
 sequential_1/dropout_13/IdentityIdentity'sequential_1/Deconv5/Relu:activations:0*
T0*/
_output_shapes
:?????????6J s
sequential_1/Deconv6/ShapeShape)sequential_1/dropout_13/Identity:output:0*
T0*
_output_shapes
:r
(sequential_1/Deconv6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/Deconv6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/Deconv6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ί
"sequential_1/Deconv6/strided_sliceStridedSlice#sequential_1/Deconv6/Shape:output:01sequential_1/Deconv6/strided_slice/stack:output:03sequential_1/Deconv6/strided_slice/stack_1:output:03sequential_1/Deconv6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
sequential_1/Deconv6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :8^
sequential_1/Deconv6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :L^
sequential_1/Deconv6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ς
sequential_1/Deconv6/stackPack+sequential_1/Deconv6/strided_slice:output:0%sequential_1/Deconv6/stack/1:output:0%sequential_1/Deconv6/stack/2:output:0%sequential_1/Deconv6/stack/3:output:0*
N*
T0*
_output_shapes
:t
*sequential_1/Deconv6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_1/Deconv6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_1/Deconv6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Β
$sequential_1/Deconv6/strided_slice_1StridedSlice#sequential_1/Deconv6/stack:output:03sequential_1/Deconv6/strided_slice_1/stack:output:05sequential_1/Deconv6/strided_slice_1/stack_1:output:05sequential_1/Deconv6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΊ
4sequential_1/Deconv6/conv2d_transpose/ReadVariableOpReadVariableOp=sequential_1_deconv6_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0­
%sequential_1/Deconv6/conv2d_transposeConv2DBackpropInput#sequential_1/Deconv6/stack:output:0<sequential_1/Deconv6/conv2d_transpose/ReadVariableOp:value:0)sequential_1/dropout_13/Identity:output:0*
T0*/
_output_shapes
:?????????8L *
paddingVALID*
strides

+sequential_1/Deconv6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_deconv6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ζ
sequential_1/Deconv6/BiasAddBiasAdd.sequential_1/Deconv6/conv2d_transpose:output:03sequential_1/Deconv6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8L 
sequential_1/Deconv6/ReluRelu%sequential_1/Deconv6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????8L 
 sequential_1/dropout_14/IdentityIdentity'sequential_1/Deconv6/Relu:activations:0*
T0*/
_output_shapes
:?????????8L s
sequential_1/Deconv7/ShapeShape)sequential_1/dropout_14/Identity:output:0*
T0*
_output_shapes
:r
(sequential_1/Deconv7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/Deconv7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/Deconv7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ί
"sequential_1/Deconv7/strided_sliceStridedSlice#sequential_1/Deconv7/Shape:output:01sequential_1/Deconv7/strided_slice/stack:output:03sequential_1/Deconv7/strided_slice/stack_1:output:03sequential_1/Deconv7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
sequential_1/Deconv7/stack/1Const*
_output_shapes
: *
dtype0*
value	B ::^
sequential_1/Deconv7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :N^
sequential_1/Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ς
sequential_1/Deconv7/stackPack+sequential_1/Deconv7/strided_slice:output:0%sequential_1/Deconv7/stack/1:output:0%sequential_1/Deconv7/stack/2:output:0%sequential_1/Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:t
*sequential_1/Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_1/Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_1/Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Β
$sequential_1/Deconv7/strided_slice_1StridedSlice#sequential_1/Deconv7/stack:output:03sequential_1/Deconv7/strided_slice_1/stack:output:05sequential_1/Deconv7/strided_slice_1/stack_1:output:05sequential_1/Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΊ
4sequential_1/Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp=sequential_1_deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0­
%sequential_1/Deconv7/conv2d_transposeConv2DBackpropInput#sequential_1/Deconv7/stack:output:0<sequential_1/Deconv7/conv2d_transpose/ReadVariableOp:value:0)sequential_1/dropout_14/Identity:output:0*
T0*/
_output_shapes
:?????????:N*
paddingVALID*
strides

+sequential_1/Deconv7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ζ
sequential_1/Deconv7/BiasAddBiasAdd.sequential_1/Deconv7/conv2d_transpose:output:03sequential_1/Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:N
sequential_1/Deconv7/ReluRelu%sequential_1/Deconv7/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:N
 sequential_1/dropout_15/IdentityIdentity'sequential_1/Deconv7/Relu:activations:0*
T0*/
_output_shapes
:?????????:Ns
"sequential_1/up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB":   N   u
$sequential_1/up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ¨
 sequential_1/up_sampling2d_4/mulMul+sequential_1/up_sampling2d_4/Const:output:0-sequential_1/up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:ψ
9sequential_1/up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_1/dropout_15/Identity:output:0$sequential_1/up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:?????????t*
half_pixel_centers(
sequential_1/Deconv8/ShapeShapeJsequential_1/up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:r
(sequential_1/Deconv8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/Deconv8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/Deconv8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ί
"sequential_1/Deconv8/strided_sliceStridedSlice#sequential_1/Deconv8/Shape:output:01sequential_1/Deconv8/strided_slice/stack:output:03sequential_1/Deconv8/strided_slice/stack_1:output:03sequential_1/Deconv8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
sequential_1/Deconv8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :v_
sequential_1/Deconv8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :^
sequential_1/Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ς
sequential_1/Deconv8/stackPack+sequential_1/Deconv8/strided_slice:output:0%sequential_1/Deconv8/stack/1:output:0%sequential_1/Deconv8/stack/2:output:0%sequential_1/Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:t
*sequential_1/Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_1/Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_1/Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Β
$sequential_1/Deconv8/strided_slice_1StridedSlice#sequential_1/Deconv8/stack:output:03sequential_1/Deconv8/strided_slice_1/stack:output:05sequential_1/Deconv8/strided_slice_1/stack_1:output:05sequential_1/Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΊ
4sequential_1/Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp=sequential_1_deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ο
%sequential_1/Deconv8/conv2d_transposeConv2DBackpropInput#sequential_1/Deconv8/stack:output:0<sequential_1/Deconv8/conv2d_transpose/ReadVariableOp:value:0Jsequential_1/up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:?????????v*
paddingVALID*
strides

+sequential_1/Deconv8/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Η
sequential_1/Deconv8/BiasAddBiasAdd.sequential_1/Deconv8/conv2d_transpose:output:03sequential_1/Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????v
sequential_1/Deconv8/ReluRelu%sequential_1/Deconv8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????vo
sequential_1/Final/ShapeShape'sequential_1/Deconv8/Relu:activations:0*
T0*
_output_shapes
:p
&sequential_1/Final/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential_1/Final/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential_1/Final/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 sequential_1/Final/strided_sliceStridedSlice!sequential_1/Final/Shape:output:0/sequential_1/Final/strided_slice/stack:output:01sequential_1/Final/strided_slice/stack_1:output:01sequential_1/Final/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
sequential_1/Final/stack/1Const*
_output_shapes
: *
dtype0*
value	B :x]
sequential_1/Final/stack/2Const*
_output_shapes
: *
dtype0*
value
B : \
sequential_1/Final/stack/3Const*
_output_shapes
: *
dtype0*
value	B :θ
sequential_1/Final/stackPack)sequential_1/Final/strided_slice:output:0#sequential_1/Final/stack/1:output:0#sequential_1/Final/stack/2:output:0#sequential_1/Final/stack/3:output:0*
N*
T0*
_output_shapes
:r
(sequential_1/Final/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/Final/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/Final/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"sequential_1/Final/strided_slice_1StridedSlice!sequential_1/Final/stack:output:01sequential_1/Final/strided_slice_1/stack:output:03sequential_1/Final/strided_slice_1/stack_1:output:03sequential_1/Final/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΆ
2sequential_1/Final/conv2d_transpose/ReadVariableOpReadVariableOp;sequential_1_final_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0¦
#sequential_1/Final/conv2d_transposeConv2DBackpropInput!sequential_1/Final/stack:output:0:sequential_1/Final/conv2d_transpose/ReadVariableOp:value:0'sequential_1/Deconv8/Relu:activations:0*
T0*0
_output_shapes
:?????????x *
paddingVALID*
strides

)sequential_1/Final/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_final_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Α
sequential_1/Final/BiasAddBiasAdd,sequential_1/Final/conv2d_transpose:output:01sequential_1/Final/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????x 
sequential_1/Final/SigmoidSigmoid#sequential_1/Final/BiasAdd:output:0*
T0*0
_output_shapes
:?????????x v
IdentityIdentitysequential_1/Final/Sigmoid:y:0^NoOp*
T0*0
_output_shapes
:?????????x ξ
NoOpNoOp*^sequential_1/Conv1/BiasAdd/ReadVariableOp)^sequential_1/Conv1/Conv2D/ReadVariableOp*^sequential_1/Conv2/BiasAdd/ReadVariableOp)^sequential_1/Conv2/Conv2D/ReadVariableOp*^sequential_1/Conv3/BiasAdd/ReadVariableOp)^sequential_1/Conv3/Conv2D/ReadVariableOp*^sequential_1/Conv4/BiasAdd/ReadVariableOp)^sequential_1/Conv4/Conv2D/ReadVariableOp*^sequential_1/Conv5/BiasAdd/ReadVariableOp)^sequential_1/Conv5/Conv2D/ReadVariableOp,^sequential_1/Deconv5/BiasAdd/ReadVariableOp5^sequential_1/Deconv5/conv2d_transpose/ReadVariableOp,^sequential_1/Deconv6/BiasAdd/ReadVariableOp5^sequential_1/Deconv6/conv2d_transpose/ReadVariableOp,^sequential_1/Deconv7/BiasAdd/ReadVariableOp5^sequential_1/Deconv7/conv2d_transpose/ReadVariableOp,^sequential_1/Deconv8/BiasAdd/ReadVariableOp5^sequential_1/Deconv8/conv2d_transpose/ReadVariableOp*^sequential_1/Final/BiasAdd/ReadVariableOp3^sequential_1/Final/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 2V
)sequential_1/Conv1/BiasAdd/ReadVariableOp)sequential_1/Conv1/BiasAdd/ReadVariableOp2T
(sequential_1/Conv1/Conv2D/ReadVariableOp(sequential_1/Conv1/Conv2D/ReadVariableOp2V
)sequential_1/Conv2/BiasAdd/ReadVariableOp)sequential_1/Conv2/BiasAdd/ReadVariableOp2T
(sequential_1/Conv2/Conv2D/ReadVariableOp(sequential_1/Conv2/Conv2D/ReadVariableOp2V
)sequential_1/Conv3/BiasAdd/ReadVariableOp)sequential_1/Conv3/BiasAdd/ReadVariableOp2T
(sequential_1/Conv3/Conv2D/ReadVariableOp(sequential_1/Conv3/Conv2D/ReadVariableOp2V
)sequential_1/Conv4/BiasAdd/ReadVariableOp)sequential_1/Conv4/BiasAdd/ReadVariableOp2T
(sequential_1/Conv4/Conv2D/ReadVariableOp(sequential_1/Conv4/Conv2D/ReadVariableOp2V
)sequential_1/Conv5/BiasAdd/ReadVariableOp)sequential_1/Conv5/BiasAdd/ReadVariableOp2T
(sequential_1/Conv5/Conv2D/ReadVariableOp(sequential_1/Conv5/Conv2D/ReadVariableOp2Z
+sequential_1/Deconv5/BiasAdd/ReadVariableOp+sequential_1/Deconv5/BiasAdd/ReadVariableOp2l
4sequential_1/Deconv5/conv2d_transpose/ReadVariableOp4sequential_1/Deconv5/conv2d_transpose/ReadVariableOp2Z
+sequential_1/Deconv6/BiasAdd/ReadVariableOp+sequential_1/Deconv6/BiasAdd/ReadVariableOp2l
4sequential_1/Deconv6/conv2d_transpose/ReadVariableOp4sequential_1/Deconv6/conv2d_transpose/ReadVariableOp2Z
+sequential_1/Deconv7/BiasAdd/ReadVariableOp+sequential_1/Deconv7/BiasAdd/ReadVariableOp2l
4sequential_1/Deconv7/conv2d_transpose/ReadVariableOp4sequential_1/Deconv7/conv2d_transpose/ReadVariableOp2Z
+sequential_1/Deconv8/BiasAdd/ReadVariableOp+sequential_1/Deconv8/BiasAdd/ReadVariableOp2l
4sequential_1/Deconv8/conv2d_transpose/ReadVariableOp4sequential_1/Deconv8/conv2d_transpose/ReadVariableOp2V
)sequential_1/Final/BiasAdd/ReadVariableOp)sequential_1/Final/BiasAdd/ReadVariableOp2h
2sequential_1/Final/conv2d_transpose/ReadVariableOp2sequential_1/Final/conv2d_transpose/ReadVariableOp:] Y
0
_output_shapes
:?????????x 
%
_user_specified_nameConv1_input
ΐ
c
E__inference_dropout_14_layer_call_and_return_conditional_losses_10711

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_11991

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
³

d
E__inference_dropout_11_layer_call_and_return_conditional_losses_10902

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????6J C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????6J *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????6J w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????6J q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????6J a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????6J "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6J :W S
/
_output_shapes
:?????????6J 
 
_user_specified_nameinputs
ε

%__inference_Conv3_layer_call_fn_11849

inputs!
unknown:
	unknown_0:
identity’StatefulPartitionedCallΰ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_10626w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????8L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:N: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????:N
 
_user_specified_nameinputs

f
J__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_10306

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:΅
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ε
d
E__inference_dropout_14_layer_call_and_return_conditional_losses_10823

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>ΐ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ψ
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_11922

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????6J c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????6J "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6J :W S
/
_output_shapes
:?????????6J 
 
_user_specified_nameinputs
Ε
d
E__inference_dropout_15_layer_call_and_return_conditional_losses_10800

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>ΐ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

c
*__inference_dropout_10_layer_call_fn_11870

inputs
identity’StatefulPartitionedCallΛ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_10935w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????8L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????8L22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????8L
 
_user_specified_nameinputs

F
*__inference_dropout_13_layer_call_fn_12060

inputs
identityΝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_10699z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
έ
c
*__inference_dropout_15_layer_call_fn_12213

inputs
identity’StatefulPartitionedCallέ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_10800
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ΐ
c
E__inference_dropout_14_layer_call_and_return_conditional_losses_12144

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

%__inference_Final_layer_call_fn_12303

inputs!
unknown:
	unknown_0:
identity’StatefulPartitionedCallς
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_10566
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

ω
@__inference_Conv3_layer_call_and_return_conditional_losses_10626

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8L*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8LX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????8Li
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????8Lw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????:N
 
_user_specified_nameinputs

ω
@__inference_Conv1_layer_call_and_return_conditional_losses_11810

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????v*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????vY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????vj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????vw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????x : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????x 
 
_user_specified_nameinputs
Ε
d
E__inference_dropout_15_layer_call_and_return_conditional_losses_12230

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>ΐ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

c
*__inference_dropout_12_layer_call_fn_11964

inputs
identity’StatefulPartitionedCallΛ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_10869w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????4H `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????4H 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????4H 
 
_user_specified_nameinputs
Ε
d
E__inference_dropout_13_layer_call_and_return_conditional_losses_10846

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>ΐ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ψ
c
E__inference_dropout_12_layer_call_and_return_conditional_losses_11969

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????4H c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????4H "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????4H :W S
/
_output_shapes
:?????????4H 
 
_user_specified_nameinputs
χ
έ
,__inference_sequential_1_layer_call_fn_11167
conv1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity’StatefulPartitionedCallρ
StatefulPartitionedCallStatefulPartitionedCallconv1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_11079
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:?????????x 
%
_user_specified_nameConv1_input
³

d
E__inference_dropout_12_layer_call_and_return_conditional_losses_11981

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????4H C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????4H *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????4H w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????4H q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????4H a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????4H "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????4H :W S
/
_output_shapes
:?????????4H 
 
_user_specified_nameinputs

f
J__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_12247

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:΅
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_10287

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
γ#

B__inference_Deconv5_layer_call_and_return_conditional_losses_10351

inputsB
(conv2d_transpose_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
θ
Ψ
,__inference_sequential_1_layer_call_fn_11391

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity’StatefulPartitionedCallμ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_11079
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????x 
 
_user_specified_nameinputs
ΐ
c
E__inference_dropout_13_layer_call_and_return_conditional_losses_12070

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
χ
έ
,__inference_sequential_1_layer_call_fn_10780
conv1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity’StatefulPartitionedCallρ
StatefulPartitionedCallStatefulPartitionedCallconv1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_10737
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:?????????x 
%
_user_specified_nameConv1_input
Q
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_10737

inputs%
conv1_10592:
conv1_10594:%
conv2_10609:
conv2_10611:%
conv3_10627:
conv3_10629:%
conv4_10651: 
conv4_10653: %
conv5_10675:  
conv5_10677: '
deconv5_10689:  
deconv5_10691: '
deconv6_10701:  
deconv6_10703: '
deconv7_10713: 
deconv7_10715:'
deconv8_10726:
deconv8_10728:%
final_10731:
final_10733:
identity’Conv1/StatefulPartitionedCall’Conv2/StatefulPartitionedCall’Conv3/StatefulPartitionedCall’Conv4/StatefulPartitionedCall’Conv5/StatefulPartitionedCall’Deconv5/StatefulPartitionedCall’Deconv6/StatefulPartitionedCall’Deconv7/StatefulPartitionedCall’Deconv8/StatefulPartitionedCall’Final/StatefulPartitionedCallν
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_10592conv1_10594*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????v*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_10591
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_10609conv2_10611*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????t*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_10608π
max_pooling2d_3/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_10275
Conv3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv3_10627conv3_10629*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_10626ζ
dropout_10/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_10637
Conv4/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0conv4_10651conv4_10653*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_10650ζ
dropout_11/PartitionedCallPartitionedCall&Conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_10661
Conv5/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0conv5_10675conv5_10677*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_10674ζ
dropout_12/PartitionedCallPartitionedCall&Conv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_10685ν
max_pooling2d_4/PartitionedCallPartitionedCall#dropout_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_10287
up_sampling2d_3/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_10306¨
Deconv5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0deconv5_10689deconv5_10691*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_10351ϊ
dropout_13/PartitionedCallPartitionedCall(Deconv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_10699£
Deconv6/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0deconv6_10701deconv6_10703*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_10400ϊ
dropout_14/PartitionedCallPartitionedCall(Deconv6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_10711£
Deconv7/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0deconv7_10713deconv7_10715*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_10449ϊ
dropout_15/PartitionedCallPartitionedCall(Deconv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_10723?
up_sampling2d_4/PartitionedCallPartitionedCall#dropout_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_10472¨
Deconv8/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0deconv8_10726deconv8_10728*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_10517 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_10731final_10733*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_10566
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^Conv5/StatefulPartitionedCall ^Deconv5/StatefulPartitionedCall ^Deconv6/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2>
Conv5/StatefulPartitionedCallConv5/StatefulPartitionedCall2B
Deconv5/StatefulPartitionedCallDeconv5/StatefulPartitionedCall2B
Deconv6/StatefulPartitionedCallDeconv6/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall:X T
0
_output_shapes
:?????????x 
 
_user_specified_nameinputs

ω
@__inference_Conv3_layer_call_and_return_conditional_losses_11860

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8L*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8LX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????8Li
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????8Lw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????:N
 
_user_specified_nameinputs
γ#

B__inference_Deconv8_layer_call_and_return_conditional_losses_10517

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
γ#

B__inference_Deconv5_layer_call_and_return_conditional_losses_12055

inputsB
(conv2d_transpose_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ψ
c
E__inference_dropout_12_layer_call_and_return_conditional_losses_10685

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????4H c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????4H "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????4H :W S
/
_output_shapes
:?????????4H 
 
_user_specified_nameinputs
ψ
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_11875

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????8Lc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????8L"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????8L:W S
/
_output_shapes
:?????????8L
 
_user_specified_nameinputs
γ#

B__inference_Deconv8_layer_call_and_return_conditional_losses_12294

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ΐ
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_12218

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ΰ#

@__inference_Final_layer_call_and_return_conditional_losses_12341

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ΐ
c
E__inference_dropout_13_layer_call_and_return_conditional_losses_10699

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
²

'__inference_Deconv5_layer_call_fn_12017

inputs!
unknown:  
	unknown_0: 
identity’StatefulPartitionedCallτ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_10351
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
κ
Ε*
!__inference__traced_restore_12788
file_prefix7
assignvariableop_conv1_kernel:+
assignvariableop_1_conv1_bias:9
assignvariableop_2_conv2_kernel:+
assignvariableop_3_conv2_bias:9
assignvariableop_4_conv3_kernel:+
assignvariableop_5_conv3_bias:9
assignvariableop_6_conv4_kernel: +
assignvariableop_7_conv4_bias: 9
assignvariableop_8_conv5_kernel:  +
assignvariableop_9_conv5_bias: <
"assignvariableop_10_deconv5_kernel:  .
 assignvariableop_11_deconv5_bias: <
"assignvariableop_12_deconv6_kernel:  .
 assignvariableop_13_deconv6_bias: <
"assignvariableop_14_deconv7_kernel: .
 assignvariableop_15_deconv7_bias:<
"assignvariableop_16_deconv8_kernel:.
 assignvariableop_17_deconv8_bias::
 assignvariableop_18_final_kernel:,
assignvariableop_19_final_bias:'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: 0
&assignvariableop_24_adam_learning_rate: #
assignvariableop_25_total: #
assignvariableop_26_count: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: A
'assignvariableop_29_adam_conv1_kernel_m:3
%assignvariableop_30_adam_conv1_bias_m:A
'assignvariableop_31_adam_conv2_kernel_m:3
%assignvariableop_32_adam_conv2_bias_m:A
'assignvariableop_33_adam_conv3_kernel_m:3
%assignvariableop_34_adam_conv3_bias_m:A
'assignvariableop_35_adam_conv4_kernel_m: 3
%assignvariableop_36_adam_conv4_bias_m: A
'assignvariableop_37_adam_conv5_kernel_m:  3
%assignvariableop_38_adam_conv5_bias_m: C
)assignvariableop_39_adam_deconv5_kernel_m:  5
'assignvariableop_40_adam_deconv5_bias_m: C
)assignvariableop_41_adam_deconv6_kernel_m:  5
'assignvariableop_42_adam_deconv6_bias_m: C
)assignvariableop_43_adam_deconv7_kernel_m: 5
'assignvariableop_44_adam_deconv7_bias_m:C
)assignvariableop_45_adam_deconv8_kernel_m:5
'assignvariableop_46_adam_deconv8_bias_m:A
'assignvariableop_47_adam_final_kernel_m:3
%assignvariableop_48_adam_final_bias_m:A
'assignvariableop_49_adam_conv1_kernel_v:3
%assignvariableop_50_adam_conv1_bias_v:A
'assignvariableop_51_adam_conv2_kernel_v:3
%assignvariableop_52_adam_conv2_bias_v:A
'assignvariableop_53_adam_conv3_kernel_v:3
%assignvariableop_54_adam_conv3_bias_v:A
'assignvariableop_55_adam_conv4_kernel_v: 3
%assignvariableop_56_adam_conv4_bias_v: A
'assignvariableop_57_adam_conv5_kernel_v:  3
%assignvariableop_58_adam_conv5_bias_v: C
)assignvariableop_59_adam_deconv5_kernel_v:  5
'assignvariableop_60_adam_deconv5_bias_v: C
)assignvariableop_61_adam_deconv6_kernel_v:  5
'assignvariableop_62_adam_deconv6_bias_v: C
)assignvariableop_63_adam_deconv7_kernel_v: 5
'assignvariableop_64_adam_deconv7_bias_v:C
)assignvariableop_65_adam_deconv8_kernel_v:5
'assignvariableop_66_adam_deconv8_bias_v:A
'assignvariableop_67_adam_final_kernel_v:3
%assignvariableop_68_adam_final_bias_v:
identity_70’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_40’AssignVariableOp_41’AssignVariableOp_42’AssignVariableOp_43’AssignVariableOp_44’AssignVariableOp_45’AssignVariableOp_46’AssignVariableOp_47’AssignVariableOp_48’AssignVariableOp_49’AssignVariableOp_5’AssignVariableOp_50’AssignVariableOp_51’AssignVariableOp_52’AssignVariableOp_53’AssignVariableOp_54’AssignVariableOp_55’AssignVariableOp_56’AssignVariableOp_57’AssignVariableOp_58’AssignVariableOp_59’AssignVariableOp_6’AssignVariableOp_60’AssignVariableOp_61’AssignVariableOp_62’AssignVariableOp_63’AssignVariableOp_64’AssignVariableOp_65’AssignVariableOp_66’AssignVariableOp_67’AssignVariableOp_68’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*΄&
valueͺ&B§&FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*‘
valueBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_conv3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_conv5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_conv5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_deconv5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_deconv5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_deconv6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_deconv6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp"assignvariableop_14_deconv7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp assignvariableop_15_deconv7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_deconv8_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_deconv8_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp assignvariableop_18_final_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_final_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_conv1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp%assignvariableop_30_adam_conv1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_conv2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_conv2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_conv3_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_conv3_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_conv4_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp%assignvariableop_36_adam_conv4_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_conv5_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp%assignvariableop_38_adam_conv5_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_deconv5_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_deconv5_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_deconv6_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_deconv6_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_deconv7_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_deconv7_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_deconv8_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_deconv8_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_final_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp%assignvariableop_48_adam_final_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_conv1_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp%assignvariableop_50_adam_conv1_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_conv2_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp%assignvariableop_52_adam_conv2_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_conv3_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp%assignvariableop_54_adam_conv3_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_conv4_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_conv4_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_conv5_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_conv5_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_deconv5_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_deconv5_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_deconv6_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_deconv6_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_deconv7_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_deconv7_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_deconv8_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_deconv8_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_final_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp%assignvariableop_68_adam_final_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ½
Identity_69Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_70IdentityIdentity_69:output:0^NoOp_1*
T0*
_output_shapes
: ͺ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_70Identity_70:output:0*‘
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
³

d
E__inference_dropout_12_layer_call_and_return_conditional_losses_10869

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????4H C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????4H *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????4H w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????4H q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????4H a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????4H "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????4H :W S
/
_output_shapes
:?????????4H 
 
_user_specified_nameinputs
έ
c
*__inference_dropout_14_layer_call_fn_12139

inputs
identity’StatefulPartitionedCallέ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_10823
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
έ
c
*__inference_dropout_13_layer_call_fn_12065

inputs
identity’StatefulPartitionedCallέ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_10846
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

ω
@__inference_Conv1_layer_call_and_return_conditional_losses_10591

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????v*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????vY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????vj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????vw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????x : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????x 
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_10275

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Β
F
*__inference_dropout_12_layer_call_fn_11959

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_10685h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????4H "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????4H :W S
/
_output_shapes
:?????????4H 
 
_user_specified_nameinputs
γ#

B__inference_Deconv7_layer_call_and_return_conditional_losses_12203

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
²

'__inference_Deconv8_layer_call_fn_12256

inputs!
unknown:
	unknown_0:
identity’StatefulPartitionedCallτ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_10517
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

F
*__inference_dropout_14_layer_call_fn_12134

inputs
identityΝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_10711z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

F
*__inference_dropout_15_layer_call_fn_12208

inputs
identityΝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_10723z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ι

%__inference_Conv2_layer_call_fn_11819

inputs!
unknown:
	unknown_0:
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????t*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_10608x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????t`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????v: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????v
 
_user_specified_nameinputs

ω
@__inference_Conv2_layer_call_and_return_conditional_losses_10608

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????t*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????tY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????tj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????tw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????v: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????v
 
_user_specified_nameinputs

ω
@__inference_Conv5_layer_call_and_return_conditional_losses_11954

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????4H i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????4H w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????6J : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????6J 
 
_user_specified_nameinputs
²

'__inference_Deconv6_layer_call_fn_12091

inputs!
unknown:  
	unknown_0: 
identity’StatefulPartitionedCallτ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_10400
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

c
*__inference_dropout_11_layer_call_fn_11917

inputs
identity’StatefulPartitionedCallΛ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_10902w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????6J `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6J 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????6J 
 
_user_specified_nameinputs
Q
Χ
G__inference_sequential_1_layer_call_and_return_conditional_losses_11231
conv1_input%
conv1_11170:
conv1_11172:%
conv2_11175:
conv2_11177:%
conv3_11181:
conv3_11183:%
conv4_11187: 
conv4_11189: %
conv5_11193:  
conv5_11195: '
deconv5_11201:  
deconv5_11203: '
deconv6_11207:  
deconv6_11209: '
deconv7_11213: 
deconv7_11215:'
deconv8_11220:
deconv8_11222:%
final_11225:
final_11227:
identity’Conv1/StatefulPartitionedCall’Conv2/StatefulPartitionedCall’Conv3/StatefulPartitionedCall’Conv4/StatefulPartitionedCall’Conv5/StatefulPartitionedCall’Deconv5/StatefulPartitionedCall’Deconv6/StatefulPartitionedCall’Deconv7/StatefulPartitionedCall’Deconv8/StatefulPartitionedCall’Final/StatefulPartitionedCallς
Conv1/StatefulPartitionedCallStatefulPartitionedCallconv1_inputconv1_11170conv1_11172*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????v*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_10591
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_11175conv2_11177*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????t*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_10608π
max_pooling2d_3/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_10275
Conv3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv3_11181conv3_11183*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_10626ζ
dropout_10/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_10637
Conv4/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0conv4_11187conv4_11189*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_10650ζ
dropout_11/PartitionedCallPartitionedCall&Conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_10661
Conv5/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0conv5_11193conv5_11195*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_10674ζ
dropout_12/PartitionedCallPartitionedCall&Conv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_10685ν
max_pooling2d_4/PartitionedCallPartitionedCall#dropout_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_10287
up_sampling2d_3/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_10306¨
Deconv5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0deconv5_11201deconv5_11203*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_10351ϊ
dropout_13/PartitionedCallPartitionedCall(Deconv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_10699£
Deconv6/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0deconv6_11207deconv6_11209*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_10400ϊ
dropout_14/PartitionedCallPartitionedCall(Deconv6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_10711£
Deconv7/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0deconv7_11213deconv7_11215*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_10449ϊ
dropout_15/PartitionedCallPartitionedCall(Deconv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_10723?
up_sampling2d_4/PartitionedCallPartitionedCall#dropout_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_10472¨
Deconv8/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0deconv8_11220deconv8_11222*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_10517 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_11225final_11227*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_10566
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^Conv5/StatefulPartitionedCall ^Deconv5/StatefulPartitionedCall ^Deconv6/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2>
Conv5/StatefulPartitionedCallConv5/StatefulPartitionedCall2B
Deconv5/StatefulPartitionedCallDeconv5/StatefulPartitionedCall2B
Deconv6/StatefulPartitionedCallDeconv6/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall:] Y
0
_output_shapes
:?????????x 
%
_user_specified_nameConv1_input
Ή
K
/__inference_up_sampling2d_4_layer_call_fn_12235

inputs
identityΫ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_10472
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
α°
ή
G__inference_sequential_1_layer_call_and_return_conditional_losses_11546

inputs>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:>
$conv2_conv2d_readvariableop_resource:3
%conv2_biasadd_readvariableop_resource:>
$conv3_conv2d_readvariableop_resource:3
%conv3_biasadd_readvariableop_resource:>
$conv4_conv2d_readvariableop_resource: 3
%conv4_biasadd_readvariableop_resource: >
$conv5_conv2d_readvariableop_resource:  3
%conv5_biasadd_readvariableop_resource: J
0deconv5_conv2d_transpose_readvariableop_resource:  5
'deconv5_biasadd_readvariableop_resource: J
0deconv6_conv2d_transpose_readvariableop_resource:  5
'deconv6_biasadd_readvariableop_resource: J
0deconv7_conv2d_transpose_readvariableop_resource: 5
'deconv7_biasadd_readvariableop_resource:J
0deconv8_conv2d_transpose_readvariableop_resource:5
'deconv8_biasadd_readvariableop_resource:H
.final_conv2d_transpose_readvariableop_resource:3
%final_biasadd_readvariableop_resource:
identity’Conv1/BiasAdd/ReadVariableOp’Conv1/Conv2D/ReadVariableOp’Conv2/BiasAdd/ReadVariableOp’Conv2/Conv2D/ReadVariableOp’Conv3/BiasAdd/ReadVariableOp’Conv3/Conv2D/ReadVariableOp’Conv4/BiasAdd/ReadVariableOp’Conv4/Conv2D/ReadVariableOp’Conv5/BiasAdd/ReadVariableOp’Conv5/Conv2D/ReadVariableOp’Deconv5/BiasAdd/ReadVariableOp’'Deconv5/conv2d_transpose/ReadVariableOp’Deconv6/BiasAdd/ReadVariableOp’'Deconv6/conv2d_transpose/ReadVariableOp’Deconv7/BiasAdd/ReadVariableOp’'Deconv7/conv2d_transpose/ReadVariableOp’Deconv8/BiasAdd/ReadVariableOp’'Deconv8/conv2d_transpose/ReadVariableOp’Final/BiasAdd/ReadVariableOp’%Final/conv2d_transpose/ReadVariableOp
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0§
Conv1/Conv2DConv2Dinputs#Conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????v*
paddingVALID*
strides
~
Conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Conv1/BiasAddBiasAddConv1/Conv2D:output:0$Conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ve

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????v
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ή
Conv2/Conv2DConv2DConv1/Relu:activations:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????t*
paddingVALID*
strides
~
Conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Conv2/BiasAddBiasAddConv2/Conv2D:output:0$Conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????te

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????t©
max_pooling2d_3/MaxPoolMaxPoolConv2/Relu:activations:0*/
_output_shapes
:?????????:N*
ksize
*
paddingVALID*
strides

Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ΐ
Conv3/Conv2DConv2D max_pooling2d_3/MaxPool:output:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8L*
paddingVALID*
strides
~
Conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Conv3/BiasAddBiasAddConv3/Conv2D:output:0$Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8Ld

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????8Ls
dropout_10/IdentityIdentityConv3/Relu:activations:0*
T0*/
_output_shapes
:?????????8L
Conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ό
Conv4/Conv2DConv2Ddropout_10/Identity:output:0#Conv4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J *
paddingVALID*
strides
~
Conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Conv4/BiasAddBiasAddConv4/Conv2D:output:0$Conv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J d

Conv4/ReluReluConv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????6J s
dropout_11/IdentityIdentityConv4/Relu:activations:0*
T0*/
_output_shapes
:?????????6J 
Conv5/Conv2D/ReadVariableOpReadVariableOp$conv5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ό
Conv5/Conv2DConv2Ddropout_11/Identity:output:0#Conv5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H *
paddingVALID*
strides
~
Conv5/BiasAdd/ReadVariableOpReadVariableOp%conv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Conv5/BiasAddBiasAddConv5/Conv2D:output:0$Conv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H d

Conv5/ReluReluConv5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????4H s
dropout_12/IdentityIdentityConv5/Relu:activations:0*
T0*/
_output_shapes
:?????????4H ­
max_pooling2d_4/MaxPoolMaxPooldropout_12/Identity:output:0*/
_output_shapes
:?????????$ *
ksize
*
paddingVALID*
strides
f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"   $   h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:Τ
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor max_pooling2d_4/MaxPool:output:0up_sampling2d_3/mul:z:0*
T0*/
_output_shapes
:?????????4H *
half_pixel_centers(z
Deconv5/ShapeShape=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:e
Deconv5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
Deconv5/strided_sliceStridedSliceDeconv5/Shape:output:0$Deconv5/strided_slice/stack:output:0&Deconv5/strided_slice/stack_1:output:0&Deconv5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :6Q
Deconv5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :JQ
Deconv5/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ±
Deconv5/stackPackDeconv5/strided_slice:output:0Deconv5/stack/1:output:0Deconv5/stack/2:output:0Deconv5/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv5/strided_slice_1StridedSliceDeconv5/stack:output:0&Deconv5/strided_slice_1/stack:output:0(Deconv5/strided_slice_1/stack_1:output:0(Deconv5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv5/conv2d_transpose/ReadVariableOpReadVariableOp0deconv5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0
Deconv5/conv2d_transposeConv2DBackpropInputDeconv5/stack:output:0/Deconv5/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????6J *
paddingVALID*
strides

Deconv5/BiasAdd/ReadVariableOpReadVariableOp'deconv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Deconv5/BiasAddBiasAdd!Deconv5/conv2d_transpose:output:0&Deconv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J h
Deconv5/ReluReluDeconv5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????6J u
dropout_13/IdentityIdentityDeconv5/Relu:activations:0*
T0*/
_output_shapes
:?????????6J Y
Deconv6/ShapeShapedropout_13/Identity:output:0*
T0*
_output_shapes
:e
Deconv6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
Deconv6/strided_sliceStridedSliceDeconv6/Shape:output:0$Deconv6/strided_slice/stack:output:0&Deconv6/strided_slice/stack_1:output:0&Deconv6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :8Q
Deconv6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :LQ
Deconv6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ±
Deconv6/stackPackDeconv6/strided_slice:output:0Deconv6/stack/1:output:0Deconv6/stack/2:output:0Deconv6/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv6/strided_slice_1StridedSliceDeconv6/stack:output:0&Deconv6/strided_slice_1/stack:output:0(Deconv6/strided_slice_1/stack_1:output:0(Deconv6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv6/conv2d_transpose/ReadVariableOpReadVariableOp0deconv6_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0ω
Deconv6/conv2d_transposeConv2DBackpropInputDeconv6/stack:output:0/Deconv6/conv2d_transpose/ReadVariableOp:value:0dropout_13/Identity:output:0*
T0*/
_output_shapes
:?????????8L *
paddingVALID*
strides

Deconv6/BiasAdd/ReadVariableOpReadVariableOp'deconv6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Deconv6/BiasAddBiasAdd!Deconv6/conv2d_transpose:output:0&Deconv6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8L h
Deconv6/ReluReluDeconv6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????8L u
dropout_14/IdentityIdentityDeconv6/Relu:activations:0*
T0*/
_output_shapes
:?????????8L Y
Deconv7/ShapeShapedropout_14/Identity:output:0*
T0*
_output_shapes
:e
Deconv7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
Deconv7/strided_sliceStridedSliceDeconv7/Shape:output:0$Deconv7/strided_slice/stack:output:0&Deconv7/strided_slice/stack_1:output:0&Deconv7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv7/stack/1Const*
_output_shapes
: *
dtype0*
value	B ::Q
Deconv7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :NQ
Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :±
Deconv7/stackPackDeconv7/strided_slice:output:0Deconv7/stack/1:output:0Deconv7/stack/2:output:0Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv7/strided_slice_1StridedSliceDeconv7/stack:output:0&Deconv7/strided_slice_1/stack:output:0(Deconv7/strided_slice_1/stack_1:output:0(Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp0deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0ω
Deconv7/conv2d_transposeConv2DBackpropInputDeconv7/stack:output:0/Deconv7/conv2d_transpose/ReadVariableOp:value:0dropout_14/Identity:output:0*
T0*/
_output_shapes
:?????????:N*
paddingVALID*
strides

Deconv7/BiasAdd/ReadVariableOpReadVariableOp'deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Deconv7/BiasAddBiasAdd!Deconv7/conv2d_transpose:output:0&Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:Nh
Deconv7/ReluReluDeconv7/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:Nu
dropout_15/IdentityIdentityDeconv7/Relu:activations:0*
T0*/
_output_shapes
:?????????:Nf
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB":   N   h
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:Ρ
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbordropout_15/Identity:output:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:?????????t*
half_pixel_centers(z
Deconv8/ShapeShape=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:e
Deconv8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
Deconv8/strided_sliceStridedSliceDeconv8/Shape:output:0$Deconv8/strided_slice/stack:output:0&Deconv8/strided_slice/stack_1:output:0&Deconv8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :vR
Deconv8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Q
Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :±
Deconv8/stackPackDeconv8/strided_slice:output:0Deconv8/stack/1:output:0Deconv8/stack/2:output:0Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv8/strided_slice_1StridedSliceDeconv8/stack:output:0&Deconv8/strided_slice_1/stack:output:0(Deconv8/strided_slice_1/stack_1:output:0(Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp0deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0
Deconv8/conv2d_transposeConv2DBackpropInputDeconv8/stack:output:0/Deconv8/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:?????????v*
paddingVALID*
strides

Deconv8/BiasAdd/ReadVariableOpReadVariableOp'deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
Deconv8/BiasAddBiasAdd!Deconv8/conv2d_transpose:output:0&Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????vi
Deconv8/ReluReluDeconv8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????vU
Final/ShapeShapeDeconv8/Relu:activations:0*
T0*
_output_shapes
:c
Final/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
Final/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
Final/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
Final/strided_sliceStridedSliceFinal/Shape:output:0"Final/strided_slice/stack:output:0$Final/strided_slice/stack_1:output:0$Final/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskO
Final/stack/1Const*
_output_shapes
: *
dtype0*
value	B :xP
Final/stack/2Const*
_output_shapes
: *
dtype0*
value
B : O
Final/stack/3Const*
_output_shapes
: *
dtype0*
value	B :§
Final/stackPackFinal/strided_slice:output:0Final/stack/1:output:0Final/stack/2:output:0Final/stack/3:output:0*
N*
T0*
_output_shapes
:e
Final/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Final/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:χ
Final/strided_slice_1StridedSliceFinal/stack:output:0$Final/strided_slice_1/stack:output:0&Final/strided_slice_1/stack_1:output:0&Final/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%Final/conv2d_transpose/ReadVariableOpReadVariableOp.final_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0ς
Final/conv2d_transposeConv2DBackpropInputFinal/stack:output:0-Final/conv2d_transpose/ReadVariableOp:value:0Deconv8/Relu:activations:0*
T0*0
_output_shapes
:?????????x *
paddingVALID*
strides
~
Final/BiasAdd/ReadVariableOpReadVariableOp%final_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Final/BiasAddBiasAddFinal/conv2d_transpose:output:0$Final/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????x k
Final/SigmoidSigmoidFinal/BiasAdd:output:0*
T0*0
_output_shapes
:?????????x i
IdentityIdentityFinal/Sigmoid:y:0^NoOp*
T0*0
_output_shapes
:?????????x κ
NoOpNoOp^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Conv4/BiasAdd/ReadVariableOp^Conv4/Conv2D/ReadVariableOp^Conv5/BiasAdd/ReadVariableOp^Conv5/Conv2D/ReadVariableOp^Deconv5/BiasAdd/ReadVariableOp(^Deconv5/conv2d_transpose/ReadVariableOp^Deconv6/BiasAdd/ReadVariableOp(^Deconv6/conv2d_transpose/ReadVariableOp^Deconv7/BiasAdd/ReadVariableOp(^Deconv7/conv2d_transpose/ReadVariableOp^Deconv8/BiasAdd/ReadVariableOp(^Deconv8/conv2d_transpose/ReadVariableOp^Final/BiasAdd/ReadVariableOp&^Final/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2<
Conv4/BiasAdd/ReadVariableOpConv4/BiasAdd/ReadVariableOp2:
Conv4/Conv2D/ReadVariableOpConv4/Conv2D/ReadVariableOp2<
Conv5/BiasAdd/ReadVariableOpConv5/BiasAdd/ReadVariableOp2:
Conv5/Conv2D/ReadVariableOpConv5/Conv2D/ReadVariableOp2@
Deconv5/BiasAdd/ReadVariableOpDeconv5/BiasAdd/ReadVariableOp2R
'Deconv5/conv2d_transpose/ReadVariableOp'Deconv5/conv2d_transpose/ReadVariableOp2@
Deconv6/BiasAdd/ReadVariableOpDeconv6/BiasAdd/ReadVariableOp2R
'Deconv6/conv2d_transpose/ReadVariableOp'Deconv6/conv2d_transpose/ReadVariableOp2@
Deconv7/BiasAdd/ReadVariableOpDeconv7/BiasAdd/ReadVariableOp2R
'Deconv7/conv2d_transpose/ReadVariableOp'Deconv7/conv2d_transpose/ReadVariableOp2@
Deconv8/BiasAdd/ReadVariableOpDeconv8/BiasAdd/ReadVariableOp2R
'Deconv8/conv2d_transpose/ReadVariableOp'Deconv8/conv2d_transpose/ReadVariableOp2<
Final/BiasAdd/ReadVariableOpFinal/BiasAdd/ReadVariableOp2N
%Final/conv2d_transpose/ReadVariableOp%Final/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????x 
 
_user_specified_nameinputs
ψ
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_10661

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????6J c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????6J "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????6J :W S
/
_output_shapes
:?????????6J 
 
_user_specified_nameinputs
ΰ
ή
G__inference_sequential_1_layer_call_and_return_conditional_losses_11743

inputs>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:>
$conv2_conv2d_readvariableop_resource:3
%conv2_biasadd_readvariableop_resource:>
$conv3_conv2d_readvariableop_resource:3
%conv3_biasadd_readvariableop_resource:>
$conv4_conv2d_readvariableop_resource: 3
%conv4_biasadd_readvariableop_resource: >
$conv5_conv2d_readvariableop_resource:  3
%conv5_biasadd_readvariableop_resource: J
0deconv5_conv2d_transpose_readvariableop_resource:  5
'deconv5_biasadd_readvariableop_resource: J
0deconv6_conv2d_transpose_readvariableop_resource:  5
'deconv6_biasadd_readvariableop_resource: J
0deconv7_conv2d_transpose_readvariableop_resource: 5
'deconv7_biasadd_readvariableop_resource:J
0deconv8_conv2d_transpose_readvariableop_resource:5
'deconv8_biasadd_readvariableop_resource:H
.final_conv2d_transpose_readvariableop_resource:3
%final_biasadd_readvariableop_resource:
identity’Conv1/BiasAdd/ReadVariableOp’Conv1/Conv2D/ReadVariableOp’Conv2/BiasAdd/ReadVariableOp’Conv2/Conv2D/ReadVariableOp’Conv3/BiasAdd/ReadVariableOp’Conv3/Conv2D/ReadVariableOp’Conv4/BiasAdd/ReadVariableOp’Conv4/Conv2D/ReadVariableOp’Conv5/BiasAdd/ReadVariableOp’Conv5/Conv2D/ReadVariableOp’Deconv5/BiasAdd/ReadVariableOp’'Deconv5/conv2d_transpose/ReadVariableOp’Deconv6/BiasAdd/ReadVariableOp’'Deconv6/conv2d_transpose/ReadVariableOp’Deconv7/BiasAdd/ReadVariableOp’'Deconv7/conv2d_transpose/ReadVariableOp’Deconv8/BiasAdd/ReadVariableOp’'Deconv8/conv2d_transpose/ReadVariableOp’Final/BiasAdd/ReadVariableOp’%Final/conv2d_transpose/ReadVariableOp
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0§
Conv1/Conv2DConv2Dinputs#Conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????v*
paddingVALID*
strides
~
Conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Conv1/BiasAddBiasAddConv1/Conv2D:output:0$Conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ve

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????v
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ή
Conv2/Conv2DConv2DConv1/Relu:activations:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????t*
paddingVALID*
strides
~
Conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Conv2/BiasAddBiasAddConv2/Conv2D:output:0$Conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????te

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????t©
max_pooling2d_3/MaxPoolMaxPoolConv2/Relu:activations:0*/
_output_shapes
:?????????:N*
ksize
*
paddingVALID*
strides

Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ΐ
Conv3/Conv2DConv2D max_pooling2d_3/MaxPool:output:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8L*
paddingVALID*
strides
~
Conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Conv3/BiasAddBiasAddConv3/Conv2D:output:0$Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8Ld

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????8L]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_10/dropout/MulMulConv3/Relu:activations:0!dropout_10/dropout/Const:output:0*
T0*/
_output_shapes
:?????????8L`
dropout_10/dropout/ShapeShapeConv3/Relu:activations:0*
T0*
_output_shapes
:ͺ
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????8L*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>Ο
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????8L
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????8L
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????8L
Conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ό
Conv4/Conv2DConv2Ddropout_10/dropout/Mul_1:z:0#Conv4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J *
paddingVALID*
strides
~
Conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Conv4/BiasAddBiasAddConv4/Conv2D:output:0$Conv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J d

Conv4/ReluReluConv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????6J ]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_11/dropout/MulMulConv4/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*/
_output_shapes
:?????????6J `
dropout_11/dropout/ShapeShapeConv4/Relu:activations:0*
T0*
_output_shapes
:ͺ
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????6J *
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>Ο
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????6J 
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????6J 
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????6J 
Conv5/Conv2D/ReadVariableOpReadVariableOp$conv5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ό
Conv5/Conv2DConv2Ddropout_11/dropout/Mul_1:z:0#Conv5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H *
paddingVALID*
strides
~
Conv5/BiasAdd/ReadVariableOpReadVariableOp%conv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Conv5/BiasAddBiasAddConv5/Conv2D:output:0$Conv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4H d

Conv5/ReluReluConv5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????4H ]
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_12/dropout/MulMulConv5/Relu:activations:0!dropout_12/dropout/Const:output:0*
T0*/
_output_shapes
:?????????4H `
dropout_12/dropout/ShapeShapeConv5/Relu:activations:0*
T0*
_output_shapes
:ͺ
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????4H *
dtype0f
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>Ο
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????4H 
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????4H 
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????4H ­
max_pooling2d_4/MaxPoolMaxPooldropout_12/dropout/Mul_1:z:0*/
_output_shapes
:?????????$ *
ksize
*
paddingVALID*
strides
f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"   $   h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:Τ
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor max_pooling2d_4/MaxPool:output:0up_sampling2d_3/mul:z:0*
T0*/
_output_shapes
:?????????4H *
half_pixel_centers(z
Deconv5/ShapeShape=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:e
Deconv5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
Deconv5/strided_sliceStridedSliceDeconv5/Shape:output:0$Deconv5/strided_slice/stack:output:0&Deconv5/strided_slice/stack_1:output:0&Deconv5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :6Q
Deconv5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :JQ
Deconv5/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ±
Deconv5/stackPackDeconv5/strided_slice:output:0Deconv5/stack/1:output:0Deconv5/stack/2:output:0Deconv5/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv5/strided_slice_1StridedSliceDeconv5/stack:output:0&Deconv5/strided_slice_1/stack:output:0(Deconv5/strided_slice_1/stack_1:output:0(Deconv5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv5/conv2d_transpose/ReadVariableOpReadVariableOp0deconv5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0
Deconv5/conv2d_transposeConv2DBackpropInputDeconv5/stack:output:0/Deconv5/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????6J *
paddingVALID*
strides

Deconv5/BiasAdd/ReadVariableOpReadVariableOp'deconv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Deconv5/BiasAddBiasAdd!Deconv5/conv2d_transpose:output:0&Deconv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J h
Deconv5/ReluReluDeconv5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????6J ]
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_13/dropout/MulMulDeconv5/Relu:activations:0!dropout_13/dropout/Const:output:0*
T0*/
_output_shapes
:?????????6J b
dropout_13/dropout/ShapeShapeDeconv5/Relu:activations:0*
T0*
_output_shapes
:ͺ
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????6J *
dtype0f
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>Ο
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????6J 
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????6J 
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????6J Y
Deconv6/ShapeShapedropout_13/dropout/Mul_1:z:0*
T0*
_output_shapes
:e
Deconv6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
Deconv6/strided_sliceStridedSliceDeconv6/Shape:output:0$Deconv6/strided_slice/stack:output:0&Deconv6/strided_slice/stack_1:output:0&Deconv6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :8Q
Deconv6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :LQ
Deconv6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ±
Deconv6/stackPackDeconv6/strided_slice:output:0Deconv6/stack/1:output:0Deconv6/stack/2:output:0Deconv6/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv6/strided_slice_1StridedSliceDeconv6/stack:output:0&Deconv6/strided_slice_1/stack:output:0(Deconv6/strided_slice_1/stack_1:output:0(Deconv6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv6/conv2d_transpose/ReadVariableOpReadVariableOp0deconv6_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0ω
Deconv6/conv2d_transposeConv2DBackpropInputDeconv6/stack:output:0/Deconv6/conv2d_transpose/ReadVariableOp:value:0dropout_13/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????8L *
paddingVALID*
strides

Deconv6/BiasAdd/ReadVariableOpReadVariableOp'deconv6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Deconv6/BiasAddBiasAdd!Deconv6/conv2d_transpose:output:0&Deconv6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8L h
Deconv6/ReluReluDeconv6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????8L ]
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_14/dropout/MulMulDeconv6/Relu:activations:0!dropout_14/dropout/Const:output:0*
T0*/
_output_shapes
:?????????8L b
dropout_14/dropout/ShapeShapeDeconv6/Relu:activations:0*
T0*
_output_shapes
:ͺ
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????8L *
dtype0f
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>Ο
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????8L 
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????8L 
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????8L Y
Deconv7/ShapeShapedropout_14/dropout/Mul_1:z:0*
T0*
_output_shapes
:e
Deconv7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
Deconv7/strided_sliceStridedSliceDeconv7/Shape:output:0$Deconv7/strided_slice/stack:output:0&Deconv7/strided_slice/stack_1:output:0&Deconv7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv7/stack/1Const*
_output_shapes
: *
dtype0*
value	B ::Q
Deconv7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :NQ
Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :±
Deconv7/stackPackDeconv7/strided_slice:output:0Deconv7/stack/1:output:0Deconv7/stack/2:output:0Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv7/strided_slice_1StridedSliceDeconv7/stack:output:0&Deconv7/strided_slice_1/stack:output:0(Deconv7/strided_slice_1/stack_1:output:0(Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp0deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0ω
Deconv7/conv2d_transposeConv2DBackpropInputDeconv7/stack:output:0/Deconv7/conv2d_transpose/ReadVariableOp:value:0dropout_14/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????:N*
paddingVALID*
strides

Deconv7/BiasAdd/ReadVariableOpReadVariableOp'deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Deconv7/BiasAddBiasAdd!Deconv7/conv2d_transpose:output:0&Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:Nh
Deconv7/ReluReluDeconv7/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:N]
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_15/dropout/MulMulDeconv7/Relu:activations:0!dropout_15/dropout/Const:output:0*
T0*/
_output_shapes
:?????????:Nb
dropout_15/dropout/ShapeShapeDeconv7/Relu:activations:0*
T0*
_output_shapes
:ͺ
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????:N*
dtype0f
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>Ο
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????:N
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????:N
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????:Nf
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB":   N   h
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:Ρ
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbordropout_15/dropout/Mul_1:z:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:?????????t*
half_pixel_centers(z
Deconv8/ShapeShape=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:e
Deconv8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
Deconv8/strided_sliceStridedSliceDeconv8/Shape:output:0$Deconv8/strided_slice/stack:output:0&Deconv8/strided_slice/stack_1:output:0&Deconv8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :vR
Deconv8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Q
Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :±
Deconv8/stackPackDeconv8/strided_slice:output:0Deconv8/stack/1:output:0Deconv8/stack/2:output:0Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv8/strided_slice_1StridedSliceDeconv8/stack:output:0&Deconv8/strided_slice_1/stack:output:0(Deconv8/strided_slice_1/stack_1:output:0(Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp0deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0
Deconv8/conv2d_transposeConv2DBackpropInputDeconv8/stack:output:0/Deconv8/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:?????????v*
paddingVALID*
strides

Deconv8/BiasAdd/ReadVariableOpReadVariableOp'deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
Deconv8/BiasAddBiasAdd!Deconv8/conv2d_transpose:output:0&Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????vi
Deconv8/ReluReluDeconv8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????vU
Final/ShapeShapeDeconv8/Relu:activations:0*
T0*
_output_shapes
:c
Final/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
Final/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
Final/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
Final/strided_sliceStridedSliceFinal/Shape:output:0"Final/strided_slice/stack:output:0$Final/strided_slice/stack_1:output:0$Final/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskO
Final/stack/1Const*
_output_shapes
: *
dtype0*
value	B :xP
Final/stack/2Const*
_output_shapes
: *
dtype0*
value
B : O
Final/stack/3Const*
_output_shapes
: *
dtype0*
value	B :§
Final/stackPackFinal/strided_slice:output:0Final/stack/1:output:0Final/stack/2:output:0Final/stack/3:output:0*
N*
T0*
_output_shapes
:e
Final/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Final/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:χ
Final/strided_slice_1StridedSliceFinal/stack:output:0$Final/strided_slice_1/stack:output:0&Final/strided_slice_1/stack_1:output:0&Final/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%Final/conv2d_transpose/ReadVariableOpReadVariableOp.final_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0ς
Final/conv2d_transposeConv2DBackpropInputFinal/stack:output:0-Final/conv2d_transpose/ReadVariableOp:value:0Deconv8/Relu:activations:0*
T0*0
_output_shapes
:?????????x *
paddingVALID*
strides
~
Final/BiasAdd/ReadVariableOpReadVariableOp%final_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Final/BiasAddBiasAddFinal/conv2d_transpose:output:0$Final/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????x k
Final/SigmoidSigmoidFinal/BiasAdd:output:0*
T0*0
_output_shapes
:?????????x i
IdentityIdentityFinal/Sigmoid:y:0^NoOp*
T0*0
_output_shapes
:?????????x κ
NoOpNoOp^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Conv4/BiasAdd/ReadVariableOp^Conv4/Conv2D/ReadVariableOp^Conv5/BiasAdd/ReadVariableOp^Conv5/Conv2D/ReadVariableOp^Deconv5/BiasAdd/ReadVariableOp(^Deconv5/conv2d_transpose/ReadVariableOp^Deconv6/BiasAdd/ReadVariableOp(^Deconv6/conv2d_transpose/ReadVariableOp^Deconv7/BiasAdd/ReadVariableOp(^Deconv7/conv2d_transpose/ReadVariableOp^Deconv8/BiasAdd/ReadVariableOp(^Deconv8/conv2d_transpose/ReadVariableOp^Final/BiasAdd/ReadVariableOp&^Final/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2<
Conv4/BiasAdd/ReadVariableOpConv4/BiasAdd/ReadVariableOp2:
Conv4/Conv2D/ReadVariableOpConv4/Conv2D/ReadVariableOp2<
Conv5/BiasAdd/ReadVariableOpConv5/BiasAdd/ReadVariableOp2:
Conv5/Conv2D/ReadVariableOpConv5/Conv2D/ReadVariableOp2@
Deconv5/BiasAdd/ReadVariableOpDeconv5/BiasAdd/ReadVariableOp2R
'Deconv5/conv2d_transpose/ReadVariableOp'Deconv5/conv2d_transpose/ReadVariableOp2@
Deconv6/BiasAdd/ReadVariableOpDeconv6/BiasAdd/ReadVariableOp2R
'Deconv6/conv2d_transpose/ReadVariableOp'Deconv6/conv2d_transpose/ReadVariableOp2@
Deconv7/BiasAdd/ReadVariableOpDeconv7/BiasAdd/ReadVariableOp2R
'Deconv7/conv2d_transpose/ReadVariableOp'Deconv7/conv2d_transpose/ReadVariableOp2@
Deconv8/BiasAdd/ReadVariableOpDeconv8/BiasAdd/ReadVariableOp2R
'Deconv8/conv2d_transpose/ReadVariableOp'Deconv8/conv2d_transpose/ReadVariableOp2<
Final/BiasAdd/ReadVariableOpFinal/BiasAdd/ReadVariableOp2N
%Final/conv2d_transpose/ReadVariableOp%Final/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????x 
 
_user_specified_nameinputs
ΐ
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_10723

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

ω
@__inference_Conv4_layer_call_and_return_conditional_losses_10650

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????6J i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????6J w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????8L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????8L
 
_user_specified_nameinputs

ω
@__inference_Conv4_layer_call_and_return_conditional_losses_11907

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????6J X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????6J i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????6J w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????8L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????8L
 
_user_specified_nameinputs
θ
Ψ
,__inference_sequential_1_layer_call_fn_11346

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:  

unknown_12: $

unknown_13: 

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity’StatefulPartitionedCallμ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_10737
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????x 
 
_user_specified_nameinputs
ΡZ
°

G__inference_sequential_1_layer_call_and_return_conditional_losses_11079

inputs%
conv1_11018:
conv1_11020:%
conv2_11023:
conv2_11025:%
conv3_11029:
conv3_11031:%
conv4_11035: 
conv4_11037: %
conv5_11041:  
conv5_11043: '
deconv5_11049:  
deconv5_11051: '
deconv6_11055:  
deconv6_11057: '
deconv7_11061: 
deconv7_11063:'
deconv8_11068:
deconv8_11070:%
final_11073:
final_11075:
identity’Conv1/StatefulPartitionedCall’Conv2/StatefulPartitionedCall’Conv3/StatefulPartitionedCall’Conv4/StatefulPartitionedCall’Conv5/StatefulPartitionedCall’Deconv5/StatefulPartitionedCall’Deconv6/StatefulPartitionedCall’Deconv7/StatefulPartitionedCall’Deconv8/StatefulPartitionedCall’Final/StatefulPartitionedCall’"dropout_10/StatefulPartitionedCall’"dropout_11/StatefulPartitionedCall’"dropout_12/StatefulPartitionedCall’"dropout_13/StatefulPartitionedCall’"dropout_14/StatefulPartitionedCall’"dropout_15/StatefulPartitionedCallν
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_11018conv1_11020*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????v*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_10591
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_11023conv2_11025*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????t*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_10608π
max_pooling2d_3/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_10275
Conv3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv3_11029conv3_11031*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_10626φ
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_10935
Conv4/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0conv4_11035conv4_11037*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_10650
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall&Conv4/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????6J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_10902
Conv5/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0conv5_11041conv5_11043*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_10674
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall&Conv5/StatefulPartitionedCall:output:0#^dropout_11/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_10869υ
max_pooling2d_4/PartitionedCallPartitionedCall+dropout_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_10287
up_sampling2d_3/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_10306¨
Deconv5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0deconv5_11049deconv5_11051*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_10351―
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall(Deconv5/StatefulPartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_10846«
Deconv6/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0deconv6_11055deconv6_11057*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_10400―
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall(Deconv6/StatefulPartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_10823«
Deconv7/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0deconv7_11061deconv7_11063*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_10449―
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall(Deconv7/StatefulPartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_10800
up_sampling2d_4/PartitionedCallPartitionedCall+dropout_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_10472¨
Deconv8/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_4/PartitionedCall:output:0deconv8_11068deconv8_11070*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_10517 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_11073final_11075*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_10566
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????μ
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^Conv5/StatefulPartitionedCall ^Deconv5/StatefulPartitionedCall ^Deconv6/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:?????????x : : : : : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2>
Conv5/StatefulPartitionedCallConv5/StatefulPartitionedCall2B
Deconv5/StatefulPartitionedCallDeconv5/StatefulPartitionedCall2B
Deconv6/StatefulPartitionedCallDeconv6/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall:X T
0
_output_shapes
:?????????x 
 
_user_specified_nameinputs
γ#

B__inference_Deconv6_layer_call_and_return_conditional_losses_12129

inputsB
(conv2d_transpose_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_11840

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
²

'__inference_Deconv7_layer_call_fn_12165

inputs!
unknown: 
	unknown_0:
identity’StatefulPartitionedCallτ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_10449
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ΰ#

@__inference_Final_layer_call_and_return_conditional_losses_10566

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Β
serving_default?
L
Conv1_input=
serving_default_Conv1_input:0?????????x B
Final9
StatefulPartitionedCall:0?????????x tensorflow/serving/predict:Ϊ
ψ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer_with_weights-8
layer-18
layer_with_weights-9
layer-19
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
»

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
»

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
Ό
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@_random_generator
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
Ό
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
Ό
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^_random_generator
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
»

mkernel
nbias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
Ό
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y_random_generator
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
Ώ

|kernel
}bias
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
 kernel
	‘bias
’	variables
£trainable_variables
€regularization_losses
₯	keras_api
¦__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
¨kernel
	©bias
ͺ	variables
«trainable_variables
¬regularization_losses
­	keras_api
?__call__
+―&call_and_return_all_conditional_losses"
_tf_keras_layer
τ
	°iter
±beta_1
²beta_2

³decay
΄learning_ratemͺm«&m¬'m­4m?5m―Cm°Dm±Rm²Sm³mm΄nm΅|mΆ}m·	mΈ	mΉ	 mΊ	‘m»	¨mΌ	©m½vΎvΏ&vΐ'vΑ4vΒ5vΓCvΔDvΕRvΖSvΗmvΘnvΙ|vΚ}vΛ	vΜ	vΝ	 vΞ	‘vΟ	¨vΠ	©vΡ"
	optimizer
Ό
0
1
&2
'3
44
55
C6
D7
R8
S9
m10
n11
|12
}13
14
15
 16
‘17
¨18
©19"
trackable_list_wrapper
Ό
0
1
&2
'3
44
55
C6
D7
R8
S9
m10
n11
|12
}13
14
15
 16
‘17
¨18
©19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ο
΅non_trainable_variables
Άlayers
·metrics
 Έlayer_regularization_losses
Ήlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ώ2ϋ
,__inference_sequential_1_layer_call_fn_10780
,__inference_sequential_1_layer_call_fn_11346
,__inference_sequential_1_layer_call_fn_11391
,__inference_sequential_1_layer_call_fn_11167ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
κ2η
G__inference_sequential_1_layer_call_and_return_conditional_losses_11546
G__inference_sequential_1_layer_call_and_return_conditional_losses_11743
G__inference_sequential_1_layer_call_and_return_conditional_losses_11231
G__inference_sequential_1_layer_call_and_return_conditional_losses_11295ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΟBΜ
 __inference__wrapped_model_10266Conv1_input"
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
annotationsͺ *
 
-
Ίserving_default"
signature_map
&:$2Conv1/kernel
:2
Conv1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
»non_trainable_variables
Όlayers
½metrics
 Ύlayer_regularization_losses
Ώlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Ο2Μ
%__inference_Conv1_layer_call_fn_11799’
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
annotationsͺ *
 
κ2η
@__inference_Conv1_layer_call_and_return_conditional_losses_11810’
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
annotationsͺ *
 
&:$2Conv2/kernel
:2
Conv2/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ΐnon_trainable_variables
Αlayers
Βmetrics
 Γlayer_regularization_losses
Δlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Ο2Μ
%__inference_Conv2_layer_call_fn_11819’
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
annotationsͺ *
 
κ2η
@__inference_Conv2_layer_call_and_return_conditional_losses_11830’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Εnon_trainable_variables
Ζlayers
Ηmetrics
 Θlayer_regularization_losses
Ιlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
Ω2Φ
/__inference_max_pooling2d_3_layer_call_fn_11835’
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
annotationsͺ *
 
τ2ρ
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_11840’
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
annotationsͺ *
 
&:$2Conv3/kernel
:2
Conv3/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Κnon_trainable_variables
Λlayers
Μmetrics
 Νlayer_regularization_losses
Ξlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
Ο2Μ
%__inference_Conv3_layer_call_fn_11849’
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
annotationsͺ *
 
κ2η
@__inference_Conv3_layer_call_and_return_conditional_losses_11860’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Οnon_trainable_variables
Πlayers
Ρmetrics
 ?layer_regularization_losses
Σlayer_metrics
<	variables
=trainable_variables
>regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_10_layer_call_fn_11865
*__inference_dropout_10_layer_call_fn_11870΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_10_layer_call_and_return_conditional_losses_11875
E__inference_dropout_10_layer_call_and_return_conditional_losses_11887΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
&:$ 2Conv4/kernel
: 2
Conv4/bias
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Τnon_trainable_variables
Υlayers
Φmetrics
 Χlayer_regularization_losses
Ψlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
Ο2Μ
%__inference_Conv4_layer_call_fn_11896’
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
annotationsͺ *
 
κ2η
@__inference_Conv4_layer_call_and_return_conditional_losses_11907’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ωnon_trainable_variables
Ϊlayers
Ϋmetrics
 άlayer_regularization_losses
έlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_11_layer_call_fn_11912
*__inference_dropout_11_layer_call_fn_11917΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_11_layer_call_and_return_conditional_losses_11922
E__inference_dropout_11_layer_call_and_return_conditional_losses_11934΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
&:$  2Conv5/kernel
: 2
Conv5/bias
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ήnon_trainable_variables
ίlayers
ΰmetrics
 αlayer_regularization_losses
βlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
Ο2Μ
%__inference_Conv5_layer_call_fn_11943’
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
annotationsͺ *
 
κ2η
@__inference_Conv5_layer_call_and_return_conditional_losses_11954’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
γnon_trainable_variables
δlayers
εmetrics
 ζlayer_regularization_losses
ηlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_12_layer_call_fn_11959
*__inference_dropout_12_layer_call_fn_11964΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_12_layer_call_and_return_conditional_losses_11969
E__inference_dropout_12_layer_call_and_return_conditional_losses_11981΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
θnon_trainable_variables
ιlayers
κmetrics
 λlayer_regularization_losses
μlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
Ω2Φ
/__inference_max_pooling2d_4_layer_call_fn_11986’
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
annotationsͺ *
 
τ2ρ
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_11991’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
νnon_trainable_variables
ξlayers
οmetrics
 πlayer_regularization_losses
ρlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
Ω2Φ
/__inference_up_sampling2d_3_layer_call_fn_11996’
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
annotationsͺ *
 
τ2ρ
J__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12008’
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
annotationsͺ *
 
(:&  2Deconv5/kernel
: 2Deconv5/bias
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ςnon_trainable_variables
σlayers
τmetrics
 υlayer_regularization_losses
φlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
Ρ2Ξ
'__inference_Deconv5_layer_call_fn_12017’
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
annotationsͺ *
 
μ2ι
B__inference_Deconv5_layer_call_and_return_conditional_losses_12055’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
χnon_trainable_variables
ψlayers
ωmetrics
 ϊlayer_regularization_losses
ϋlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_13_layer_call_fn_12060
*__inference_dropout_13_layer_call_fn_12065΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_13_layer_call_and_return_conditional_losses_12070
E__inference_dropout_13_layer_call_and_return_conditional_losses_12082΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
(:&  2Deconv6/kernel
: 2Deconv6/bias
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ά
όnon_trainable_variables
ύlayers
ώmetrics
 ?layer_regularization_losses
layer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ρ2Ξ
'__inference_Deconv6_layer_call_fn_12091’
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
annotationsͺ *
 
μ2ι
B__inference_Deconv6_layer_call_and_return_conditional_losses_12129’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_14_layer_call_fn_12134
*__inference_dropout_14_layer_call_fn_12139΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_14_layer_call_and_return_conditional_losses_12144
E__inference_dropout_14_layer_call_and_return_conditional_losses_12156΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
(:& 2Deconv7/kernel
:2Deconv7/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ρ2Ξ
'__inference_Deconv7_layer_call_fn_12165’
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
annotationsͺ *
 
μ2ι
B__inference_Deconv7_layer_call_and_return_conditional_losses_12203’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_15_layer_call_fn_12208
*__inference_dropout_15_layer_call_fn_12213΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_15_layer_call_and_return_conditional_losses_12218
E__inference_dropout_15_layer_call_and_return_conditional_losses_12230΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ω2Φ
/__inference_up_sampling2d_4_layer_call_fn_12235’
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
annotationsͺ *
 
τ2ρ
J__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_12247’
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
annotationsͺ *
 
(:&2Deconv8/kernel
:2Deconv8/bias
0
 0
‘1"
trackable_list_wrapper
0
 0
‘1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
’	variables
£trainable_variables
€regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
Ρ2Ξ
'__inference_Deconv8_layer_call_fn_12256’
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
annotationsͺ *
 
μ2ι
B__inference_Deconv8_layer_call_and_return_conditional_losses_12294’
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
annotationsͺ *
 
&:$2Final/kernel
:2
Final/bias
0
¨0
©1"
trackable_list_wrapper
0
¨0
©1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ͺ	variables
«trainable_variables
¬regularization_losses
?__call__
+―&call_and_return_all_conditional_losses
'―"call_and_return_conditional_losses"
_generic_user_object
Ο2Μ
%__inference_Final_layer_call_fn_12303’
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
annotationsͺ *
 
κ2η
@__inference_Final_layer_call_and_return_conditional_losses_12341’
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
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
Ά
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19"
trackable_list_wrapper
0
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΞBΛ
#__inference_signature_wrapper_11790Conv1_input"
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
annotationsͺ *
 
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
R

‘total

’count
£	variables
€	keras_api"
_tf_keras_metric
c

₯total

¦count
§
_fn_kwargs
¨	variables
©	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
‘0
’1"
trackable_list_wrapper
.
£	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
₯0
¦1"
trackable_list_wrapper
.
¨	variables"
_generic_user_object
+:)2Adam/Conv1/kernel/m
:2Adam/Conv1/bias/m
+:)2Adam/Conv2/kernel/m
:2Adam/Conv2/bias/m
+:)2Adam/Conv3/kernel/m
:2Adam/Conv3/bias/m
+:) 2Adam/Conv4/kernel/m
: 2Adam/Conv4/bias/m
+:)  2Adam/Conv5/kernel/m
: 2Adam/Conv5/bias/m
-:+  2Adam/Deconv5/kernel/m
: 2Adam/Deconv5/bias/m
-:+  2Adam/Deconv6/kernel/m
: 2Adam/Deconv6/bias/m
-:+ 2Adam/Deconv7/kernel/m
:2Adam/Deconv7/bias/m
-:+2Adam/Deconv8/kernel/m
:2Adam/Deconv8/bias/m
+:)2Adam/Final/kernel/m
:2Adam/Final/bias/m
+:)2Adam/Conv1/kernel/v
:2Adam/Conv1/bias/v
+:)2Adam/Conv2/kernel/v
:2Adam/Conv2/bias/v
+:)2Adam/Conv3/kernel/v
:2Adam/Conv3/bias/v
+:) 2Adam/Conv4/kernel/v
: 2Adam/Conv4/bias/v
+:)  2Adam/Conv5/kernel/v
: 2Adam/Conv5/bias/v
-:+  2Adam/Deconv5/kernel/v
: 2Adam/Deconv5/bias/v
-:+  2Adam/Deconv6/kernel/v
: 2Adam/Deconv6/bias/v
-:+ 2Adam/Deconv7/kernel/v
:2Adam/Deconv7/bias/v
-:+2Adam/Deconv8/kernel/v
:2Adam/Deconv8/bias/v
+:)2Adam/Final/kernel/v
:2Adam/Final/bias/v²
@__inference_Conv1_layer_call_and_return_conditional_losses_11810n8’5
.’+
)&
inputs?????????x 
ͺ ".’+
$!
0?????????v
 
%__inference_Conv1_layer_call_fn_11799a8’5
.’+
)&
inputs?????????x 
ͺ "!?????????v²
@__inference_Conv2_layer_call_and_return_conditional_losses_11830n&'8’5
.’+
)&
inputs?????????v
ͺ ".’+
$!
0?????????t
 
%__inference_Conv2_layer_call_fn_11819a&'8’5
.’+
)&
inputs?????????v
ͺ "!?????????t°
@__inference_Conv3_layer_call_and_return_conditional_losses_11860l457’4
-’*
(%
inputs?????????:N
ͺ "-’*
# 
0?????????8L
 
%__inference_Conv3_layer_call_fn_11849_457’4
-’*
(%
inputs?????????:N
ͺ " ?????????8L°
@__inference_Conv4_layer_call_and_return_conditional_losses_11907lCD7’4
-’*
(%
inputs?????????8L
ͺ "-’*
# 
0?????????6J 
 
%__inference_Conv4_layer_call_fn_11896_CD7’4
-’*
(%
inputs?????????8L
ͺ " ?????????6J °
@__inference_Conv5_layer_call_and_return_conditional_losses_11954lRS7’4
-’*
(%
inputs?????????6J 
ͺ "-’*
# 
0?????????4H 
 
%__inference_Conv5_layer_call_fn_11943_RS7’4
-’*
(%
inputs?????????6J 
ͺ " ?????????4H Χ
B__inference_Deconv5_layer_call_and_return_conditional_losses_12055mnI’F
?’<
:7
inputs+??????????????????????????? 
ͺ "?’<
52
0+??????????????????????????? 
 ―
'__inference_Deconv5_layer_call_fn_12017mnI’F
?’<
:7
inputs+??????????????????????????? 
ͺ "2/+??????????????????????????? Χ
B__inference_Deconv6_layer_call_and_return_conditional_losses_12129|}I’F
?’<
:7
inputs+??????????????????????????? 
ͺ "?’<
52
0+??????????????????????????? 
 ―
'__inference_Deconv6_layer_call_fn_12091|}I’F
?’<
:7
inputs+??????????????????????????? 
ͺ "2/+??????????????????????????? Ω
B__inference_Deconv7_layer_call_and_return_conditional_losses_12203I’F
?’<
:7
inputs+??????????????????????????? 
ͺ "?’<
52
0+???????????????????????????
 ±
'__inference_Deconv7_layer_call_fn_12165I’F
?’<
:7
inputs+??????????????????????????? 
ͺ "2/+???????????????????????????Ω
B__inference_Deconv8_layer_call_and_return_conditional_losses_12294 ‘I’F
?’<
:7
inputs+???????????????????????????
ͺ "?’<
52
0+???????????????????????????
 ±
'__inference_Deconv8_layer_call_fn_12256 ‘I’F
?’<
:7
inputs+???????????????????????????
ͺ "2/+???????????????????????????Χ
@__inference_Final_layer_call_and_return_conditional_losses_12341¨©I’F
?’<
:7
inputs+???????????????????????????
ͺ "?’<
52
0+???????????????????????????
 ―
%__inference_Final_layer_call_fn_12303¨©I’F
?’<
:7
inputs+???????????????????????????
ͺ "2/+???????????????????????????Έ
 __inference__wrapped_model_10266&'45CDRSmn|} ‘¨©=’:
3’0
.+
Conv1_input?????????x 
ͺ "6ͺ3
1
Final(%
Final?????????x ΅
E__inference_dropout_10_layer_call_and_return_conditional_losses_11875l;’8
1’.
(%
inputs?????????8L
p 
ͺ "-’*
# 
0?????????8L
 ΅
E__inference_dropout_10_layer_call_and_return_conditional_losses_11887l;’8
1’.
(%
inputs?????????8L
p
ͺ "-’*
# 
0?????????8L
 
*__inference_dropout_10_layer_call_fn_11865_;’8
1’.
(%
inputs?????????8L
p 
ͺ " ?????????8L
*__inference_dropout_10_layer_call_fn_11870_;’8
1’.
(%
inputs?????????8L
p
ͺ " ?????????8L΅
E__inference_dropout_11_layer_call_and_return_conditional_losses_11922l;’8
1’.
(%
inputs?????????6J 
p 
ͺ "-’*
# 
0?????????6J 
 ΅
E__inference_dropout_11_layer_call_and_return_conditional_losses_11934l;’8
1’.
(%
inputs?????????6J 
p
ͺ "-’*
# 
0?????????6J 
 
*__inference_dropout_11_layer_call_fn_11912_;’8
1’.
(%
inputs?????????6J 
p 
ͺ " ?????????6J 
*__inference_dropout_11_layer_call_fn_11917_;’8
1’.
(%
inputs?????????6J 
p
ͺ " ?????????6J ΅
E__inference_dropout_12_layer_call_and_return_conditional_losses_11969l;’8
1’.
(%
inputs?????????4H 
p 
ͺ "-’*
# 
0?????????4H 
 ΅
E__inference_dropout_12_layer_call_and_return_conditional_losses_11981l;’8
1’.
(%
inputs?????????4H 
p
ͺ "-’*
# 
0?????????4H 
 
*__inference_dropout_12_layer_call_fn_11959_;’8
1’.
(%
inputs?????????4H 
p 
ͺ " ?????????4H 
*__inference_dropout_12_layer_call_fn_11964_;’8
1’.
(%
inputs?????????4H 
p
ͺ " ?????????4H Ϊ
E__inference_dropout_13_layer_call_and_return_conditional_losses_12070M’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "?’<
52
0+??????????????????????????? 
 Ϊ
E__inference_dropout_13_layer_call_and_return_conditional_losses_12082M’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "?’<
52
0+??????????????????????????? 
 ²
*__inference_dropout_13_layer_call_fn_12060M’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "2/+??????????????????????????? ²
*__inference_dropout_13_layer_call_fn_12065M’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "2/+??????????????????????????? Ϊ
E__inference_dropout_14_layer_call_and_return_conditional_losses_12144M’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "?’<
52
0+??????????????????????????? 
 Ϊ
E__inference_dropout_14_layer_call_and_return_conditional_losses_12156M’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "?’<
52
0+??????????????????????????? 
 ²
*__inference_dropout_14_layer_call_fn_12134M’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "2/+??????????????????????????? ²
*__inference_dropout_14_layer_call_fn_12139M’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "2/+??????????????????????????? Ϊ
E__inference_dropout_15_layer_call_and_return_conditional_losses_12218M’J
C’@
:7
inputs+???????????????????????????
p 
ͺ "?’<
52
0+???????????????????????????
 Ϊ
E__inference_dropout_15_layer_call_and_return_conditional_losses_12230M’J
C’@
:7
inputs+???????????????????????????
p
ͺ "?’<
52
0+???????????????????????????
 ²
*__inference_dropout_15_layer_call_fn_12208M’J
C’@
:7
inputs+???????????????????????????
p 
ͺ "2/+???????????????????????????²
*__inference_dropout_15_layer_call_fn_12213M’J
C’@
:7
inputs+???????????????????????????
p
ͺ "2/+???????????????????????????ν
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_11840R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ε
/__inference_max_pooling2d_3_layer_call_fn_11835R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ν
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_11991R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ε
/__inference_max_pooling2d_4_layer_call_fn_11986R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????π
G__inference_sequential_1_layer_call_and_return_conditional_losses_11231€&'45CDRSmn|} ‘¨©E’B
;’8
.+
Conv1_input?????????x 
p 

 
ͺ "?’<
52
0+???????????????????????????
 π
G__inference_sequential_1_layer_call_and_return_conditional_losses_11295€&'45CDRSmn|} ‘¨©E’B
;’8
.+
Conv1_input?????????x 
p

 
ͺ "?’<
52
0+???????????????????????????
 Ϊ
G__inference_sequential_1_layer_call_and_return_conditional_losses_11546&'45CDRSmn|} ‘¨©@’=
6’3
)&
inputs?????????x 
p 

 
ͺ ".’+
$!
0?????????x 
 Ϊ
G__inference_sequential_1_layer_call_and_return_conditional_losses_11743&'45CDRSmn|} ‘¨©@’=
6’3
)&
inputs?????????x 
p

 
ͺ ".’+
$!
0?????????x 
 Θ
,__inference_sequential_1_layer_call_fn_10780&'45CDRSmn|} ‘¨©E’B
;’8
.+
Conv1_input?????????x 
p 

 
ͺ "2/+???????????????????????????Θ
,__inference_sequential_1_layer_call_fn_11167&'45CDRSmn|} ‘¨©E’B
;’8
.+
Conv1_input?????????x 
p

 
ͺ "2/+???????????????????????????Γ
,__inference_sequential_1_layer_call_fn_11346&'45CDRSmn|} ‘¨©@’=
6’3
)&
inputs?????????x 
p 

 
ͺ "2/+???????????????????????????Γ
,__inference_sequential_1_layer_call_fn_11391&'45CDRSmn|} ‘¨©@’=
6’3
)&
inputs?????????x 
p

 
ͺ "2/+???????????????????????????Κ
#__inference_signature_wrapper_11790’&'45CDRSmn|} ‘¨©L’I
’ 
Bͺ?
=
Conv1_input.+
Conv1_input?????????x "6ͺ3
1
Final(%
Final?????????x ν
J__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_12008R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ε
/__inference_up_sampling2d_3_layer_call_fn_11996R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ν
J__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_12247R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ε
/__inference_up_sampling2d_4_layer_call_fn_12235R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????