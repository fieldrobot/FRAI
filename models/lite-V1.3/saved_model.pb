°î
ï
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
À
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
ö
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
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758ÜÝ
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
Conv6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameConv6/kernel
u
 Conv6/kernel/Read/ReadVariableOpReadVariableOpConv6/kernel*&
_output_shapes
:@*
dtype0
l

Conv6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
Conv6/bias
e
Conv6/bias/Read/ReadVariableOpReadVariableOp
Conv6/bias*
_output_shapes
:@*
dtype0
|
Conv7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameConv7/kernel
u
 Conv7/kernel/Read/ReadVariableOpReadVariableOpConv7/kernel*&
_output_shapes
:@@*
dtype0
l

Conv7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
Conv7/bias
e
Conv7/bias/Read/ReadVariableOpReadVariableOp
Conv7/bias*
_output_shapes
:@*
dtype0

Deconv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameDeconv3/kernel
y
"Deconv3/kernel/Read/ReadVariableOpReadVariableOpDeconv3/kernel*&
_output_shapes
:@@*
dtype0
p
Deconv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameDeconv3/bias
i
 Deconv3/bias/Read/ReadVariableOpReadVariableOpDeconv3/bias*
_output_shapes
:@*
dtype0

Deconv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameDeconv4/kernel
y
"Deconv4/kernel/Read/ReadVariableOpReadVariableOpDeconv4/kernel*&
_output_shapes
:@@*
dtype0
p
Deconv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameDeconv4/bias
i
 Deconv4/bias/Read/ReadVariableOpReadVariableOpDeconv4/bias*
_output_shapes
:@*
dtype0

Deconv7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameDeconv7/kernel
y
"Deconv7/kernel/Read/ReadVariableOpReadVariableOpDeconv7/kernel*&
_output_shapes
:@*
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
Adam/Conv6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Conv6/kernel/m

'Adam/Conv6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv6/kernel/m*&
_output_shapes
:@*
dtype0
z
Adam/Conv6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv6/bias/m
s
%Adam/Conv6/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv6/bias/m*
_output_shapes
:@*
dtype0

Adam/Conv7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameAdam/Conv7/kernel/m

'Adam/Conv7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv7/kernel/m*&
_output_shapes
:@@*
dtype0
z
Adam/Conv7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv7/bias/m
s
%Adam/Conv7/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv7/bias/m*
_output_shapes
:@*
dtype0

Adam/Deconv3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*&
shared_nameAdam/Deconv3/kernel/m

)Adam/Deconv3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv3/kernel/m*&
_output_shapes
:@@*
dtype0
~
Adam/Deconv3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Deconv3/bias/m
w
'Adam/Deconv3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv3/bias/m*
_output_shapes
:@*
dtype0

Adam/Deconv4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*&
shared_nameAdam/Deconv4/kernel/m

)Adam/Deconv4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv4/kernel/m*&
_output_shapes
:@@*
dtype0
~
Adam/Deconv4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Deconv4/bias/m
w
'Adam/Deconv4/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv4/bias/m*
_output_shapes
:@*
dtype0

Adam/Deconv7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/Deconv7/kernel/m

)Adam/Deconv7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv7/kernel/m*&
_output_shapes
:@*
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
Adam/Conv6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Conv6/kernel/v

'Adam/Conv6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv6/kernel/v*&
_output_shapes
:@*
dtype0
z
Adam/Conv6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv6/bias/v
s
%Adam/Conv6/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv6/bias/v*
_output_shapes
:@*
dtype0

Adam/Conv7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameAdam/Conv7/kernel/v

'Adam/Conv7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv7/kernel/v*&
_output_shapes
:@@*
dtype0
z
Adam/Conv7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv7/bias/v
s
%Adam/Conv7/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv7/bias/v*
_output_shapes
:@*
dtype0

Adam/Deconv3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*&
shared_nameAdam/Deconv3/kernel/v

)Adam/Deconv3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv3/kernel/v*&
_output_shapes
:@@*
dtype0
~
Adam/Deconv3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Deconv3/bias/v
w
'Adam/Deconv3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv3/bias/v*
_output_shapes
:@*
dtype0

Adam/Deconv4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*&
shared_nameAdam/Deconv4/kernel/v

)Adam/Deconv4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv4/kernel/v*&
_output_shapes
:@@*
dtype0
~
Adam/Deconv4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Deconv4/bias/v
w
'Adam/Deconv4/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv4/bias/v*
_output_shapes
:@*
dtype0

Adam/Deconv7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/Deconv7/kernel/v

)Adam/Deconv7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv7/kernel/v*&
_output_shapes
:@*
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
Û¦
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¦
value¦B¦ Bþ¥
ú
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer-16
layer_with_weights-7
layer-17
layer-18
layer-19
layer_with_weights-8
layer-20
layer_with_weights-9
layer-21
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*
¦

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses*

0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
¦

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses*
¥
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses* 

E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
¦

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses*
¥
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W_random_generator
X__call__
*Y&call_and_return_all_conditional_losses* 
¦

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses*
¥
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f_random_generator
g__call__
*h&call_and_return_all_conditional_losses* 

i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses* 

o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 
¦

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses*
©
}	variables
~trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 
®
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¬
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
®
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses*
¬
¡	variables
¢trainable_variables
£regularization_losses
¤	keras_api
¥_random_generator
¦__call__
+§&call_and_return_all_conditional_losses* 

¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses* 
®
®kernel
	¯bias
°	variables
±trainable_variables
²regularization_losses
³	keras_api
´__call__
+µ&call_and_return_all_conditional_losses*
®
¶kernel
	·bias
¸	variables
¹trainable_variables
ºregularization_losses
»	keras_api
¼__call__
+½&call_and_return_all_conditional_losses*
é
	¾iter
¿beta_1
Àbeta_2

Ádecay
Âlearning_rate mÂ!mÃ(mÄ)mÅ6mÆ7mÇKmÈLmÉZmÊ[mËumÌvmÍ	mÎ	mÏ	mÐ	mÑ	®mÒ	¯mÓ	¶mÔ	·mÕ vÖ!v×(vØ)vÙ6vÚ7vÛKvÜLvÝZvÞ[vßuvàvvá	vâ	vã	vä	vå	®væ	¯vç	¶vè	·vé*
¢
 0
!1
(2
)3
64
75
K6
L7
Z8
[9
u10
v11
12
13
14
15
®16
¯17
¶18
·19*
¢
 0
!1
(2
)3
64
75
K6
L7
Z8
[9
u10
v11
12
13
14
15
®16
¯17
¶18
·19*
* 
µ
Ãnon_trainable_variables
Älayers
Åmetrics
 Ælayer_regularization_losses
Çlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Èserving_default* 
\V
VARIABLE_VALUEConv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*

 0
!1*
* 

Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEConv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

(0
)1*

(0
)1*
* 

Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEConv3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 

Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ýnon_trainable_variables
Þlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEConv6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
* 

çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 
* 
* 
* 
\V
VARIABLE_VALUEConv7/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv7/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

Z0
[1*

Z0
[1*
* 

ñnon_trainable_variables
òlayers
ómetrics
 ôlayer_regularization_losses
õlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

önon_trainable_variables
÷layers
ømetrics
 ùlayer_regularization_losses
úlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ûnon_trainable_variables
ülayers
ýmetrics
 þlayer_regularization_losses
ÿlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEDeconv3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

u0
v1*

u0
v1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEDeconv4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEDeconv7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses*
* 
* 
* 
* 
* 

£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
¡	variables
¢trainable_variables
£regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEDeconv8/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv8/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

®0
¯1*

®0
¯1*
* 

­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
°	variables
±trainable_variables
²regularization_losses
´__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEFinal/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Final/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

¶0
·1*

¶0
·1*
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
¸	variables
¹trainable_variables
ºregularization_losses
¼__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses*
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
ª
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
19
20
21*

·0
¸1*
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

¹total

ºcount
»	variables
¼	keras_api*
M

½total

¾count
¿
_fn_kwargs
À	variables
Á	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

¹0
º1*

»	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

½0
¾1*

À	variables*
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
VARIABLE_VALUEAdam/Conv6/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv6/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv7/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv7/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv4/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv4/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/Conv6/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv6/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Conv7/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv7/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv4/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv4/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
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
:ÿÿÿÿÿÿÿÿÿx *
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿx 
ý
StatefulPartitionedCallStatefulPartitionedCallserving_default_Conv1_inputConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv6/kernel
Conv6/biasConv7/kernel
Conv7/biasDeconv3/kernelDeconv3/biasDeconv4/kernelDeconv4/biasDeconv7/kernelDeconv7/biasDeconv8/kernelDeconv8/biasFinal/kernel
Final/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx *6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_91488
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ÿ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename Conv1/kernel/Read/ReadVariableOpConv1/bias/Read/ReadVariableOp Conv2/kernel/Read/ReadVariableOpConv2/bias/Read/ReadVariableOp Conv3/kernel/Read/ReadVariableOpConv3/bias/Read/ReadVariableOp Conv6/kernel/Read/ReadVariableOpConv6/bias/Read/ReadVariableOp Conv7/kernel/Read/ReadVariableOpConv7/bias/Read/ReadVariableOp"Deconv3/kernel/Read/ReadVariableOp Deconv3/bias/Read/ReadVariableOp"Deconv4/kernel/Read/ReadVariableOp Deconv4/bias/Read/ReadVariableOp"Deconv7/kernel/Read/ReadVariableOp Deconv7/bias/Read/ReadVariableOp"Deconv8/kernel/Read/ReadVariableOp Deconv8/bias/Read/ReadVariableOp Final/kernel/Read/ReadVariableOpFinal/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/Conv1/kernel/m/Read/ReadVariableOp%Adam/Conv1/bias/m/Read/ReadVariableOp'Adam/Conv2/kernel/m/Read/ReadVariableOp%Adam/Conv2/bias/m/Read/ReadVariableOp'Adam/Conv3/kernel/m/Read/ReadVariableOp%Adam/Conv3/bias/m/Read/ReadVariableOp'Adam/Conv6/kernel/m/Read/ReadVariableOp%Adam/Conv6/bias/m/Read/ReadVariableOp'Adam/Conv7/kernel/m/Read/ReadVariableOp%Adam/Conv7/bias/m/Read/ReadVariableOp)Adam/Deconv3/kernel/m/Read/ReadVariableOp'Adam/Deconv3/bias/m/Read/ReadVariableOp)Adam/Deconv4/kernel/m/Read/ReadVariableOp'Adam/Deconv4/bias/m/Read/ReadVariableOp)Adam/Deconv7/kernel/m/Read/ReadVariableOp'Adam/Deconv7/bias/m/Read/ReadVariableOp)Adam/Deconv8/kernel/m/Read/ReadVariableOp'Adam/Deconv8/bias/m/Read/ReadVariableOp'Adam/Final/kernel/m/Read/ReadVariableOp%Adam/Final/bias/m/Read/ReadVariableOp'Adam/Conv1/kernel/v/Read/ReadVariableOp%Adam/Conv1/bias/v/Read/ReadVariableOp'Adam/Conv2/kernel/v/Read/ReadVariableOp%Adam/Conv2/bias/v/Read/ReadVariableOp'Adam/Conv3/kernel/v/Read/ReadVariableOp%Adam/Conv3/bias/v/Read/ReadVariableOp'Adam/Conv6/kernel/v/Read/ReadVariableOp%Adam/Conv6/bias/v/Read/ReadVariableOp'Adam/Conv7/kernel/v/Read/ReadVariableOp%Adam/Conv7/bias/v/Read/ReadVariableOp)Adam/Deconv3/kernel/v/Read/ReadVariableOp'Adam/Deconv3/bias/v/Read/ReadVariableOp)Adam/Deconv4/kernel/v/Read/ReadVariableOp'Adam/Deconv4/bias/v/Read/ReadVariableOp)Adam/Deconv7/kernel/v/Read/ReadVariableOp'Adam/Deconv7/bias/v/Read/ReadVariableOp)Adam/Deconv8/kernel/v/Read/ReadVariableOp'Adam/Deconv8/bias/v/Read/ReadVariableOp'Adam/Final/kernel/v/Read/ReadVariableOp%Adam/Final/bias/v/Read/ReadVariableOpConst*R
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
__inference__traced_save_92296

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv6/kernel
Conv6/biasConv7/kernel
Conv7/biasDeconv3/kernelDeconv3/biasDeconv4/kernelDeconv4/biasDeconv7/kernelDeconv7/biasDeconv8/kernelDeconv8/biasFinal/kernel
Final/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Conv1/kernel/mAdam/Conv1/bias/mAdam/Conv2/kernel/mAdam/Conv2/bias/mAdam/Conv3/kernel/mAdam/Conv3/bias/mAdam/Conv6/kernel/mAdam/Conv6/bias/mAdam/Conv7/kernel/mAdam/Conv7/bias/mAdam/Deconv3/kernel/mAdam/Deconv3/bias/mAdam/Deconv4/kernel/mAdam/Deconv4/bias/mAdam/Deconv7/kernel/mAdam/Deconv7/bias/mAdam/Deconv8/kernel/mAdam/Deconv8/bias/mAdam/Final/kernel/mAdam/Final/bias/mAdam/Conv1/kernel/vAdam/Conv1/bias/vAdam/Conv2/kernel/vAdam/Conv2/bias/vAdam/Conv3/kernel/vAdam/Conv3/bias/vAdam/Conv6/kernel/vAdam/Conv6/bias/vAdam/Conv7/kernel/vAdam/Conv7/bias/vAdam/Deconv3/kernel/vAdam/Deconv3/bias/vAdam/Deconv4/kernel/vAdam/Deconv4/bias/vAdam/Deconv7/kernel/vAdam/Deconv7/bias/vAdam/Deconv8/kernel/vAdam/Deconv8/bias/vAdam/Final/kernel/vAdam/Final/bias/v*Q
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
!__inference__traced_restore_92513Ô
ã#

B__inference_Deconv4_layer_call_and_return_conditional_losses_91837

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
value	B :@y
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¤
Ô
#__inference_signature_wrapper_91488
conv1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCall¹
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
:ÿÿÿÿÿÿÿÿÿx *6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_89915x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input
Á
d
F__inference_dropout_104_layer_call_and_return_conditional_losses_90380

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ã#

B__inference_Deconv4_layer_call_and_return_conditional_losses_90061

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
value	B :@y
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

G
+__inference_dropout_104_layer_call_fn_91768

inputs
identityÎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_104_layer_call_and_return_conditional_losses_90380z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Æ
e
F__inference_dropout_105_layer_call_and_return_conditional_losses_91864

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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>À
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Á
d
F__inference_dropout_105_layer_call_and_return_conditional_losses_91852

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ã#

B__inference_Deconv8_layer_call_and_return_conditional_losses_90197

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

%__inference_Final_layer_call_fn_92028

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_90246
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
L
0__inference_max_pooling2d_49_layer_call_fn_91590

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_89936
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±W
Ó
H__inference_sequential_23_layer_call_and_return_conditional_losses_90419

inputs%
conv1_90272:
conv1_90274:%
conv2_90289:
conv2_90291:%
conv3_90307:
conv3_90309:%
conv6_90332:@
conv6_90334:@%
conv7_90356:@@
conv7_90358:@'
deconv3_90370:@@
deconv3_90372:@'
deconv4_90382:@@
deconv4_90384:@'
deconv7_90395:@
deconv7_90397:'
deconv8_90408:
deconv8_90410:%
final_90413:
final_90415:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv6/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/StatefulPartitionedCall¢Deconv4/StatefulPartitionedCall¢Deconv7/StatefulPartitionedCall¢Deconv8/StatefulPartitionedCall¢Final/StatefulPartitionedCallí
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_90272conv1_90274*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_90271
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_90289conv2_90291*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_90288ò
 max_pooling2d_48/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_89924
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv3_90307conv3_90309*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_90306è
dropout_101/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_101_layer_call_and_return_conditional_losses_90317ð
 max_pooling2d_49/PartitionedCallPartitionedCall$dropout_101/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_89936
Conv6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv6_90332conv6_90334*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_90331è
dropout_102/PartitionedCallPartitionedCall&Conv6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_102_layer_call_and_return_conditional_losses_90342
Conv7/StatefulPartitionedCallStatefulPartitionedCall$dropout_102/PartitionedCall:output:0conv7_90356conv7_90358*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_90355è
dropout_103/PartitionedCallPartitionedCall&Conv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_103_layer_call_and_return_conditional_losses_90366ð
 max_pooling2d_50/PartitionedCallPartitionedCall$dropout_103/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_89948
 up_sampling2d_45/PartitionedCallPartitionedCall)max_pooling2d_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_89967©
Deconv3/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_45/PartitionedCall:output:0deconv3_90370deconv3_90372*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_90012ü
dropout_104/PartitionedCallPartitionedCall(Deconv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_104_layer_call_and_return_conditional_losses_90380¤
Deconv4/StatefulPartitionedCallStatefulPartitionedCall$dropout_104/PartitionedCall:output:0deconv4_90382deconv4_90384*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_90061ü
dropout_105/PartitionedCallPartitionedCall(Deconv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_105_layer_call_and_return_conditional_losses_90392
 up_sampling2d_46/PartitionedCallPartitionedCall$dropout_105/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_90084©
Deconv7/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_46/PartitionedCall:output:0deconv7_90395deconv7_90397*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_90129ü
dropout_106/PartitionedCallPartitionedCall(Deconv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_106_layer_call_and_return_conditional_losses_90405
 up_sampling2d_47/PartitionedCallPartitionedCall$dropout_106/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_47_layer_call_and_return_conditional_losses_90152©
Deconv8/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_47/PartitionedCall:output:0deconv8_90408deconv8_90410*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_90197 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_90413final_90415*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_90246
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv6/StatefulPartitionedCall^Conv7/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv4/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv6/StatefulPartitionedCallConv6/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv4/StatefulPartitionedCallDeconv4/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
Æ
e
F__inference_dropout_105_layer_call_and_return_conditional_losses_90505

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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>À
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

ù
@__inference_Conv6_layer_call_and_return_conditional_losses_90331

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs

ù
@__inference_Conv2_layer_call_and_return_conditional_losses_90288

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*
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
:ÿÿÿÿÿÿÿÿÿtY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿtj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿtw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿv: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
 
_user_specified_nameinputs
Á
d
F__inference_dropout_104_layer_call_and_return_conditional_losses_91778

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ê
Å*
!__inference__traced_restore_92513
file_prefix7
assignvariableop_conv1_kernel:+
assignvariableop_1_conv1_bias:9
assignvariableop_2_conv2_kernel:+
assignvariableop_3_conv2_bias:9
assignvariableop_4_conv3_kernel:+
assignvariableop_5_conv3_bias:9
assignvariableop_6_conv6_kernel:@+
assignvariableop_7_conv6_bias:@9
assignvariableop_8_conv7_kernel:@@+
assignvariableop_9_conv7_bias:@<
"assignvariableop_10_deconv3_kernel:@@.
 assignvariableop_11_deconv3_bias:@<
"assignvariableop_12_deconv4_kernel:@@.
 assignvariableop_13_deconv4_bias:@<
"assignvariableop_14_deconv7_kernel:@.
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
'assignvariableop_35_adam_conv6_kernel_m:@3
%assignvariableop_36_adam_conv6_bias_m:@A
'assignvariableop_37_adam_conv7_kernel_m:@@3
%assignvariableop_38_adam_conv7_bias_m:@C
)assignvariableop_39_adam_deconv3_kernel_m:@@5
'assignvariableop_40_adam_deconv3_bias_m:@C
)assignvariableop_41_adam_deconv4_kernel_m:@@5
'assignvariableop_42_adam_deconv4_bias_m:@C
)assignvariableop_43_adam_deconv7_kernel_m:@5
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
'assignvariableop_55_adam_conv6_kernel_v:@3
%assignvariableop_56_adam_conv6_bias_v:@A
'assignvariableop_57_adam_conv7_kernel_v:@@3
%assignvariableop_58_adam_conv7_bias_v:@C
)assignvariableop_59_adam_deconv3_kernel_v:@@5
'assignvariableop_60_adam_deconv3_bias_v:@C
)assignvariableop_61_adam_deconv4_kernel_v:@@5
'assignvariableop_62_adam_deconv4_bias_v:@C
)assignvariableop_63_adam_deconv7_kernel_v:@5
'assignvariableop_64_adam_deconv7_bias_v:C
)assignvariableop_65_adam_deconv8_kernel_v:5
'assignvariableop_66_adam_deconv8_bias_v:A
'assignvariableop_67_adam_final_kernel_v:3
%assignvariableop_68_adam_final_bias_v:
identity_70¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*´&
valueª&B§&FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÿ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*¡
valueBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ÿ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*®
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
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv6_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_conv7_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_conv7_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_deconv3_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_deconv3_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_deconv4_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_deconv4_biasIdentity_13:output:0"/device:CPU:0*
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
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_conv6_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp%assignvariableop_36_adam_conv6_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_conv7_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp%assignvariableop_38_adam_conv7_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_deconv3_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_deconv3_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_deconv4_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_deconv4_bias_mIdentity_42:output:0"/device:CPU:0*
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
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_conv6_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_conv6_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_conv7_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_conv7_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_deconv3_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_deconv3_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_deconv4_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_deconv4_bias_vIdentity_62:output:0"/device:CPU:0*
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
: ª
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_70Identity_70:output:0*¡
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
Æ
e
F__inference_dropout_104_layer_call_and_return_conditional_losses_90528

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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>À
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
´

e
F__inference_dropout_102_layer_call_and_return_conditional_losses_90584

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
:ÿÿÿÿÿÿÿÿÿ$@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
 
_user_specified_nameinputs

ù
@__inference_Conv3_layer_call_and_return_conditional_losses_91558

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*
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
:ÿÿÿÿÿÿÿÿÿ8LX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Li
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Lw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ:N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N
 
_user_specified_nameinputs

ù
@__inference_Conv1_layer_call_and_return_conditional_losses_91508

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*
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
:ÿÿÿÿÿÿÿÿÿvY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿvj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿvw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿx : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs

ù
@__inference_Conv1_layer_call_and_return_conditional_losses_90271

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*
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
:ÿÿÿÿÿÿÿÿÿvY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿvj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿvw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿx : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
é

%__inference_Conv2_layer_call_fn_91517

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_90288x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿv: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
 
_user_specified_nameinputs
´

e
F__inference_dropout_101_layer_call_and_return_conditional_losses_91585

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
:ÿÿÿÿÿÿÿÿÿ8LC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Lw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Lq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8La
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ8L:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
 
_user_specified_nameinputs
Á
d
F__inference_dropout_106_layer_call_and_return_conditional_losses_90405

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
åâ
ì
 __inference__wrapped_model_89915
conv1_inputL
2sequential_23_conv1_conv2d_readvariableop_resource:A
3sequential_23_conv1_biasadd_readvariableop_resource:L
2sequential_23_conv2_conv2d_readvariableop_resource:A
3sequential_23_conv2_biasadd_readvariableop_resource:L
2sequential_23_conv3_conv2d_readvariableop_resource:A
3sequential_23_conv3_biasadd_readvariableop_resource:L
2sequential_23_conv6_conv2d_readvariableop_resource:@A
3sequential_23_conv6_biasadd_readvariableop_resource:@L
2sequential_23_conv7_conv2d_readvariableop_resource:@@A
3sequential_23_conv7_biasadd_readvariableop_resource:@X
>sequential_23_deconv3_conv2d_transpose_readvariableop_resource:@@C
5sequential_23_deconv3_biasadd_readvariableop_resource:@X
>sequential_23_deconv4_conv2d_transpose_readvariableop_resource:@@C
5sequential_23_deconv4_biasadd_readvariableop_resource:@X
>sequential_23_deconv7_conv2d_transpose_readvariableop_resource:@C
5sequential_23_deconv7_biasadd_readvariableop_resource:X
>sequential_23_deconv8_conv2d_transpose_readvariableop_resource:C
5sequential_23_deconv8_biasadd_readvariableop_resource:V
<sequential_23_final_conv2d_transpose_readvariableop_resource:A
3sequential_23_final_biasadd_readvariableop_resource:
identity¢*sequential_23/Conv1/BiasAdd/ReadVariableOp¢)sequential_23/Conv1/Conv2D/ReadVariableOp¢*sequential_23/Conv2/BiasAdd/ReadVariableOp¢)sequential_23/Conv2/Conv2D/ReadVariableOp¢*sequential_23/Conv3/BiasAdd/ReadVariableOp¢)sequential_23/Conv3/Conv2D/ReadVariableOp¢*sequential_23/Conv6/BiasAdd/ReadVariableOp¢)sequential_23/Conv6/Conv2D/ReadVariableOp¢*sequential_23/Conv7/BiasAdd/ReadVariableOp¢)sequential_23/Conv7/Conv2D/ReadVariableOp¢,sequential_23/Deconv3/BiasAdd/ReadVariableOp¢5sequential_23/Deconv3/conv2d_transpose/ReadVariableOp¢,sequential_23/Deconv4/BiasAdd/ReadVariableOp¢5sequential_23/Deconv4/conv2d_transpose/ReadVariableOp¢,sequential_23/Deconv7/BiasAdd/ReadVariableOp¢5sequential_23/Deconv7/conv2d_transpose/ReadVariableOp¢,sequential_23/Deconv8/BiasAdd/ReadVariableOp¢5sequential_23/Deconv8/conv2d_transpose/ReadVariableOp¢*sequential_23/Final/BiasAdd/ReadVariableOp¢3sequential_23/Final/conv2d_transpose/ReadVariableOp¤
)sequential_23/Conv1/Conv2D/ReadVariableOpReadVariableOp2sequential_23_conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0È
sequential_23/Conv1/Conv2DConv2Dconv1_input1sequential_23/Conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*
paddingVALID*
strides

*sequential_23/Conv1/BiasAdd/ReadVariableOpReadVariableOp3sequential_23_conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0º
sequential_23/Conv1/BiasAddBiasAdd#sequential_23/Conv1/Conv2D:output:02sequential_23/Conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
sequential_23/Conv1/ReluRelu$sequential_23/Conv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv¤
)sequential_23/Conv2/Conv2D/ReadVariableOpReadVariableOp2sequential_23_conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ã
sequential_23/Conv2/Conv2DConv2D&sequential_23/Conv1/Relu:activations:01sequential_23/Conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*
paddingVALID*
strides

*sequential_23/Conv2/BiasAdd/ReadVariableOpReadVariableOp3sequential_23_conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0º
sequential_23/Conv2/BiasAddBiasAdd#sequential_23/Conv2/Conv2D:output:02sequential_23/Conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
sequential_23/Conv2/ReluRelu$sequential_23/Conv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿtÆ
&sequential_23/max_pooling2d_48/MaxPoolMaxPool&sequential_23/Conv2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N*
ksize
*
paddingVALID*
strides
¤
)sequential_23/Conv3/Conv2D/ReadVariableOpReadVariableOp2sequential_23_conv3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ë
sequential_23/Conv3/Conv2DConv2D/sequential_23/max_pooling2d_48/MaxPool:output:01sequential_23/Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*
paddingVALID*
strides

*sequential_23/Conv3/BiasAdd/ReadVariableOpReadVariableOp3sequential_23_conv3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
sequential_23/Conv3/BiasAddBiasAdd#sequential_23/Conv3/Conv2D:output:02sequential_23/Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
sequential_23/Conv3/ReluRelu$sequential_23/Conv3/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
"sequential_23/dropout_101/IdentityIdentity&sequential_23/Conv3/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8LË
&sequential_23/max_pooling2d_49/MaxPoolMaxPool+sequential_23/dropout_101/Identity:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*
ksize
*
paddingVALID*
strides
¤
)sequential_23/Conv6/Conv2D/ReadVariableOpReadVariableOp2sequential_23_conv6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ë
sequential_23/Conv6/Conv2DConv2D/sequential_23/max_pooling2d_49/MaxPool:output:01sequential_23/Conv6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
paddingVALID*
strides

*sequential_23/Conv6/BiasAdd/ReadVariableOpReadVariableOp3sequential_23_conv6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¹
sequential_23/Conv6/BiasAddBiasAdd#sequential_23/Conv6/Conv2D:output:02sequential_23/Conv6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
sequential_23/Conv6/ReluRelu$sequential_23/Conv6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
"sequential_23/dropout_102/IdentityIdentity&sequential_23/Conv6/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@¤
)sequential_23/Conv7/Conv2D/ReadVariableOpReadVariableOp2sequential_23_conv7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ç
sequential_23/Conv7/Conv2DConv2D+sequential_23/dropout_102/Identity:output:01sequential_23/Conv7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
paddingVALID*
strides

*sequential_23/Conv7/BiasAdd/ReadVariableOpReadVariableOp3sequential_23_conv7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¹
sequential_23/Conv7/BiasAddBiasAdd#sequential_23/Conv7/Conv2D:output:02sequential_23/Conv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
sequential_23/Conv7/ReluRelu$sequential_23/Conv7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
"sequential_23/dropout_103/IdentityIdentity&sequential_23/Conv7/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@Ë
&sequential_23/max_pooling2d_50/MaxPoolMaxPool+sequential_23/dropout_103/Identity:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
u
$sequential_23/up_sampling2d_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_23/up_sampling2d_45/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_23/up_sampling2d_45/mulMul-sequential_23/up_sampling2d_45/Const:output:0/sequential_23/up_sampling2d_45/Const_1:output:0*
T0*
_output_shapes
:
;sequential_23/up_sampling2d_45/resize/ResizeNearestNeighborResizeNearestNeighbor/sequential_23/max_pooling2d_50/MaxPool:output:0&sequential_23/up_sampling2d_45/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
half_pixel_centers(
sequential_23/Deconv3/ShapeShapeLsequential_23/up_sampling2d_45/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:s
)sequential_23/Deconv3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/Deconv3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/Deconv3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_23/Deconv3/strided_sliceStridedSlice$sequential_23/Deconv3/Shape:output:02sequential_23/Deconv3/strided_slice/stack:output:04sequential_23/Deconv3/strided_slice/stack_1:output:04sequential_23/Deconv3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
sequential_23/Deconv3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :_
sequential_23/Deconv3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :$_
sequential_23/Deconv3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@÷
sequential_23/Deconv3/stackPack,sequential_23/Deconv3/strided_slice:output:0&sequential_23/Deconv3/stack/1:output:0&sequential_23/Deconv3/stack/2:output:0&sequential_23/Deconv3/stack/3:output:0*
N*
T0*
_output_shapes
:u
+sequential_23/Deconv3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/Deconv3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/Deconv3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_23/Deconv3/strided_slice_1StridedSlice$sequential_23/Deconv3/stack:output:04sequential_23/Deconv3/strided_slice_1/stack:output:06sequential_23/Deconv3/strided_slice_1/stack_1:output:06sequential_23/Deconv3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¼
5sequential_23/Deconv3/conv2d_transpose/ReadVariableOpReadVariableOp>sequential_23_deconv3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ó
&sequential_23/Deconv3/conv2d_transposeConv2DBackpropInput$sequential_23/Deconv3/stack:output:0=sequential_23/Deconv3/conv2d_transpose/ReadVariableOp:value:0Lsequential_23/up_sampling2d_45/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
paddingVALID*
strides

,sequential_23/Deconv3/BiasAdd/ReadVariableOpReadVariableOp5sequential_23_deconv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0É
sequential_23/Deconv3/BiasAddBiasAdd/sequential_23/Deconv3/conv2d_transpose:output:04sequential_23/Deconv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
sequential_23/Deconv3/ReluRelu&sequential_23/Deconv3/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
"sequential_23/dropout_104/IdentityIdentity(sequential_23/Deconv3/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@v
sequential_23/Deconv4/ShapeShape+sequential_23/dropout_104/Identity:output:0*
T0*
_output_shapes
:s
)sequential_23/Deconv4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/Deconv4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/Deconv4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_23/Deconv4/strided_sliceStridedSlice$sequential_23/Deconv4/Shape:output:02sequential_23/Deconv4/strided_slice/stack:output:04sequential_23/Deconv4/strided_slice/stack_1:output:04sequential_23/Deconv4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
sequential_23/Deconv4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :_
sequential_23/Deconv4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :&_
sequential_23/Deconv4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@÷
sequential_23/Deconv4/stackPack,sequential_23/Deconv4/strided_slice:output:0&sequential_23/Deconv4/stack/1:output:0&sequential_23/Deconv4/stack/2:output:0&sequential_23/Deconv4/stack/3:output:0*
N*
T0*
_output_shapes
:u
+sequential_23/Deconv4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/Deconv4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/Deconv4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_23/Deconv4/strided_slice_1StridedSlice$sequential_23/Deconv4/stack:output:04sequential_23/Deconv4/strided_slice_1/stack:output:06sequential_23/Deconv4/strided_slice_1/stack_1:output:06sequential_23/Deconv4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¼
5sequential_23/Deconv4/conv2d_transpose/ReadVariableOpReadVariableOp>sequential_23_deconv4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0²
&sequential_23/Deconv4/conv2d_transposeConv2DBackpropInput$sequential_23/Deconv4/stack:output:0=sequential_23/Deconv4/conv2d_transpose/ReadVariableOp:value:0+sequential_23/dropout_104/Identity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@*
paddingVALID*
strides

,sequential_23/Deconv4/BiasAdd/ReadVariableOpReadVariableOp5sequential_23_deconv4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0É
sequential_23/Deconv4/BiasAddBiasAdd/sequential_23/Deconv4/conv2d_transpose:output:04sequential_23/Deconv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@
sequential_23/Deconv4/ReluRelu&sequential_23/Deconv4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@
"sequential_23/dropout_105/IdentityIdentity(sequential_23/Deconv4/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@u
$sequential_23/up_sampling2d_46/ConstConst*
_output_shapes
:*
dtype0*
valueB"   &   w
&sequential_23/up_sampling2d_46/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_23/up_sampling2d_46/mulMul-sequential_23/up_sampling2d_46/Const:output:0/sequential_23/up_sampling2d_46/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_23/up_sampling2d_46/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_23/dropout_105/Identity:output:0&sequential_23/up_sampling2d_46/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L@*
half_pixel_centers(
sequential_23/Deconv7/ShapeShapeLsequential_23/up_sampling2d_46/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:s
)sequential_23/Deconv7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/Deconv7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/Deconv7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_23/Deconv7/strided_sliceStridedSlice$sequential_23/Deconv7/Shape:output:02sequential_23/Deconv7/strided_slice/stack:output:04sequential_23/Deconv7/strided_slice/stack_1:output:04sequential_23/Deconv7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
sequential_23/Deconv7/stack/1Const*
_output_shapes
: *
dtype0*
value	B ::_
sequential_23/Deconv7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :N_
sequential_23/Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :÷
sequential_23/Deconv7/stackPack,sequential_23/Deconv7/strided_slice:output:0&sequential_23/Deconv7/stack/1:output:0&sequential_23/Deconv7/stack/2:output:0&sequential_23/Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:u
+sequential_23/Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_23/Deconv7/strided_slice_1StridedSlice$sequential_23/Deconv7/stack:output:04sequential_23/Deconv7/strided_slice_1/stack:output:06sequential_23/Deconv7/strided_slice_1/stack_1:output:06sequential_23/Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¼
5sequential_23/Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp>sequential_23_deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0Ó
&sequential_23/Deconv7/conv2d_transposeConv2DBackpropInput$sequential_23/Deconv7/stack:output:0=sequential_23/Deconv7/conv2d_transpose/ReadVariableOp:value:0Lsequential_23/up_sampling2d_46/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N*
paddingVALID*
strides

,sequential_23/Deconv7/BiasAdd/ReadVariableOpReadVariableOp5sequential_23_deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0É
sequential_23/Deconv7/BiasAddBiasAdd/sequential_23/Deconv7/conv2d_transpose:output:04sequential_23/Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N
sequential_23/Deconv7/ReluRelu&sequential_23/Deconv7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N
"sequential_23/dropout_106/IdentityIdentity(sequential_23/Deconv7/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:Nu
$sequential_23/up_sampling2d_47/ConstConst*
_output_shapes
:*
dtype0*
valueB":   N   w
&sequential_23/up_sampling2d_47/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_23/up_sampling2d_47/mulMul-sequential_23/up_sampling2d_47/Const:output:0/sequential_23/up_sampling2d_47/Const_1:output:0*
T0*
_output_shapes
:þ
;sequential_23/up_sampling2d_47/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_23/dropout_106/Identity:output:0&sequential_23/up_sampling2d_47/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*
half_pixel_centers(
sequential_23/Deconv8/ShapeShapeLsequential_23/up_sampling2d_47/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:s
)sequential_23/Deconv8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/Deconv8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/Deconv8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_23/Deconv8/strided_sliceStridedSlice$sequential_23/Deconv8/Shape:output:02sequential_23/Deconv8/strided_slice/stack:output:04sequential_23/Deconv8/strided_slice/stack_1:output:04sequential_23/Deconv8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
sequential_23/Deconv8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :v`
sequential_23/Deconv8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :_
sequential_23/Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :÷
sequential_23/Deconv8/stackPack,sequential_23/Deconv8/strided_slice:output:0&sequential_23/Deconv8/stack/1:output:0&sequential_23/Deconv8/stack/2:output:0&sequential_23/Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:u
+sequential_23/Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_23/Deconv8/strided_slice_1StridedSlice$sequential_23/Deconv8/stack:output:04sequential_23/Deconv8/strided_slice_1/stack:output:06sequential_23/Deconv8/strided_slice_1/stack_1:output:06sequential_23/Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¼
5sequential_23/Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp>sequential_23_deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ô
&sequential_23/Deconv8/conv2d_transposeConv2DBackpropInput$sequential_23/Deconv8/stack:output:0=sequential_23/Deconv8/conv2d_transpose/ReadVariableOp:value:0Lsequential_23/up_sampling2d_47/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*
paddingVALID*
strides

,sequential_23/Deconv8/BiasAdd/ReadVariableOpReadVariableOp5sequential_23_deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ê
sequential_23/Deconv8/BiasAddBiasAdd/sequential_23/Deconv8/conv2d_transpose:output:04sequential_23/Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
sequential_23/Deconv8/ReluRelu&sequential_23/Deconv8/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿvq
sequential_23/Final/ShapeShape(sequential_23/Deconv8/Relu:activations:0*
T0*
_output_shapes
:q
'sequential_23/Final/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_23/Final/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_23/Final/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_23/Final/strided_sliceStridedSlice"sequential_23/Final/Shape:output:00sequential_23/Final/strided_slice/stack:output:02sequential_23/Final/strided_slice/stack_1:output:02sequential_23/Final/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
sequential_23/Final/stack/1Const*
_output_shapes
: *
dtype0*
value	B :x^
sequential_23/Final/stack/2Const*
_output_shapes
: *
dtype0*
value
B : ]
sequential_23/Final/stack/3Const*
_output_shapes
: *
dtype0*
value	B :í
sequential_23/Final/stackPack*sequential_23/Final/strided_slice:output:0$sequential_23/Final/stack/1:output:0$sequential_23/Final/stack/2:output:0$sequential_23/Final/stack/3:output:0*
N*
T0*
_output_shapes
:s
)sequential_23/Final/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/Final/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/Final/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
#sequential_23/Final/strided_slice_1StridedSlice"sequential_23/Final/stack:output:02sequential_23/Final/strided_slice_1/stack:output:04sequential_23/Final/strided_slice_1/stack_1:output:04sequential_23/Final/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¸
3sequential_23/Final/conv2d_transpose/ReadVariableOpReadVariableOp<sequential_23_final_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0ª
$sequential_23/Final/conv2d_transposeConv2DBackpropInput"sequential_23/Final/stack:output:0;sequential_23/Final/conv2d_transpose/ReadVariableOp:value:0(sequential_23/Deconv8/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx *
paddingVALID*
strides

*sequential_23/Final/BiasAdd/ReadVariableOpReadVariableOp3sequential_23_final_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ä
sequential_23/Final/BiasAddBiasAdd-sequential_23/Final/conv2d_transpose:output:02sequential_23/Final/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
sequential_23/Final/SigmoidSigmoid$sequential_23/Final/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx w
IdentityIdentitysequential_23/Final/Sigmoid:y:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
NoOpNoOp+^sequential_23/Conv1/BiasAdd/ReadVariableOp*^sequential_23/Conv1/Conv2D/ReadVariableOp+^sequential_23/Conv2/BiasAdd/ReadVariableOp*^sequential_23/Conv2/Conv2D/ReadVariableOp+^sequential_23/Conv3/BiasAdd/ReadVariableOp*^sequential_23/Conv3/Conv2D/ReadVariableOp+^sequential_23/Conv6/BiasAdd/ReadVariableOp*^sequential_23/Conv6/Conv2D/ReadVariableOp+^sequential_23/Conv7/BiasAdd/ReadVariableOp*^sequential_23/Conv7/Conv2D/ReadVariableOp-^sequential_23/Deconv3/BiasAdd/ReadVariableOp6^sequential_23/Deconv3/conv2d_transpose/ReadVariableOp-^sequential_23/Deconv4/BiasAdd/ReadVariableOp6^sequential_23/Deconv4/conv2d_transpose/ReadVariableOp-^sequential_23/Deconv7/BiasAdd/ReadVariableOp6^sequential_23/Deconv7/conv2d_transpose/ReadVariableOp-^sequential_23/Deconv8/BiasAdd/ReadVariableOp6^sequential_23/Deconv8/conv2d_transpose/ReadVariableOp+^sequential_23/Final/BiasAdd/ReadVariableOp4^sequential_23/Final/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 2X
*sequential_23/Conv1/BiasAdd/ReadVariableOp*sequential_23/Conv1/BiasAdd/ReadVariableOp2V
)sequential_23/Conv1/Conv2D/ReadVariableOp)sequential_23/Conv1/Conv2D/ReadVariableOp2X
*sequential_23/Conv2/BiasAdd/ReadVariableOp*sequential_23/Conv2/BiasAdd/ReadVariableOp2V
)sequential_23/Conv2/Conv2D/ReadVariableOp)sequential_23/Conv2/Conv2D/ReadVariableOp2X
*sequential_23/Conv3/BiasAdd/ReadVariableOp*sequential_23/Conv3/BiasAdd/ReadVariableOp2V
)sequential_23/Conv3/Conv2D/ReadVariableOp)sequential_23/Conv3/Conv2D/ReadVariableOp2X
*sequential_23/Conv6/BiasAdd/ReadVariableOp*sequential_23/Conv6/BiasAdd/ReadVariableOp2V
)sequential_23/Conv6/Conv2D/ReadVariableOp)sequential_23/Conv6/Conv2D/ReadVariableOp2X
*sequential_23/Conv7/BiasAdd/ReadVariableOp*sequential_23/Conv7/BiasAdd/ReadVariableOp2V
)sequential_23/Conv7/Conv2D/ReadVariableOp)sequential_23/Conv7/Conv2D/ReadVariableOp2\
,sequential_23/Deconv3/BiasAdd/ReadVariableOp,sequential_23/Deconv3/BiasAdd/ReadVariableOp2n
5sequential_23/Deconv3/conv2d_transpose/ReadVariableOp5sequential_23/Deconv3/conv2d_transpose/ReadVariableOp2\
,sequential_23/Deconv4/BiasAdd/ReadVariableOp,sequential_23/Deconv4/BiasAdd/ReadVariableOp2n
5sequential_23/Deconv4/conv2d_transpose/ReadVariableOp5sequential_23/Deconv4/conv2d_transpose/ReadVariableOp2\
,sequential_23/Deconv7/BiasAdd/ReadVariableOp,sequential_23/Deconv7/BiasAdd/ReadVariableOp2n
5sequential_23/Deconv7/conv2d_transpose/ReadVariableOp5sequential_23/Deconv7/conv2d_transpose/ReadVariableOp2\
,sequential_23/Deconv8/BiasAdd/ReadVariableOp,sequential_23/Deconv8/BiasAdd/ReadVariableOp2n
5sequential_23/Deconv8/conv2d_transpose/ReadVariableOp5sequential_23/Deconv8/conv2d_transpose/ReadVariableOp2X
*sequential_23/Final/BiasAdd/ReadVariableOp*sequential_23/Final/BiasAdd/ReadVariableOp2j
3sequential_23/Final/conv2d_transpose/ReadVariableOp3sequential_23/Final/conv2d_transpose/ReadVariableOp:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input

ù
@__inference_Conv6_layer_call_and_return_conditional_losses_91615

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_89924

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
d
F__inference_dropout_102_layer_call_and_return_conditional_losses_90342

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
 
_user_specified_nameinputs
a
¼

H__inference_sequential_23_layer_call_and_return_conditional_losses_90983
conv1_input%
conv1_90920:
conv1_90922:%
conv2_90925:
conv2_90927:%
conv3_90931:
conv3_90933:%
conv6_90938:@
conv6_90940:@%
conv7_90944:@@
conv7_90946:@'
deconv3_90952:@@
deconv3_90954:@'
deconv4_90958:@@
deconv4_90960:@'
deconv7_90965:@
deconv7_90967:'
deconv8_90972:
deconv8_90974:%
final_90977:
final_90979:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv6/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/StatefulPartitionedCall¢Deconv4/StatefulPartitionedCall¢Deconv7/StatefulPartitionedCall¢Deconv8/StatefulPartitionedCall¢Final/StatefulPartitionedCall¢#dropout_101/StatefulPartitionedCall¢#dropout_102/StatefulPartitionedCall¢#dropout_103/StatefulPartitionedCall¢#dropout_104/StatefulPartitionedCall¢#dropout_105/StatefulPartitionedCall¢#dropout_106/StatefulPartitionedCallò
Conv1/StatefulPartitionedCallStatefulPartitionedCallconv1_inputconv1_90920conv1_90922*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_90271
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_90925conv2_90927*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_90288ò
 max_pooling2d_48/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_89924
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv3_90931conv3_90933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_90306ø
#dropout_101/StatefulPartitionedCallStatefulPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_101_layer_call_and_return_conditional_losses_90617ø
 max_pooling2d_49/PartitionedCallPartitionedCall,dropout_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_89936
Conv6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv6_90938conv6_90940*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_90331
#dropout_102/StatefulPartitionedCallStatefulPartitionedCall&Conv6/StatefulPartitionedCall:output:0$^dropout_101/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_102_layer_call_and_return_conditional_losses_90584
Conv7/StatefulPartitionedCallStatefulPartitionedCall,dropout_102/StatefulPartitionedCall:output:0conv7_90944conv7_90946*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_90355
#dropout_103/StatefulPartitionedCallStatefulPartitionedCall&Conv7/StatefulPartitionedCall:output:0$^dropout_102/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_103_layer_call_and_return_conditional_losses_90551ø
 max_pooling2d_50/PartitionedCallPartitionedCall,dropout_103/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_89948
 up_sampling2d_45/PartitionedCallPartitionedCall)max_pooling2d_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_89967©
Deconv3/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_45/PartitionedCall:output:0deconv3_90952deconv3_90954*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_90012²
#dropout_104/StatefulPartitionedCallStatefulPartitionedCall(Deconv3/StatefulPartitionedCall:output:0$^dropout_103/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_104_layer_call_and_return_conditional_losses_90528¬
Deconv4/StatefulPartitionedCallStatefulPartitionedCall,dropout_104/StatefulPartitionedCall:output:0deconv4_90958deconv4_90960*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_90061²
#dropout_105/StatefulPartitionedCallStatefulPartitionedCall(Deconv4/StatefulPartitionedCall:output:0$^dropout_104/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_105_layer_call_and_return_conditional_losses_90505
 up_sampling2d_46/PartitionedCallPartitionedCall,dropout_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_90084©
Deconv7/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_46/PartitionedCall:output:0deconv7_90965deconv7_90967*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_90129²
#dropout_106/StatefulPartitionedCallStatefulPartitionedCall(Deconv7/StatefulPartitionedCall:output:0$^dropout_105/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_106_layer_call_and_return_conditional_losses_90482
 up_sampling2d_47/PartitionedCallPartitionedCall,dropout_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_47_layer_call_and_return_conditional_losses_90152©
Deconv8/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_47/PartitionedCall:output:0deconv8_90972deconv8_90974*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_90197 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_90977final_90979*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_90246
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿò
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv6/StatefulPartitionedCall^Conv7/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv4/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall$^dropout_101/StatefulPartitionedCall$^dropout_102/StatefulPartitionedCall$^dropout_103/StatefulPartitionedCall$^dropout_104/StatefulPartitionedCall$^dropout_105/StatefulPartitionedCall$^dropout_106/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv6/StatefulPartitionedCallConv6/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv4/StatefulPartitionedCallDeconv4/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall2J
#dropout_101/StatefulPartitionedCall#dropout_101/StatefulPartitionedCall2J
#dropout_102/StatefulPartitionedCall#dropout_102/StatefulPartitionedCall2J
#dropout_103/StatefulPartitionedCall#dropout_103/StatefulPartitionedCall2J
#dropout_104/StatefulPartitionedCall#dropout_104/StatefulPartitionedCall2J
#dropout_105/StatefulPartitionedCall#dropout_105/StatefulPartitionedCall2J
#dropout_106/StatefulPartitionedCall#dropout_106/StatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input
à#

@__inference_Final_layer_call_and_return_conditional_losses_90246

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê
Ù
-__inference_sequential_23_layer_call_fn_91034

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallí
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_90419
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
ù
d
F__inference_dropout_101_layer_call_and_return_conditional_losses_90317

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Lc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ8L:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
 
_user_specified_nameinputs
Æ
e
F__inference_dropout_104_layer_call_and_return_conditional_losses_91790

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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>À
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@s
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_91716

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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´

e
F__inference_dropout_102_layer_call_and_return_conditional_losses_91642

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
:ÿÿÿÿÿÿÿÿÿ$@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
 
_user_specified_nameinputs
Ä
G
+__inference_dropout_102_layer_call_fn_91620

inputs
identity¼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_102_layer_call_and_return_conditional_losses_90342h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
 
_user_specified_nameinputs

d
+__inference_dropout_102_layer_call_fn_91625

inputs
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_102_layer_call_and_return_conditional_losses_90584w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
 
_user_specified_nameinputs

G
+__inference_dropout_106_layer_call_fn_91933

inputs
identityÎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_106_layer_call_and_return_conditional_losses_90405z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ù
@__inference_Conv7_layer_call_and_return_conditional_losses_90355

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ$@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
 
_user_specified_nameinputs
ã#

B__inference_Deconv7_layer_call_and_return_conditional_losses_91928

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_91595

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_91881

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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
Þ
-__inference_sequential_23_layer_call_fn_90851
conv1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallò
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_90763
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input

ù
@__inference_Conv2_layer_call_and_return_conditional_losses_91528

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*
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
:ÿÿÿÿÿÿÿÿÿtY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿtj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿtw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿv: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
 
_user_specified_nameinputs
¯·
ß
H__inference_sequential_23_layer_call_and_return_conditional_losses_91239

inputs>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:>
$conv2_conv2d_readvariableop_resource:3
%conv2_biasadd_readvariableop_resource:>
$conv3_conv2d_readvariableop_resource:3
%conv3_biasadd_readvariableop_resource:>
$conv6_conv2d_readvariableop_resource:@3
%conv6_biasadd_readvariableop_resource:@>
$conv7_conv2d_readvariableop_resource:@@3
%conv7_biasadd_readvariableop_resource:@J
0deconv3_conv2d_transpose_readvariableop_resource:@@5
'deconv3_biasadd_readvariableop_resource:@J
0deconv4_conv2d_transpose_readvariableop_resource:@@5
'deconv4_biasadd_readvariableop_resource:@J
0deconv7_conv2d_transpose_readvariableop_resource:@5
'deconv7_biasadd_readvariableop_resource:J
0deconv8_conv2d_transpose_readvariableop_resource:5
'deconv8_biasadd_readvariableop_resource:H
.final_conv2d_transpose_readvariableop_resource:3
%final_biasadd_readvariableop_resource:
identity¢Conv1/BiasAdd/ReadVariableOp¢Conv1/Conv2D/ReadVariableOp¢Conv2/BiasAdd/ReadVariableOp¢Conv2/Conv2D/ReadVariableOp¢Conv3/BiasAdd/ReadVariableOp¢Conv3/Conv2D/ReadVariableOp¢Conv6/BiasAdd/ReadVariableOp¢Conv6/Conv2D/ReadVariableOp¢Conv7/BiasAdd/ReadVariableOp¢Conv7/Conv2D/ReadVariableOp¢Deconv3/BiasAdd/ReadVariableOp¢'Deconv3/conv2d_transpose/ReadVariableOp¢Deconv4/BiasAdd/ReadVariableOp¢'Deconv4/conv2d_transpose/ReadVariableOp¢Deconv7/BiasAdd/ReadVariableOp¢'Deconv7/conv2d_transpose/ReadVariableOp¢Deconv8/BiasAdd/ReadVariableOp¢'Deconv8/conv2d_transpose/ReadVariableOp¢Final/BiasAdd/ReadVariableOp¢%Final/conv2d_transpose/ReadVariableOp
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0§
Conv1/Conv2DConv2Dinputs#Conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*
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
:ÿÿÿÿÿÿÿÿÿve

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¹
Conv2/Conv2DConv2DConv1/Relu:activations:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*
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
:ÿÿÿÿÿÿÿÿÿte

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿtª
max_pooling2d_48/MaxPoolMaxPoolConv2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N*
ksize
*
paddingVALID*
strides

Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Á
Conv3/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*
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
:ÿÿÿÿÿÿÿÿÿ8Ld

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Lt
dropout_101/IdentityIdentityConv3/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L¯
max_pooling2d_49/MaxPoolMaxPooldropout_101/Identity:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*
ksize
*
paddingVALID*
strides

Conv6/Conv2D/ReadVariableOpReadVariableOp$conv6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Á
Conv6/Conv2DConv2D!max_pooling2d_49/MaxPool:output:0#Conv6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
paddingVALID*
strides
~
Conv6/BiasAdd/ReadVariableOpReadVariableOp%conv6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
Conv6/BiasAddBiasAddConv6/Conv2D:output:0$Conv6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@d

Conv6/ReluReluConv6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@t
dropout_102/IdentityIdentityConv6/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
Conv7/Conv2D/ReadVariableOpReadVariableOp$conv7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0½
Conv7/Conv2DConv2Ddropout_102/Identity:output:0#Conv7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
paddingVALID*
strides
~
Conv7/BiasAdd/ReadVariableOpReadVariableOp%conv7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
Conv7/BiasAddBiasAddConv7/Conv2D:output:0$Conv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@d

Conv7/ReluReluConv7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@t
dropout_103/IdentityIdentityConv7/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@¯
max_pooling2d_50/MaxPoolMaxPooldropout_103/Identity:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
g
up_sampling2d_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_45/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_45/mulMulup_sampling2d_45/Const:output:0!up_sampling2d_45/Const_1:output:0*
T0*
_output_shapes
:×
-up_sampling2d_45/resize/ResizeNearestNeighborResizeNearestNeighbor!max_pooling2d_50/MaxPool:output:0up_sampling2d_45/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
half_pixel_centers({
Deconv3/ShapeShape>up_sampling2d_45/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:e
Deconv3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
Deconv3/strided_sliceStridedSliceDeconv3/Shape:output:0$Deconv3/strided_slice/stack:output:0&Deconv3/strided_slice/stack_1:output:0&Deconv3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Deconv3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :$Q
Deconv3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@±
Deconv3/stackPackDeconv3/strided_slice:output:0Deconv3/stack/1:output:0Deconv3/stack/2:output:0Deconv3/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv3/strided_slice_1StridedSliceDeconv3/stack:output:0&Deconv3/strided_slice_1/stack:output:0(Deconv3/strided_slice_1/stack_1:output:0(Deconv3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv3/conv2d_transpose/ReadVariableOpReadVariableOp0deconv3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Deconv3/conv2d_transposeConv2DBackpropInputDeconv3/stack:output:0/Deconv3/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_45/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
paddingVALID*
strides

Deconv3/BiasAdd/ReadVariableOpReadVariableOp'deconv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
Deconv3/BiasAddBiasAdd!Deconv3/conv2d_transpose:output:0&Deconv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@h
Deconv3/ReluReluDeconv3/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@v
dropout_104/IdentityIdentityDeconv3/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@Z
Deconv4/ShapeShapedropout_104/Identity:output:0*
T0*
_output_shapes
:e
Deconv4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
Deconv4/strided_sliceStridedSliceDeconv4/Shape:output:0$Deconv4/strided_slice/stack:output:0&Deconv4/strided_slice/stack_1:output:0&Deconv4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Deconv4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :&Q
Deconv4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@±
Deconv4/stackPackDeconv4/strided_slice:output:0Deconv4/stack/1:output:0Deconv4/stack/2:output:0Deconv4/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv4/strided_slice_1StridedSliceDeconv4/stack:output:0&Deconv4/strided_slice_1/stack:output:0(Deconv4/strided_slice_1/stack_1:output:0(Deconv4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv4/conv2d_transpose/ReadVariableOpReadVariableOp0deconv4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0ú
Deconv4/conv2d_transposeConv2DBackpropInputDeconv4/stack:output:0/Deconv4/conv2d_transpose/ReadVariableOp:value:0dropout_104/Identity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@*
paddingVALID*
strides

Deconv4/BiasAdd/ReadVariableOpReadVariableOp'deconv4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
Deconv4/BiasAddBiasAdd!Deconv4/conv2d_transpose:output:0&Deconv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@h
Deconv4/ReluReluDeconv4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@v
dropout_105/IdentityIdentityDeconv4/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@g
up_sampling2d_46/ConstConst*
_output_shapes
:*
dtype0*
valueB"   &   i
up_sampling2d_46/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_46/mulMulup_sampling2d_46/Const:output:0!up_sampling2d_46/Const_1:output:0*
T0*
_output_shapes
:Ó
-up_sampling2d_46/resize/ResizeNearestNeighborResizeNearestNeighbordropout_105/Identity:output:0up_sampling2d_46/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L@*
half_pixel_centers({
Deconv7/ShapeShape>up_sampling2d_46/resize/ResizeNearestNeighbor:resized_images:0*
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
valueB:ù
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
:@*
dtype0
Deconv7/conv2d_transposeConv2DBackpropInputDeconv7/stack:output:0/Deconv7/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_46/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N*
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
:ÿÿÿÿÿÿÿÿÿ:Nh
Deconv7/ReluReluDeconv7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:Nv
dropout_106/IdentityIdentityDeconv7/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:Ng
up_sampling2d_47/ConstConst*
_output_shapes
:*
dtype0*
valueB":   N   i
up_sampling2d_47/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_47/mulMulup_sampling2d_47/Const:output:0!up_sampling2d_47/Const_1:output:0*
T0*
_output_shapes
:Ô
-up_sampling2d_47/resize/ResizeNearestNeighborResizeNearestNeighbordropout_106/Identity:output:0up_sampling2d_47/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*
half_pixel_centers({
Deconv8/ShapeShape>up_sampling2d_47/resize/ResizeNearestNeighbor:resized_images:0*
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
valueB:ù
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
dtype0
Deconv8/conv2d_transposeConv2DBackpropInputDeconv8/stack:output:0/Deconv8/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_47/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*
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
:ÿÿÿÿÿÿÿÿÿvi
Deconv8/ReluReluDeconv8/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿvU
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
valueB:ï
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
valueB:÷
Final/strided_slice_1StridedSliceFinal/stack:output:0$Final/strided_slice_1/stack:output:0&Final/strided_slice_1/stack_1:output:0&Final/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%Final/conv2d_transpose/ReadVariableOpReadVariableOp.final_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0ò
Final/conv2d_transposeConv2DBackpropInputFinal/stack:output:0-Final/conv2d_transpose/ReadVariableOp:value:0Deconv8/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx *
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
:ÿÿÿÿÿÿÿÿÿx k
Final/SigmoidSigmoidFinal/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx i
IdentityIdentityFinal/Sigmoid:y:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx ê
NoOpNoOp^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Conv6/BiasAdd/ReadVariableOp^Conv6/Conv2D/ReadVariableOp^Conv7/BiasAdd/ReadVariableOp^Conv7/Conv2D/ReadVariableOp^Deconv3/BiasAdd/ReadVariableOp(^Deconv3/conv2d_transpose/ReadVariableOp^Deconv4/BiasAdd/ReadVariableOp(^Deconv4/conv2d_transpose/ReadVariableOp^Deconv7/BiasAdd/ReadVariableOp(^Deconv7/conv2d_transpose/ReadVariableOp^Deconv8/BiasAdd/ReadVariableOp(^Deconv8/conv2d_transpose/ReadVariableOp^Final/BiasAdd/ReadVariableOp&^Final/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2<
Conv6/BiasAdd/ReadVariableOpConv6/BiasAdd/ReadVariableOp2:
Conv6/Conv2D/ReadVariableOpConv6/Conv2D/ReadVariableOp2<
Conv7/BiasAdd/ReadVariableOpConv7/BiasAdd/ReadVariableOp2:
Conv7/Conv2D/ReadVariableOpConv7/Conv2D/ReadVariableOp2@
Deconv3/BiasAdd/ReadVariableOpDeconv3/BiasAdd/ReadVariableOp2R
'Deconv3/conv2d_transpose/ReadVariableOp'Deconv3/conv2d_transpose/ReadVariableOp2@
Deconv4/BiasAdd/ReadVariableOpDeconv4/BiasAdd/ReadVariableOp2R
'Deconv4/conv2d_transpose/ReadVariableOp'Deconv4/conv2d_transpose/ReadVariableOp2@
Deconv7/BiasAdd/ReadVariableOpDeconv7/BiasAdd/ReadVariableOp2R
'Deconv7/conv2d_transpose/ReadVariableOp'Deconv7/conv2d_transpose/ReadVariableOp2@
Deconv8/BiasAdd/ReadVariableOpDeconv8/BiasAdd/ReadVariableOp2R
'Deconv8/conv2d_transpose/ReadVariableOp'Deconv8/conv2d_transpose/ReadVariableOp2<
Final/BiasAdd/ReadVariableOpFinal/BiasAdd/ReadVariableOp2N
%Final/conv2d_transpose/ReadVariableOp%Final/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_89948

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
L
0__inference_up_sampling2d_46_layer_call_fn_91869

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_90084
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
d
F__inference_dropout_102_layer_call_and_return_conditional_losses_91630

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
 
_user_specified_nameinputs
ÀW
Ø
H__inference_sequential_23_layer_call_and_return_conditional_losses_90917
conv1_input%
conv1_90854:
conv1_90856:%
conv2_90859:
conv2_90861:%
conv3_90865:
conv3_90867:%
conv6_90872:@
conv6_90874:@%
conv7_90878:@@
conv7_90880:@'
deconv3_90886:@@
deconv3_90888:@'
deconv4_90892:@@
deconv4_90894:@'
deconv7_90899:@
deconv7_90901:'
deconv8_90906:
deconv8_90908:%
final_90911:
final_90913:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv6/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/StatefulPartitionedCall¢Deconv4/StatefulPartitionedCall¢Deconv7/StatefulPartitionedCall¢Deconv8/StatefulPartitionedCall¢Final/StatefulPartitionedCallò
Conv1/StatefulPartitionedCallStatefulPartitionedCallconv1_inputconv1_90854conv1_90856*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_90271
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_90859conv2_90861*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_90288ò
 max_pooling2d_48/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_89924
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv3_90865conv3_90867*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_90306è
dropout_101/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_101_layer_call_and_return_conditional_losses_90317ð
 max_pooling2d_49/PartitionedCallPartitionedCall$dropout_101/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_89936
Conv6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv6_90872conv6_90874*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_90331è
dropout_102/PartitionedCallPartitionedCall&Conv6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_102_layer_call_and_return_conditional_losses_90342
Conv7/StatefulPartitionedCallStatefulPartitionedCall$dropout_102/PartitionedCall:output:0conv7_90878conv7_90880*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_90355è
dropout_103/PartitionedCallPartitionedCall&Conv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_103_layer_call_and_return_conditional_losses_90366ð
 max_pooling2d_50/PartitionedCallPartitionedCall$dropout_103/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_89948
 up_sampling2d_45/PartitionedCallPartitionedCall)max_pooling2d_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_89967©
Deconv3/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_45/PartitionedCall:output:0deconv3_90886deconv3_90888*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_90012ü
dropout_104/PartitionedCallPartitionedCall(Deconv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_104_layer_call_and_return_conditional_losses_90380¤
Deconv4/StatefulPartitionedCallStatefulPartitionedCall$dropout_104/PartitionedCall:output:0deconv4_90892deconv4_90894*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_90061ü
dropout_105/PartitionedCallPartitionedCall(Deconv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_105_layer_call_and_return_conditional_losses_90392
 up_sampling2d_46/PartitionedCallPartitionedCall$dropout_105/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_90084©
Deconv7/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_46/PartitionedCall:output:0deconv7_90899deconv7_90901*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_90129ü
dropout_106/PartitionedCallPartitionedCall(Deconv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_106_layer_call_and_return_conditional_losses_90405
 up_sampling2d_47/PartitionedCallPartitionedCall$dropout_106/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_47_layer_call_and_return_conditional_losses_90152©
Deconv8/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_47/PartitionedCall:output:0deconv8_90906deconv8_90908*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_90197 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_90911final_90913*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_90246
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv6/StatefulPartitionedCall^Conv7/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv4/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv6/StatefulPartitionedCallConv6/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv4/StatefulPartitionedCallDeconv4/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input

g
K__inference_up_sampling2d_47_layer_call_and_return_conditional_losses_91972

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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
+__inference_dropout_103_layer_call_fn_91672

inputs
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_103_layer_call_and_return_conditional_losses_90551w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ"@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
 
_user_specified_nameinputs
»
L
0__inference_up_sampling2d_45_layer_call_fn_91704

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_89967
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´

e
F__inference_dropout_103_layer_call_and_return_conditional_losses_91689

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
:ÿÿÿÿÿÿÿÿÿ"@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ"@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
 
_user_specified_nameinputs
»
L
0__inference_max_pooling2d_48_layer_call_fn_91533

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_89924
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
d
F__inference_dropout_101_layer_call_and_return_conditional_losses_91573

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Lc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ8L:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
 
_user_specified_nameinputs
Ì
ÿ
__inference__traced_save_92296
file_prefix+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop+
'savev2_conv2_kernel_read_readvariableop)
%savev2_conv2_bias_read_readvariableop+
'savev2_conv3_kernel_read_readvariableop)
%savev2_conv3_bias_read_readvariableop+
'savev2_conv6_kernel_read_readvariableop)
%savev2_conv6_bias_read_readvariableop+
'savev2_conv7_kernel_read_readvariableop)
%savev2_conv7_bias_read_readvariableop-
)savev2_deconv3_kernel_read_readvariableop+
'savev2_deconv3_bias_read_readvariableop-
)savev2_deconv4_kernel_read_readvariableop+
'savev2_deconv4_bias_read_readvariableop-
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
.savev2_adam_conv6_kernel_m_read_readvariableop0
,savev2_adam_conv6_bias_m_read_readvariableop2
.savev2_adam_conv7_kernel_m_read_readvariableop0
,savev2_adam_conv7_bias_m_read_readvariableop4
0savev2_adam_deconv3_kernel_m_read_readvariableop2
.savev2_adam_deconv3_bias_m_read_readvariableop4
0savev2_adam_deconv4_kernel_m_read_readvariableop2
.savev2_adam_deconv4_bias_m_read_readvariableop4
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
.savev2_adam_conv6_kernel_v_read_readvariableop0
,savev2_adam_conv6_bias_v_read_readvariableop2
.savev2_adam_conv7_kernel_v_read_readvariableop0
,savev2_adam_conv7_bias_v_read_readvariableop4
0savev2_adam_deconv3_kernel_v_read_readvariableop2
.savev2_adam_deconv3_bias_v_read_readvariableop4
0savev2_adam_deconv4_kernel_v_read_readvariableop2
.savev2_adam_deconv4_bias_v_read_readvariableop4
0savev2_adam_deconv7_kernel_v_read_readvariableop2
.savev2_adam_deconv7_bias_v_read_readvariableop4
0savev2_adam_deconv8_kernel_v_read_readvariableop2
.savev2_adam_deconv8_bias_v_read_readvariableop2
.savev2_adam_final_kernel_v_read_readvariableop0
,savev2_adam_final_bias_v_read_readvariableop
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
: '
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*´&
valueª&B§&FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHü
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*¡
valueBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B õ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop'savev2_conv3_kernel_read_readvariableop%savev2_conv3_bias_read_readvariableop'savev2_conv6_kernel_read_readvariableop%savev2_conv6_bias_read_readvariableop'savev2_conv7_kernel_read_readvariableop%savev2_conv7_bias_read_readvariableop)savev2_deconv3_kernel_read_readvariableop'savev2_deconv3_bias_read_readvariableop)savev2_deconv4_kernel_read_readvariableop'savev2_deconv4_bias_read_readvariableop)savev2_deconv7_kernel_read_readvariableop'savev2_deconv7_bias_read_readvariableop)savev2_deconv8_kernel_read_readvariableop'savev2_deconv8_bias_read_readvariableop'savev2_final_kernel_read_readvariableop%savev2_final_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_conv1_kernel_m_read_readvariableop,savev2_adam_conv1_bias_m_read_readvariableop.savev2_adam_conv2_kernel_m_read_readvariableop,savev2_adam_conv2_bias_m_read_readvariableop.savev2_adam_conv3_kernel_m_read_readvariableop,savev2_adam_conv3_bias_m_read_readvariableop.savev2_adam_conv6_kernel_m_read_readvariableop,savev2_adam_conv6_bias_m_read_readvariableop.savev2_adam_conv7_kernel_m_read_readvariableop,savev2_adam_conv7_bias_m_read_readvariableop0savev2_adam_deconv3_kernel_m_read_readvariableop.savev2_adam_deconv3_bias_m_read_readvariableop0savev2_adam_deconv4_kernel_m_read_readvariableop.savev2_adam_deconv4_bias_m_read_readvariableop0savev2_adam_deconv7_kernel_m_read_readvariableop.savev2_adam_deconv7_bias_m_read_readvariableop0savev2_adam_deconv8_kernel_m_read_readvariableop.savev2_adam_deconv8_bias_m_read_readvariableop.savev2_adam_final_kernel_m_read_readvariableop,savev2_adam_final_bias_m_read_readvariableop.savev2_adam_conv1_kernel_v_read_readvariableop,savev2_adam_conv1_bias_v_read_readvariableop.savev2_adam_conv2_kernel_v_read_readvariableop,savev2_adam_conv2_bias_v_read_readvariableop.savev2_adam_conv3_kernel_v_read_readvariableop,savev2_adam_conv3_bias_v_read_readvariableop.savev2_adam_conv6_kernel_v_read_readvariableop,savev2_adam_conv6_bias_v_read_readvariableop.savev2_adam_conv7_kernel_v_read_readvariableop,savev2_adam_conv7_bias_v_read_readvariableop0savev2_adam_deconv3_kernel_v_read_readvariableop.savev2_adam_deconv3_bias_v_read_readvariableop0savev2_adam_deconv4_kernel_v_read_readvariableop.savev2_adam_deconv4_bias_v_read_readvariableop0savev2_adam_deconv7_kernel_v_read_readvariableop.savev2_adam_deconv7_bias_v_read_readvariableop0savev2_adam_deconv8_kernel_v_read_readvariableop.savev2_adam_deconv8_bias_v_read_readvariableop.savev2_adam_final_kernel_v_read_readvariableop,savev2_adam_final_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

identity_1Identity_1:output:0*û
_input_shapesé
æ: :::::::@:@:@@:@:@@:@:@@:@:@:::::: : : : : : : : : :::::::@:@:@@:@:@@:@:@@:@:@::::::::::::@:@:@@:@:@@:@:@@:@:@:::::: 2(
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
:@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 
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
:@: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@:,((
&
_output_shapes
:@@: )

_output_shapes
:@:,*(
&
_output_shapes
:@@: +

_output_shapes
:@:,,(
&
_output_shapes
:@: -
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
:@: 9

_output_shapes
:@:,:(
&
_output_shapes
:@@: ;

_output_shapes
:@:,<(
&
_output_shapes
:@@: =

_output_shapes
:@:,>(
&
_output_shapes
:@@: ?

_output_shapes
:@:,@(
&
_output_shapes
:@: A
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
Á
d
F__inference_dropout_106_layer_call_and_return_conditional_losses_91943

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
d
F__inference_dropout_103_layer_call_and_return_conditional_losses_91677

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ"@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
 
_user_specified_nameinputs
»
L
0__inference_up_sampling2d_47_layer_call_fn_91960

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_47_layer_call_and_return_conditional_losses_90152
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
a
·

H__inference_sequential_23_layer_call_and_return_conditional_losses_90763

inputs%
conv1_90700:
conv1_90702:%
conv2_90705:
conv2_90707:%
conv3_90711:
conv3_90713:%
conv6_90718:@
conv6_90720:@%
conv7_90724:@@
conv7_90726:@'
deconv3_90732:@@
deconv3_90734:@'
deconv4_90738:@@
deconv4_90740:@'
deconv7_90745:@
deconv7_90747:'
deconv8_90752:
deconv8_90754:%
final_90757:
final_90759:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv6/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/StatefulPartitionedCall¢Deconv4/StatefulPartitionedCall¢Deconv7/StatefulPartitionedCall¢Deconv8/StatefulPartitionedCall¢Final/StatefulPartitionedCall¢#dropout_101/StatefulPartitionedCall¢#dropout_102/StatefulPartitionedCall¢#dropout_103/StatefulPartitionedCall¢#dropout_104/StatefulPartitionedCall¢#dropout_105/StatefulPartitionedCall¢#dropout_106/StatefulPartitionedCallí
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_90700conv1_90702*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_90271
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_90705conv2_90707*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_90288ò
 max_pooling2d_48/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_89924
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv3_90711conv3_90713*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_90306ø
#dropout_101/StatefulPartitionedCallStatefulPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_101_layer_call_and_return_conditional_losses_90617ø
 max_pooling2d_49/PartitionedCallPartitionedCall,dropout_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_89936
Conv6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv6_90718conv6_90720*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_90331
#dropout_102/StatefulPartitionedCallStatefulPartitionedCall&Conv6/StatefulPartitionedCall:output:0$^dropout_101/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_102_layer_call_and_return_conditional_losses_90584
Conv7/StatefulPartitionedCallStatefulPartitionedCall,dropout_102/StatefulPartitionedCall:output:0conv7_90724conv7_90726*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_90355
#dropout_103/StatefulPartitionedCallStatefulPartitionedCall&Conv7/StatefulPartitionedCall:output:0$^dropout_102/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_103_layer_call_and_return_conditional_losses_90551ø
 max_pooling2d_50/PartitionedCallPartitionedCall,dropout_103/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_89948
 up_sampling2d_45/PartitionedCallPartitionedCall)max_pooling2d_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_89967©
Deconv3/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_45/PartitionedCall:output:0deconv3_90732deconv3_90734*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_90012²
#dropout_104/StatefulPartitionedCallStatefulPartitionedCall(Deconv3/StatefulPartitionedCall:output:0$^dropout_103/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_104_layer_call_and_return_conditional_losses_90528¬
Deconv4/StatefulPartitionedCallStatefulPartitionedCall,dropout_104/StatefulPartitionedCall:output:0deconv4_90738deconv4_90740*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_90061²
#dropout_105/StatefulPartitionedCallStatefulPartitionedCall(Deconv4/StatefulPartitionedCall:output:0$^dropout_104/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_105_layer_call_and_return_conditional_losses_90505
 up_sampling2d_46/PartitionedCallPartitionedCall,dropout_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_90084©
Deconv7/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_46/PartitionedCall:output:0deconv7_90745deconv7_90747*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_90129²
#dropout_106/StatefulPartitionedCallStatefulPartitionedCall(Deconv7/StatefulPartitionedCall:output:0$^dropout_105/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_106_layer_call_and_return_conditional_losses_90482
 up_sampling2d_47/PartitionedCallPartitionedCall,dropout_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_47_layer_call_and_return_conditional_losses_90152©
Deconv8/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_47/PartitionedCall:output:0deconv8_90752deconv8_90754*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_90197 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_90757final_90759*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Final_layer_call_and_return_conditional_losses_90246
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿò
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv6/StatefulPartitionedCall^Conv7/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv4/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall$^dropout_101/StatefulPartitionedCall$^dropout_102/StatefulPartitionedCall$^dropout_103/StatefulPartitionedCall$^dropout_104/StatefulPartitionedCall$^dropout_105/StatefulPartitionedCall$^dropout_106/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv6/StatefulPartitionedCallConv6/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv4/StatefulPartitionedCallDeconv4/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall2J
#dropout_101/StatefulPartitionedCall#dropout_101/StatefulPartitionedCall2J
#dropout_102/StatefulPartitionedCall#dropout_102/StatefulPartitionedCall2J
#dropout_103/StatefulPartitionedCall#dropout_103/StatefulPartitionedCall2J
#dropout_104/StatefulPartitionedCall#dropout_104/StatefulPartitionedCall2J
#dropout_105/StatefulPartitionedCall#dropout_105/StatefulPartitionedCall2J
#dropout_106/StatefulPartitionedCall#dropout_106/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
å

%__inference_Conv6_layer_call_fn_91604

inputs!
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_90331w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
ù
Þ
-__inference_sequential_23_layer_call_fn_90462
conv1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallò
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_90419
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input
»
L
0__inference_max_pooling2d_50_layer_call_fn_91694

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_89948
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²

'__inference_Deconv3_layer_call_fn_91725

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_90012
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ß
d
+__inference_dropout_106_layer_call_fn_91938

inputs
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_106_layer_call_and_return_conditional_losses_90482
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_91538

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à#

@__inference_Final_layer_call_and_return_conditional_losses_92066

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´

e
F__inference_dropout_103_layer_call_and_return_conditional_losses_90551

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
:ÿÿÿÿÿÿÿÿÿ"@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ"@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
 
_user_specified_nameinputs
å

%__inference_Conv7_layer_call_fn_91651

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_90355w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ$@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
 
_user_specified_nameinputs
ã#

B__inference_Deconv3_layer_call_and_return_conditional_losses_90012

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
value	B :@y
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Æ
e
F__inference_dropout_106_layer_call_and_return_conditional_losses_90482

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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>À
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_91699

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã#

B__inference_Deconv3_layer_call_and_return_conditional_losses_91763

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
value	B :@y
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

G
+__inference_dropout_105_layer_call_fn_91842

inputs
identityÎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_105_layer_call_and_return_conditional_losses_90392z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
é

%__inference_Conv1_layer_call_fn_91497

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_90271x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿx : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
´

e
F__inference_dropout_101_layer_call_and_return_conditional_losses_90617

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
:ÿÿÿÿÿÿÿÿÿ8LC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Lw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Lq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8La
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ8L:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
 
_user_specified_nameinputs

ù
@__inference_Conv3_layer_call_and_return_conditional_losses_90306

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*
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
:ÿÿÿÿÿÿÿÿÿ8LX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Li
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8Lw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ:N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N
 
_user_specified_nameinputs
²

'__inference_Deconv8_layer_call_fn_91981

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_90197
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
d
+__inference_dropout_104_layer_call_fn_91773

inputs
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_104_layer_call_and_return_conditional_losses_90528
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ä
G
+__inference_dropout_101_layer_call_fn_91563

inputs
identity¼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_101_layer_call_and_return_conditional_losses_90317h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ8L:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
 
_user_specified_nameinputs
Æ
e
F__inference_dropout_106_layer_call_and_return_conditional_losses_91955

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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>À
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_47_layer_call_and_return_conditional_losses_90152

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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£ç
ß
H__inference_sequential_23_layer_call_and_return_conditional_losses_91441

inputs>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:>
$conv2_conv2d_readvariableop_resource:3
%conv2_biasadd_readvariableop_resource:>
$conv3_conv2d_readvariableop_resource:3
%conv3_biasadd_readvariableop_resource:>
$conv6_conv2d_readvariableop_resource:@3
%conv6_biasadd_readvariableop_resource:@>
$conv7_conv2d_readvariableop_resource:@@3
%conv7_biasadd_readvariableop_resource:@J
0deconv3_conv2d_transpose_readvariableop_resource:@@5
'deconv3_biasadd_readvariableop_resource:@J
0deconv4_conv2d_transpose_readvariableop_resource:@@5
'deconv4_biasadd_readvariableop_resource:@J
0deconv7_conv2d_transpose_readvariableop_resource:@5
'deconv7_biasadd_readvariableop_resource:J
0deconv8_conv2d_transpose_readvariableop_resource:5
'deconv8_biasadd_readvariableop_resource:H
.final_conv2d_transpose_readvariableop_resource:3
%final_biasadd_readvariableop_resource:
identity¢Conv1/BiasAdd/ReadVariableOp¢Conv1/Conv2D/ReadVariableOp¢Conv2/BiasAdd/ReadVariableOp¢Conv2/Conv2D/ReadVariableOp¢Conv3/BiasAdd/ReadVariableOp¢Conv3/Conv2D/ReadVariableOp¢Conv6/BiasAdd/ReadVariableOp¢Conv6/Conv2D/ReadVariableOp¢Conv7/BiasAdd/ReadVariableOp¢Conv7/Conv2D/ReadVariableOp¢Deconv3/BiasAdd/ReadVariableOp¢'Deconv3/conv2d_transpose/ReadVariableOp¢Deconv4/BiasAdd/ReadVariableOp¢'Deconv4/conv2d_transpose/ReadVariableOp¢Deconv7/BiasAdd/ReadVariableOp¢'Deconv7/conv2d_transpose/ReadVariableOp¢Deconv8/BiasAdd/ReadVariableOp¢'Deconv8/conv2d_transpose/ReadVariableOp¢Final/BiasAdd/ReadVariableOp¢%Final/conv2d_transpose/ReadVariableOp
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0§
Conv1/Conv2DConv2Dinputs#Conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*
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
:ÿÿÿÿÿÿÿÿÿve

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¹
Conv2/Conv2DConv2DConv1/Relu:activations:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*
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
:ÿÿÿÿÿÿÿÿÿte

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿtª
max_pooling2d_48/MaxPoolMaxPoolConv2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N*
ksize
*
paddingVALID*
strides

Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Á
Conv3/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*
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
:ÿÿÿÿÿÿÿÿÿ8Ld

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L^
dropout_101/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_101/dropout/MulMulConv3/Relu:activations:0"dropout_101/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8La
dropout_101/dropout/ShapeShapeConv3/Relu:activations:0*
T0*
_output_shapes
:¬
0dropout_101/dropout/random_uniform/RandomUniformRandomUniform"dropout_101/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*
dtype0g
"dropout_101/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ò
 dropout_101/dropout/GreaterEqualGreaterEqual9dropout_101/dropout/random_uniform/RandomUniform:output:0+dropout_101/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
dropout_101/dropout/CastCast$dropout_101/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
dropout_101/dropout/Mul_1Muldropout_101/dropout/Mul:z:0dropout_101/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L¯
max_pooling2d_49/MaxPoolMaxPooldropout_101/dropout/Mul_1:z:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*
ksize
*
paddingVALID*
strides

Conv6/Conv2D/ReadVariableOpReadVariableOp$conv6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Á
Conv6/Conv2DConv2D!max_pooling2d_49/MaxPool:output:0#Conv6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
paddingVALID*
strides
~
Conv6/BiasAdd/ReadVariableOpReadVariableOp%conv6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
Conv6/BiasAddBiasAddConv6/Conv2D:output:0$Conv6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@d

Conv6/ReluReluConv6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@^
dropout_102/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_102/dropout/MulMulConv6/Relu:activations:0"dropout_102/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@a
dropout_102/dropout/ShapeShapeConv6/Relu:activations:0*
T0*
_output_shapes
:¬
0dropout_102/dropout/random_uniform/RandomUniformRandomUniform"dropout_102/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
dtype0g
"dropout_102/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ò
 dropout_102/dropout/GreaterEqualGreaterEqual9dropout_102/dropout/random_uniform/RandomUniform:output:0+dropout_102/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
dropout_102/dropout/CastCast$dropout_102/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
dropout_102/dropout/Mul_1Muldropout_102/dropout/Mul:z:0dropout_102/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
Conv7/Conv2D/ReadVariableOpReadVariableOp$conv7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0½
Conv7/Conv2DConv2Ddropout_102/dropout/Mul_1:z:0#Conv7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
paddingVALID*
strides
~
Conv7/BiasAdd/ReadVariableOpReadVariableOp%conv7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
Conv7/BiasAddBiasAddConv7/Conv2D:output:0$Conv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@d

Conv7/ReluReluConv7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@^
dropout_103/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_103/dropout/MulMulConv7/Relu:activations:0"dropout_103/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@a
dropout_103/dropout/ShapeShapeConv7/Relu:activations:0*
T0*
_output_shapes
:¬
0dropout_103/dropout/random_uniform/RandomUniformRandomUniform"dropout_103/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
dtype0g
"dropout_103/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ò
 dropout_103/dropout/GreaterEqualGreaterEqual9dropout_103/dropout/random_uniform/RandomUniform:output:0+dropout_103/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
dropout_103/dropout/CastCast$dropout_103/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
dropout_103/dropout/Mul_1Muldropout_103/dropout/Mul:z:0dropout_103/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@¯
max_pooling2d_50/MaxPoolMaxPooldropout_103/dropout/Mul_1:z:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
g
up_sampling2d_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_45/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_45/mulMulup_sampling2d_45/Const:output:0!up_sampling2d_45/Const_1:output:0*
T0*
_output_shapes
:×
-up_sampling2d_45/resize/ResizeNearestNeighborResizeNearestNeighbor!max_pooling2d_50/MaxPool:output:0up_sampling2d_45/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
half_pixel_centers({
Deconv3/ShapeShape>up_sampling2d_45/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:e
Deconv3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
Deconv3/strided_sliceStridedSliceDeconv3/Shape:output:0$Deconv3/strided_slice/stack:output:0&Deconv3/strided_slice/stack_1:output:0&Deconv3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Deconv3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :$Q
Deconv3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@±
Deconv3/stackPackDeconv3/strided_slice:output:0Deconv3/stack/1:output:0Deconv3/stack/2:output:0Deconv3/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv3/strided_slice_1StridedSliceDeconv3/stack:output:0&Deconv3/strided_slice_1/stack:output:0(Deconv3/strided_slice_1/stack_1:output:0(Deconv3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv3/conv2d_transpose/ReadVariableOpReadVariableOp0deconv3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Deconv3/conv2d_transposeConv2DBackpropInputDeconv3/stack:output:0/Deconv3/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_45/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
paddingVALID*
strides

Deconv3/BiasAdd/ReadVariableOpReadVariableOp'deconv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
Deconv3/BiasAddBiasAdd!Deconv3/conv2d_transpose:output:0&Deconv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@h
Deconv3/ReluReluDeconv3/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@^
dropout_104/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_104/dropout/MulMulDeconv3/Relu:activations:0"dropout_104/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@c
dropout_104/dropout/ShapeShapeDeconv3/Relu:activations:0*
T0*
_output_shapes
:¬
0dropout_104/dropout/random_uniform/RandomUniformRandomUniform"dropout_104/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@*
dtype0g
"dropout_104/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ò
 dropout_104/dropout/GreaterEqualGreaterEqual9dropout_104/dropout/random_uniform/RandomUniform:output:0+dropout_104/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
dropout_104/dropout/CastCast$dropout_104/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
dropout_104/dropout/Mul_1Muldropout_104/dropout/Mul:z:0dropout_104/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@Z
Deconv4/ShapeShapedropout_104/dropout/Mul_1:z:0*
T0*
_output_shapes
:e
Deconv4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Deconv4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Deconv4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
Deconv4/strided_sliceStridedSliceDeconv4/Shape:output:0$Deconv4/strided_slice/stack:output:0&Deconv4/strided_slice/stack_1:output:0&Deconv4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Deconv4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Deconv4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :&Q
Deconv4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@±
Deconv4/stackPackDeconv4/strided_slice:output:0Deconv4/stack/1:output:0Deconv4/stack/2:output:0Deconv4/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv4/strided_slice_1StridedSliceDeconv4/stack:output:0&Deconv4/strided_slice_1/stack:output:0(Deconv4/strided_slice_1/stack_1:output:0(Deconv4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv4/conv2d_transpose/ReadVariableOpReadVariableOp0deconv4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0ú
Deconv4/conv2d_transposeConv2DBackpropInputDeconv4/stack:output:0/Deconv4/conv2d_transpose/ReadVariableOp:value:0dropout_104/dropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@*
paddingVALID*
strides

Deconv4/BiasAdd/ReadVariableOpReadVariableOp'deconv4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
Deconv4/BiasAddBiasAdd!Deconv4/conv2d_transpose:output:0&Deconv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@h
Deconv4/ReluReluDeconv4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@^
dropout_105/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_105/dropout/MulMulDeconv4/Relu:activations:0"dropout_105/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@c
dropout_105/dropout/ShapeShapeDeconv4/Relu:activations:0*
T0*
_output_shapes
:¬
0dropout_105/dropout/random_uniform/RandomUniformRandomUniform"dropout_105/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@*
dtype0g
"dropout_105/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ò
 dropout_105/dropout/GreaterEqualGreaterEqual9dropout_105/dropout/random_uniform/RandomUniform:output:0+dropout_105/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@
dropout_105/dropout/CastCast$dropout_105/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@
dropout_105/dropout/Mul_1Muldropout_105/dropout/Mul:z:0dropout_105/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&@g
up_sampling2d_46/ConstConst*
_output_shapes
:*
dtype0*
valueB"   &   i
up_sampling2d_46/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_46/mulMulup_sampling2d_46/Const:output:0!up_sampling2d_46/Const_1:output:0*
T0*
_output_shapes
:Ó
-up_sampling2d_46/resize/ResizeNearestNeighborResizeNearestNeighbordropout_105/dropout/Mul_1:z:0up_sampling2d_46/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L@*
half_pixel_centers({
Deconv7/ShapeShape>up_sampling2d_46/resize/ResizeNearestNeighbor:resized_images:0*
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
valueB:ù
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
:@*
dtype0
Deconv7/conv2d_transposeConv2DBackpropInputDeconv7/stack:output:0/Deconv7/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_46/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N*
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
:ÿÿÿÿÿÿÿÿÿ:Nh
Deconv7/ReluReluDeconv7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N^
dropout_106/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_106/dropout/MulMulDeconv7/Relu:activations:0"dropout_106/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:Nc
dropout_106/dropout/ShapeShapeDeconv7/Relu:activations:0*
T0*
_output_shapes
:¬
0dropout_106/dropout/random_uniform/RandomUniformRandomUniform"dropout_106/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N*
dtype0g
"dropout_106/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ò
 dropout_106/dropout/GreaterEqualGreaterEqual9dropout_106/dropout/random_uniform/RandomUniform:output:0+dropout_106/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N
dropout_106/dropout/CastCast$dropout_106/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N
dropout_106/dropout/Mul_1Muldropout_106/dropout/Mul:z:0dropout_106/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:Ng
up_sampling2d_47/ConstConst*
_output_shapes
:*
dtype0*
valueB":   N   i
up_sampling2d_47/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_47/mulMulup_sampling2d_47/Const:output:0!up_sampling2d_47/Const_1:output:0*
T0*
_output_shapes
:Ô
-up_sampling2d_47/resize/ResizeNearestNeighborResizeNearestNeighbordropout_106/dropout/Mul_1:z:0up_sampling2d_47/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿt*
half_pixel_centers({
Deconv8/ShapeShape>up_sampling2d_47/resize/ResizeNearestNeighbor:resized_images:0*
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
valueB:ù
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
dtype0
Deconv8/conv2d_transposeConv2DBackpropInputDeconv8/stack:output:0/Deconv8/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_47/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿv*
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
:ÿÿÿÿÿÿÿÿÿvi
Deconv8/ReluReluDeconv8/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿvU
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
valueB:ï
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
valueB:÷
Final/strided_slice_1StridedSliceFinal/stack:output:0$Final/strided_slice_1/stack:output:0&Final/strided_slice_1/stack_1:output:0&Final/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%Final/conv2d_transpose/ReadVariableOpReadVariableOp.final_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0ò
Final/conv2d_transposeConv2DBackpropInputFinal/stack:output:0-Final/conv2d_transpose/ReadVariableOp:value:0Deconv8/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx *
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
:ÿÿÿÿÿÿÿÿÿx k
Final/SigmoidSigmoidFinal/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx i
IdentityIdentityFinal/Sigmoid:y:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx ê
NoOpNoOp^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Conv6/BiasAdd/ReadVariableOp^Conv6/Conv2D/ReadVariableOp^Conv7/BiasAdd/ReadVariableOp^Conv7/Conv2D/ReadVariableOp^Deconv3/BiasAdd/ReadVariableOp(^Deconv3/conv2d_transpose/ReadVariableOp^Deconv4/BiasAdd/ReadVariableOp(^Deconv4/conv2d_transpose/ReadVariableOp^Deconv7/BiasAdd/ReadVariableOp(^Deconv7/conv2d_transpose/ReadVariableOp^Deconv8/BiasAdd/ReadVariableOp(^Deconv8/conv2d_transpose/ReadVariableOp^Final/BiasAdd/ReadVariableOp&^Final/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2<
Conv6/BiasAdd/ReadVariableOpConv6/BiasAdd/ReadVariableOp2:
Conv6/Conv2D/ReadVariableOpConv6/Conv2D/ReadVariableOp2<
Conv7/BiasAdd/ReadVariableOpConv7/BiasAdd/ReadVariableOp2:
Conv7/Conv2D/ReadVariableOpConv7/Conv2D/ReadVariableOp2@
Deconv3/BiasAdd/ReadVariableOpDeconv3/BiasAdd/ReadVariableOp2R
'Deconv3/conv2d_transpose/ReadVariableOp'Deconv3/conv2d_transpose/ReadVariableOp2@
Deconv4/BiasAdd/ReadVariableOpDeconv4/BiasAdd/ReadVariableOp2R
'Deconv4/conv2d_transpose/ReadVariableOp'Deconv4/conv2d_transpose/ReadVariableOp2@
Deconv7/BiasAdd/ReadVariableOpDeconv7/BiasAdd/ReadVariableOp2R
'Deconv7/conv2d_transpose/ReadVariableOp'Deconv7/conv2d_transpose/ReadVariableOp2@
Deconv8/BiasAdd/ReadVariableOpDeconv8/BiasAdd/ReadVariableOp2R
'Deconv8/conv2d_transpose/ReadVariableOp'Deconv8/conv2d_transpose/ReadVariableOp2<
Final/BiasAdd/ReadVariableOpFinal/BiasAdd/ReadVariableOp2N
%Final/conv2d_transpose/ReadVariableOp%Final/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
ê
Ù
-__inference_sequential_23_layer_call_fn_91079

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallí
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_90763
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
ã#

B__inference_Deconv8_layer_call_and_return_conditional_losses_92019

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²

'__inference_Deconv4_layer_call_fn_91799

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_90061
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_89967

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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²

'__inference_Deconv7_layer_call_fn_91890

inputs!
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_90129
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_90084

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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã#

B__inference_Deconv7_layer_call_and_return_conditional_losses_90129

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
å

%__inference_Conv3_layer_call_fn_91547

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_90306w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ:N: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:N
 
_user_specified_nameinputs
ù
d
F__inference_dropout_103_layer_call_and_return_conditional_losses_90366

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ"@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
 
_user_specified_nameinputs

d
+__inference_dropout_101_layer_call_fn_91568

inputs
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_101_layer_call_and_return_conditional_losses_90617w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ8L22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ8L
 
_user_specified_nameinputs
Ä
G
+__inference_dropout_103_layer_call_fn_91667

inputs
identity¼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_103_layer_call_and_return_conditional_losses_90366h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ"@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@
 
_user_specified_nameinputs
ß
d
+__inference_dropout_105_layer_call_fn_91847

inputs
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_105_layer_call_and_return_conditional_losses_90505
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Á
d
F__inference_dropout_105_layer_call_and_return_conditional_losses_90392

inputs

identity_1h
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@u

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_89936

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ù
@__inference_Conv7_layer_call_and_return_conditional_losses_91662

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ$@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$@
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Â
serving_default®
L
Conv1_input=
serving_default_Conv1_input:0ÿÿÿÿÿÿÿÿÿx B
Final9
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿx tensorflow/serving/predict:¼õ

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer-16
layer_with_weights-7
layer-17
layer-18
layer-19
layer_with_weights-8
layer-20
layer_with_weights-9
layer-21
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
»

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
»

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W_random_generator
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f_random_generator
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
»

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
À
}	variables
~trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
¡	variables
¢trainable_variables
£regularization_losses
¤	keras_api
¥_random_generator
¦__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layer
«
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
®kernel
	¯bias
°	variables
±trainable_variables
²regularization_losses
³	keras_api
´__call__
+µ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
¶kernel
	·bias
¸	variables
¹trainable_variables
ºregularization_losses
»	keras_api
¼__call__
+½&call_and_return_all_conditional_losses"
_tf_keras_layer
ø
	¾iter
¿beta_1
Àbeta_2

Ádecay
Âlearning_rate mÂ!mÃ(mÄ)mÅ6mÆ7mÇKmÈLmÉZmÊ[mËumÌvmÍ	mÎ	mÏ	mÐ	mÑ	®mÒ	¯mÓ	¶mÔ	·mÕ vÖ!v×(vØ)vÙ6vÚ7vÛKvÜLvÝZvÞ[vßuvàvvá	vâ	vã	vä	vå	®væ	¯vç	¶vè	·vé"
	optimizer
¾
 0
!1
(2
)3
64
75
K6
L7
Z8
[9
u10
v11
12
13
14
15
®16
¯17
¶18
·19"
trackable_list_wrapper
¾
 0
!1
(2
)3
64
75
K6
L7
Z8
[9
u10
v11
12
13
14
15
®16
¯17
¶18
·19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
Ãnon_trainable_variables
Älayers
Åmetrics
 Ælayer_regularization_losses
Çlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_23_layer_call_fn_90462
-__inference_sequential_23_layer_call_fn_91034
-__inference_sequential_23_layer_call_fn_91079
-__inference_sequential_23_layer_call_fn_90851À
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
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_23_layer_call_and_return_conditional_losses_91239
H__inference_sequential_23_layer_call_and_return_conditional_losses_91441
H__inference_sequential_23_layer_call_and_return_conditional_losses_90917
H__inference_sequential_23_layer_call_and_return_conditional_losses_90983À
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
kwonlydefaultsª 
annotationsª *
 
ÏBÌ
 __inference__wrapped_model_89915Conv1_input"
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
-
Èserving_default"
signature_map
&:$2Conv1/kernel
:2
Conv1/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Conv1_layer_call_fn_91497¢
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
ê2ç
@__inference_Conv1_layer_call_and_return_conditional_losses_91508¢
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
&:$2Conv2/kernel
:2
Conv2/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Conv2_layer_call_fn_91517¢
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
ê2ç
@__inference_Conv2_layer_call_and_return_conditional_losses_91528¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_48_layer_call_fn_91533¢
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
õ2ò
K__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_91538¢
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
&:$2Conv3/kernel
:2
Conv3/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Conv3_layer_call_fn_91547¢
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
ê2ç
@__inference_Conv3_layer_call_and_return_conditional_losses_91558¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ýnon_trainable_variables
Þlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_101_layer_call_fn_91563
+__inference_dropout_101_layer_call_fn_91568´
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
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_101_layer_call_and_return_conditional_losses_91573
F__inference_dropout_101_layer_call_and_return_conditional_losses_91585´
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_49_layer_call_fn_91590¢
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
õ2ò
K__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_91595¢
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
&:$@2Conv6/kernel
:@2
Conv6/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Conv6_layer_call_fn_91604¢
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
ê2ç
@__inference_Conv6_layer_call_and_return_conditional_losses_91615¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_102_layer_call_fn_91620
+__inference_dropout_102_layer_call_fn_91625´
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
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_102_layer_call_and_return_conditional_losses_91630
F__inference_dropout_102_layer_call_and_return_conditional_losses_91642´
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
kwonlydefaultsª 
annotationsª *
 
&:$@@2Conv7/kernel
:@2
Conv7/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ñnon_trainable_variables
òlayers
ómetrics
 ôlayer_regularization_losses
õlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Conv7_layer_call_fn_91651¢
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
ê2ç
@__inference_Conv7_layer_call_and_return_conditional_losses_91662¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
önon_trainable_variables
÷layers
ømetrics
 ùlayer_regularization_losses
úlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_103_layer_call_fn_91667
+__inference_dropout_103_layer_call_fn_91672´
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
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_103_layer_call_and_return_conditional_losses_91677
F__inference_dropout_103_layer_call_and_return_conditional_losses_91689´
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ûnon_trainable_variables
ülayers
ýmetrics
 þlayer_regularization_losses
ÿlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_50_layer_call_fn_91694¢
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
õ2ò
K__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_91699¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_45_layer_call_fn_91704¢
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
õ2ò
K__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_91716¢
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
(:&@@2Deconv3/kernel
:@2Deconv3/bias
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_Deconv3_layer_call_fn_91725¢
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
ì2é
B__inference_Deconv3_layer_call_and_return_conditional_losses_91763¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_104_layer_call_fn_91768
+__inference_dropout_104_layer_call_fn_91773´
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
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_104_layer_call_and_return_conditional_losses_91778
F__inference_dropout_104_layer_call_and_return_conditional_losses_91790´
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
kwonlydefaultsª 
annotationsª *
 
(:&@@2Deconv4/kernel
:@2Deconv4/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_Deconv4_layer_call_fn_91799¢
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
ì2é
B__inference_Deconv4_layer_call_and_return_conditional_losses_91837¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_105_layer_call_fn_91842
+__inference_dropout_105_layer_call_fn_91847´
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
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_105_layer_call_and_return_conditional_losses_91852
F__inference_dropout_105_layer_call_and_return_conditional_losses_91864´
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_46_layer_call_fn_91869¢
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
õ2ò
K__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_91881¢
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
(:&@2Deconv7/kernel
:2Deconv7/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_Deconv7_layer_call_fn_91890¢
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
ì2é
B__inference_Deconv7_layer_call_and_return_conditional_losses_91928¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
¡	variables
¢trainable_variables
£regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_106_layer_call_fn_91933
+__inference_dropout_106_layer_call_fn_91938´
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
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_106_layer_call_and_return_conditional_losses_91943
F__inference_dropout_106_layer_call_and_return_conditional_losses_91955´
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_47_layer_call_fn_91960¢
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
õ2ò
K__inference_up_sampling2d_47_layer_call_and_return_conditional_losses_91972¢
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
(:&2Deconv8/kernel
:2Deconv8/bias
0
®0
¯1"
trackable_list_wrapper
0
®0
¯1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
°	variables
±trainable_variables
²regularization_losses
´__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_Deconv8_layer_call_fn_91981¢
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
ì2é
B__inference_Deconv8_layer_call_and_return_conditional_losses_92019¢
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
&:$2Final/kernel
:2
Final/bias
0
¶0
·1"
trackable_list_wrapper
0
¶0
·1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
¸	variables
¹trainable_variables
ºregularization_losses
¼__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Final_layer_call_fn_92028¢
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
ê2ç
@__inference_Final_layer_call_and_return_conditional_losses_92066¢
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
Æ
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
19
20
21"
trackable_list_wrapper
0
·0
¸1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
#__inference_signature_wrapper_91488Conv1_input"
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

¹total

ºcount
»	variables
¼	keras_api"
_tf_keras_metric
c

½total

¾count
¿
_fn_kwargs
À	variables
Á	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
¹0
º1"
trackable_list_wrapper
.
»	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
½0
¾1"
trackable_list_wrapper
.
À	variables"
_generic_user_object
+:)2Adam/Conv1/kernel/m
:2Adam/Conv1/bias/m
+:)2Adam/Conv2/kernel/m
:2Adam/Conv2/bias/m
+:)2Adam/Conv3/kernel/m
:2Adam/Conv3/bias/m
+:)@2Adam/Conv6/kernel/m
:@2Adam/Conv6/bias/m
+:)@@2Adam/Conv7/kernel/m
:@2Adam/Conv7/bias/m
-:+@@2Adam/Deconv3/kernel/m
:@2Adam/Deconv3/bias/m
-:+@@2Adam/Deconv4/kernel/m
:@2Adam/Deconv4/bias/m
-:+@2Adam/Deconv7/kernel/m
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
+:)@2Adam/Conv6/kernel/v
:@2Adam/Conv6/bias/v
+:)@@2Adam/Conv7/kernel/v
:@2Adam/Conv7/bias/v
-:+@@2Adam/Deconv3/kernel/v
:@2Adam/Deconv3/bias/v
-:+@@2Adam/Deconv4/kernel/v
:@2Adam/Deconv4/bias/v
-:+@2Adam/Deconv7/kernel/v
:2Adam/Deconv7/bias/v
-:+2Adam/Deconv8/kernel/v
:2Adam/Deconv8/bias/v
+:)2Adam/Final/kernel/v
:2Adam/Final/bias/v²
@__inference_Conv1_layer_call_and_return_conditional_losses_91508n !8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿx 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿv
 
%__inference_Conv1_layer_call_fn_91497a !8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿx 
ª "!ÿÿÿÿÿÿÿÿÿv²
@__inference_Conv2_layer_call_and_return_conditional_losses_91528n()8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿv
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿt
 
%__inference_Conv2_layer_call_fn_91517a()8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿv
ª "!ÿÿÿÿÿÿÿÿÿt°
@__inference_Conv3_layer_call_and_return_conditional_losses_91558l677¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ:N
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ8L
 
%__inference_Conv3_layer_call_fn_91547_677¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ:N
ª " ÿÿÿÿÿÿÿÿÿ8L°
@__inference_Conv6_layer_call_and_return_conditional_losses_91615lKL7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$@
 
%__inference_Conv6_layer_call_fn_91604_KL7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&
ª " ÿÿÿÿÿÿÿÿÿ$@°
@__inference_Conv7_layer_call_and_return_conditional_losses_91662lZ[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ"@
 
%__inference_Conv7_layer_call_fn_91651_Z[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$@
ª " ÿÿÿÿÿÿÿÿÿ"@×
B__inference_Deconv3_layer_call_and_return_conditional_losses_91763uvI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ¯
'__inference_Deconv3_layer_call_fn_91725uvI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ù
B__inference_Deconv4_layer_call_and_return_conditional_losses_91837I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ±
'__inference_Deconv4_layer_call_fn_91799I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ù
B__inference_Deconv7_layer_call_and_return_conditional_losses_91928I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ±
'__inference_Deconv7_layer_call_fn_91890I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙ
B__inference_Deconv8_layer_call_and_return_conditional_losses_92019®¯I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ±
'__inference_Deconv8_layer_call_fn_91981®¯I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ×
@__inference_Final_layer_call_and_return_conditional_losses_92066¶·I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¯
%__inference_Final_layer_call_fn_92028¶·I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
 __inference__wrapped_model_89915 !()67KLZ[uv®¯¶·=¢:
3¢0
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
ª "6ª3
1
Final(%
Finalÿÿÿÿÿÿÿÿÿx ¶
F__inference_dropout_101_layer_call_and_return_conditional_losses_91573l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ8L
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ8L
 ¶
F__inference_dropout_101_layer_call_and_return_conditional_losses_91585l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ8L
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ8L
 
+__inference_dropout_101_layer_call_fn_91563_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ8L
p 
ª " ÿÿÿÿÿÿÿÿÿ8L
+__inference_dropout_101_layer_call_fn_91568_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ8L
p
ª " ÿÿÿÿÿÿÿÿÿ8L¶
F__inference_dropout_102_layer_call_and_return_conditional_losses_91630l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ$@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$@
 ¶
F__inference_dropout_102_layer_call_and_return_conditional_losses_91642l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ$@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$@
 
+__inference_dropout_102_layer_call_fn_91620_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ$@
p 
ª " ÿÿÿÿÿÿÿÿÿ$@
+__inference_dropout_102_layer_call_fn_91625_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ$@
p
ª " ÿÿÿÿÿÿÿÿÿ$@¶
F__inference_dropout_103_layer_call_and_return_conditional_losses_91677l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ"@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ"@
 ¶
F__inference_dropout_103_layer_call_and_return_conditional_losses_91689l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ"@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ"@
 
+__inference_dropout_103_layer_call_fn_91667_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ"@
p 
ª " ÿÿÿÿÿÿÿÿÿ"@
+__inference_dropout_103_layer_call_fn_91672_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ"@
p
ª " ÿÿÿÿÿÿÿÿÿ"@Û
F__inference_dropout_104_layer_call_and_return_conditional_losses_91778M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Û
F__inference_dropout_104_layer_call_and_return_conditional_losses_91790M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ³
+__inference_dropout_104_layer_call_fn_91768M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@³
+__inference_dropout_104_layer_call_fn_91773M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Û
F__inference_dropout_105_layer_call_and_return_conditional_losses_91852M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Û
F__inference_dropout_105_layer_call_and_return_conditional_losses_91864M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ³
+__inference_dropout_105_layer_call_fn_91842M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@³
+__inference_dropout_105_layer_call_fn_91847M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Û
F__inference_dropout_106_layer_call_and_return_conditional_losses_91943M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Û
F__inference_dropout_106_layer_call_and_return_conditional_losses_91955M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ³
+__inference_dropout_106_layer_call_fn_91933M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³
+__inference_dropout_106_layer_call_fn_91938M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_91538R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_48_layer_call_fn_91533R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_91595R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_49_layer_call_fn_91590R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_91699R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_50_layer_call_fn_91694R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿó
H__inference_sequential_23_layer_call_and_return_conditional_losses_90917¦ !()67KLZ[uv®¯¶·E¢B
;¢8
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
p 

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ó
H__inference_sequential_23_layer_call_and_return_conditional_losses_90983¦ !()67KLZ[uv®¯¶·E¢B
;¢8
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
p

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ý
H__inference_sequential_23_layer_call_and_return_conditional_losses_91239 !()67KLZ[uv®¯¶·@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿx 
p 

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿx 
 Ý
H__inference_sequential_23_layer_call_and_return_conditional_losses_91441 !()67KLZ[uv®¯¶·@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿx 
p

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿx 
 Ë
-__inference_sequential_23_layer_call_fn_90462 !()67KLZ[uv®¯¶·E¢B
;¢8
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿË
-__inference_sequential_23_layer_call_fn_90851 !()67KLZ[uv®¯¶·E¢B
;¢8
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÆ
-__inference_sequential_23_layer_call_fn_91034 !()67KLZ[uv®¯¶·@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿx 
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÆ
-__inference_sequential_23_layer_call_fn_91079 !()67KLZ[uv®¯¶·@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿx 
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
#__inference_signature_wrapper_91488¤ !()67KLZ[uv®¯¶·L¢I
¢ 
Bª?
=
Conv1_input.+
Conv1_inputÿÿÿÿÿÿÿÿÿx "6ª3
1
Final(%
Finalÿÿÿÿÿÿÿÿÿx î
K__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_91716R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_45_layer_call_fn_91704R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_91881R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_46_layer_call_fn_91869R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_up_sampling2d_47_layer_call_and_return_conditional_losses_91972R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_47_layer_call_fn_91960R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ