þ
ë
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
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
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758ÙÀ
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
Conv7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameConv7/kernel
u
 Conv7/kernel/Read/ReadVariableOpReadVariableOpConv7/kernel*&
_output_shapes
:@*
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
Adam/Conv7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Conv7/kernel/m

'Adam/Conv7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv7/kernel/m*&
_output_shapes
:@*
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
Adam/Conv7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Conv7/kernel/v

'Adam/Conv7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv7/kernel/v*&
_output_shapes
:@*
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
ÿ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¹
value®Bª B¢

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
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
¦

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*

,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
¦

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses*
¥
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>_random_generator
?__call__
*@&call_and_return_all_conditional_losses* 

A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
¦

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
¥
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S_random_generator
T__call__
*U&call_and_return_all_conditional_losses* 

V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 

\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses* 
¦

bkernel
cbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses*
¥
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n_random_generator
o__call__
*p&call_and_return_all_conditional_losses* 

q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses* 
¦

wkernel
xbias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses*
«
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
®
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
®
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	iter
beta_1
beta_2

decay
 learning_ratemm$m%m2m3mGmHmbmcmwmxm	m	m	m	mvv$v%v2v 3v¡Gv¢Hv£bv¤cv¥wv¦xv§	v¨	v©	vª	v«*
~
0
1
$2
%3
24
35
G6
H7
b8
c9
w10
x11
12
13
14
15*
~
0
1
$2
%3
24
35
G6
H7
b8
c9
w10
x11
12
13
14
15*
* 
µ
¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

¦serving_default* 
\V
VARIABLE_VALUEConv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEConv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 

¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEConv3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
* 

¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
:	variables
;trainable_variables
<regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEConv7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Conv7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

G0
H1*
* 

Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEDeconv3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

b0
c1*

b0
c1*
* 

Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEDeconv7/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv7/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

w0
x1*

w0
x1*
* 

ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEDeconv8/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDeconv8/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEFinal/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Final/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
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

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
17*

0
1*
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

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*
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
VARIABLE_VALUEAdam/Conv7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv7/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv7/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv7/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv8/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv8/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Final/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Final/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/Conv7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Conv7/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv7/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv7/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/Deconv8/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Deconv8/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Final/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Final/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_Conv1_inputPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx *
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿx 
Î
StatefulPartitionedCallStatefulPartitionedCallserving_default_Conv1_inputConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv7/kernel
Conv7/biasDeconv3/kernelDeconv3/biasDeconv7/kernelDeconv7/biasDeconv8/kernelDeconv8/biasFinal/kernel
Final/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_74875
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
£
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename Conv1/kernel/Read/ReadVariableOpConv1/bias/Read/ReadVariableOp Conv2/kernel/Read/ReadVariableOpConv2/bias/Read/ReadVariableOp Conv3/kernel/Read/ReadVariableOpConv3/bias/Read/ReadVariableOp Conv7/kernel/Read/ReadVariableOpConv7/bias/Read/ReadVariableOp"Deconv3/kernel/Read/ReadVariableOp Deconv3/bias/Read/ReadVariableOp"Deconv7/kernel/Read/ReadVariableOp Deconv7/bias/Read/ReadVariableOp"Deconv8/kernel/Read/ReadVariableOp Deconv8/bias/Read/ReadVariableOp Final/kernel/Read/ReadVariableOpFinal/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/Conv1/kernel/m/Read/ReadVariableOp%Adam/Conv1/bias/m/Read/ReadVariableOp'Adam/Conv2/kernel/m/Read/ReadVariableOp%Adam/Conv2/bias/m/Read/ReadVariableOp'Adam/Conv3/kernel/m/Read/ReadVariableOp%Adam/Conv3/bias/m/Read/ReadVariableOp'Adam/Conv7/kernel/m/Read/ReadVariableOp%Adam/Conv7/bias/m/Read/ReadVariableOp)Adam/Deconv3/kernel/m/Read/ReadVariableOp'Adam/Deconv3/bias/m/Read/ReadVariableOp)Adam/Deconv7/kernel/m/Read/ReadVariableOp'Adam/Deconv7/bias/m/Read/ReadVariableOp)Adam/Deconv8/kernel/m/Read/ReadVariableOp'Adam/Deconv8/bias/m/Read/ReadVariableOp'Adam/Final/kernel/m/Read/ReadVariableOp%Adam/Final/bias/m/Read/ReadVariableOp'Adam/Conv1/kernel/v/Read/ReadVariableOp%Adam/Conv1/bias/v/Read/ReadVariableOp'Adam/Conv2/kernel/v/Read/ReadVariableOp%Adam/Conv2/bias/v/Read/ReadVariableOp'Adam/Conv3/kernel/v/Read/ReadVariableOp%Adam/Conv3/bias/v/Read/ReadVariableOp'Adam/Conv7/kernel/v/Read/ReadVariableOp%Adam/Conv7/bias/v/Read/ReadVariableOp)Adam/Deconv3/kernel/v/Read/ReadVariableOp'Adam/Deconv3/bias/v/Read/ReadVariableOp)Adam/Deconv7/kernel/v/Read/ReadVariableOp'Adam/Deconv7/bias/v/Read/ReadVariableOp)Adam/Deconv8/kernel/v/Read/ReadVariableOp'Adam/Deconv8/bias/v/Read/ReadVariableOp'Adam/Final/kernel/v/Read/ReadVariableOp%Adam/Final/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
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
__inference__traced_save_75497
ª

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv7/kernel
Conv7/biasDeconv3/kernelDeconv3/biasDeconv7/kernelDeconv7/biasDeconv8/kernelDeconv8/biasFinal/kernel
Final/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Conv1/kernel/mAdam/Conv1/bias/mAdam/Conv2/kernel/mAdam/Conv2/bias/mAdam/Conv3/kernel/mAdam/Conv3/bias/mAdam/Conv7/kernel/mAdam/Conv7/bias/mAdam/Deconv3/kernel/mAdam/Deconv3/bias/mAdam/Deconv7/kernel/mAdam/Deconv7/bias/mAdam/Deconv8/kernel/mAdam/Deconv8/bias/mAdam/Final/kernel/mAdam/Final/bias/mAdam/Conv1/kernel/vAdam/Conv1/bias/vAdam/Conv2/kernel/vAdam/Conv2/bias/vAdam/Conv3/kernel/vAdam/Conv3/bias/vAdam/Conv7/kernel/vAdam/Conv7/bias/vAdam/Deconv3/kernel/vAdam/Deconv3/bias/vAdam/Deconv7/kernel/vAdam/Deconv7/bias/vAdam/Deconv8/kernel/vAdam/Deconv8/bias/vAdam/Final/kernel/vAdam/Final/bias/v*E
Tin>
<2:*
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
!__inference__traced_restore_75678ù¦

µ
@__inference_Conv3_layer_call_and_return_conditional_losses_73787

args_0!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73263w
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
 
_user_specified_nameargs_0
À
c
E__inference_dropout_88_layer_call_and_return_conditional_losses_73848

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
ã#

B__inference_Deconv7_layer_call_and_return_conditional_losses_75165

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
Ö
g
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_74921

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73161
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
 
_user_specified_nameargs_0
»
L
0__inference_up_sampling2d_33_layer_call_fn_75022

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73503
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
 
_user_specified_nameargs_0
Ö
g
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73479

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73173
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
 
_user_specified_nameargs_0

g
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_73571

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
Ý
a
E__inference_dropout_86_layer_call_and_return_conditional_losses_75002

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
:ÿÿÿÿÿÿÿÿÿ$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73299h
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
¹
Þ
-__inference_sequential_19_layer_call_fn_73897
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
	unknown_9:@

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity¢StatefulPartitionedCallº
StatefulPartitionedCallStatefulPartitionedCallconv1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_73862
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input
ã#

B__inference_Deconv7_layer_call_and_return_conditional_losses_73616

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
ÉÏ


H__inference_sequential_19_layer_call_and_return_conditional_losses_74638

inputs%
conv1_74457:
conv1_74459:%
conv2_74462:
conv2_74464:%
conv3_74468:
conv3_74470:%
conv7_74475:@
conv7_74477:@J
0deconv3_conv2d_transpose_readvariableop_resource:@@5
'deconv3_biasadd_readvariableop_resource:@J
0deconv7_conv2d_transpose_readvariableop_resource:@5
'deconv7_biasadd_readvariableop_resource:J
0deconv8_conv2d_transpose_readvariableop_resource:5
'deconv8_biasadd_readvariableop_resource:H
.final_conv2d_transpose_readvariableop_resource:3
%final_biasadd_readvariableop_resource:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/BiasAdd/ReadVariableOp¢'Deconv3/conv2d_transpose/ReadVariableOp¢Deconv7/BiasAdd/ReadVariableOp¢'Deconv7/conv2d_transpose/ReadVariableOp¢Deconv8/BiasAdd/ReadVariableOp¢'Deconv8/conv2d_transpose/ReadVariableOp¢Final/BiasAdd/ReadVariableOp¢%Final/conv2d_transpose/ReadVariableOpí
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_74457conv1_74459*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73228
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_74462conv2_74464*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73245ò
 max_pooling2d_36/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73161
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv3_74468conv3_74470*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73263æ
dropout_85/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_73274ï
 max_pooling2d_37/PartitionedCallPartitionedCall#dropout_85/PartitionedCall:output:0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73173
Conv7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv7_74475conv7_74477*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73288æ
dropout_86/PartitionedCallPartitionedCall&Conv7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73299ï
 max_pooling2d_38/PartitionedCallPartitionedCall#dropout_86/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73185
 up_sampling2d_33/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73204f
Deconv3/ShapeShape)up_sampling2d_33/PartitionedCall:output:0*
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
shrink_axis_maskg
Deconv3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv3/strided_slice_1StridedSliceDeconv3/Shape:output:0&Deconv3/strided_slice_1/stack:output:0(Deconv3/strided_slice_1/stack_1:output:0(Deconv3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
Deconv3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv3/strided_slice_2StridedSliceDeconv3/Shape:output:0&Deconv3/strided_slice_2/stack:output:0(Deconv3/strided_slice_2/stack_1:output:0(Deconv3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskO
Deconv3/mul/yConst*
_output_shapes
: *
dtype0*
value	B :m
Deconv3/mulMul Deconv3/strided_slice_1:output:0Deconv3/mul/y:output:0*
T0*
_output_shapes
: O
Deconv3/add/yConst*
_output_shapes
: *
dtype0*
value	B :^
Deconv3/addAddV2Deconv3/mul:z:0Deconv3/add/y:output:0*
T0*
_output_shapes
: Q
Deconv3/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :q
Deconv3/mul_1Mul Deconv3/strided_slice_2:output:0Deconv3/mul_1/y:output:0*
T0*
_output_shapes
: Q
Deconv3/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :d
Deconv3/add_1AddV2Deconv3/mul_1:z:0Deconv3/add_1/y:output:0*
T0*
_output_shapes
: Q
Deconv3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@¡
Deconv3/stackPackDeconv3/strided_slice:output:0Deconv3/add:z:0Deconv3/add_1:z:0Deconv3/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv3/strided_slice_3StridedSliceDeconv3/stack:output:0&Deconv3/strided_slice_3/stack:output:0(Deconv3/strided_slice_3/stack_1:output:0(Deconv3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv3/conv2d_transpose/ReadVariableOpReadVariableOp0deconv3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Deconv3/conv2d_transposeConv2DBackpropInputDeconv3/stack:output:0/Deconv3/conv2d_transpose/ReadVariableOp:value:0)up_sampling2d_33/PartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

Deconv3/BiasAdd/ReadVariableOpReadVariableOp'deconv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0±
Deconv3/BiasAddBiasAdd!Deconv3/conv2d_transpose:output:0&Deconv3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@z
Deconv3/ReluReluDeconv3/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout_87/IdentityIdentityDeconv3/Relu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@b
up_sampling2d_34/ShapeShapedropout_87/Identity:output:0*
T0*
_output_shapes
:n
$up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
up_sampling2d_34/strided_sliceStridedSliceup_sampling2d_34/Shape:output:0-up_sampling2d_34/strided_slice/stack:output:0/up_sampling2d_34/strided_slice/stack_1:output:0/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_34/mulMul'up_sampling2d_34/strided_slice:output:0up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:ä
-up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighbordropout_87/Identity:output:0up_sampling2d_34/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers({
Deconv7/ShapeShape>up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0*
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
shrink_axis_maskg
Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv7/strided_slice_1StridedSliceDeconv7/Shape:output:0&Deconv7/strided_slice_1/stack:output:0(Deconv7/strided_slice_1/stack_1:output:0(Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
Deconv7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv7/strided_slice_2StridedSliceDeconv7/Shape:output:0&Deconv7/strided_slice_2/stack:output:0(Deconv7/strided_slice_2/stack_1:output:0(Deconv7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskO
Deconv7/mul/yConst*
_output_shapes
: *
dtype0*
value	B :m
Deconv7/mulMul Deconv7/strided_slice_1:output:0Deconv7/mul/y:output:0*
T0*
_output_shapes
: O
Deconv7/add/yConst*
_output_shapes
: *
dtype0*
value	B :^
Deconv7/addAddV2Deconv7/mul:z:0Deconv7/add/y:output:0*
T0*
_output_shapes
: Q
Deconv7/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :q
Deconv7/mul_1Mul Deconv7/strided_slice_2:output:0Deconv7/mul_1/y:output:0*
T0*
_output_shapes
: Q
Deconv7/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :d
Deconv7/add_1AddV2Deconv7/mul_1:z:0Deconv7/add_1/y:output:0*
T0*
_output_shapes
: Q
Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :¡
Deconv7/stackPackDeconv7/strided_slice:output:0Deconv7/add:z:0Deconv7/add_1:z:0Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv7/strided_slice_3StridedSliceDeconv7/stack:output:0&Deconv7/strided_slice_3/stack:output:0(Deconv7/strided_slice_3/stack_1:output:0(Deconv7/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp0deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0­
Deconv7/conv2d_transposeConv2DBackpropInputDeconv7/stack:output:0/Deconv7/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Deconv7/BiasAdd/ReadVariableOpReadVariableOp'deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0±
Deconv7/BiasAddBiasAdd!Deconv7/conv2d_transpose:output:0&Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
Deconv7/ReluReluDeconv7/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dropout_88/IdentityIdentityDeconv7/Relu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb
up_sampling2d_35/ShapeShapedropout_88/Identity:output:0*
T0*
_output_shapes
:n
$up_sampling2d_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&up_sampling2d_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&up_sampling2d_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
up_sampling2d_35/strided_sliceStridedSliceup_sampling2d_35/Shape:output:0-up_sampling2d_35/strided_slice/stack:output:0/up_sampling2d_35/strided_slice/stack_1:output:0/up_sampling2d_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
up_sampling2d_35/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_35/mulMul'up_sampling2d_35/strided_slice:output:0up_sampling2d_35/Const:output:0*
T0*
_output_shapes
:ä
-up_sampling2d_35/resize/ResizeNearestNeighborResizeNearestNeighbordropout_88/Identity:output:0up_sampling2d_35/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers({
Deconv8/ShapeShape>up_sampling2d_35/resize/ResizeNearestNeighbor:resized_images:0*
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
shrink_axis_maskg
Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv8/strided_slice_1StridedSliceDeconv8/Shape:output:0&Deconv8/strided_slice_1/stack:output:0(Deconv8/strided_slice_1/stack_1:output:0(Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
Deconv8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv8/strided_slice_2StridedSliceDeconv8/Shape:output:0&Deconv8/strided_slice_2/stack:output:0(Deconv8/strided_slice_2/stack_1:output:0(Deconv8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskO
Deconv8/mul/yConst*
_output_shapes
: *
dtype0*
value	B :m
Deconv8/mulMul Deconv8/strided_slice_1:output:0Deconv8/mul/y:output:0*
T0*
_output_shapes
: O
Deconv8/add/yConst*
_output_shapes
: *
dtype0*
value	B :^
Deconv8/addAddV2Deconv8/mul:z:0Deconv8/add/y:output:0*
T0*
_output_shapes
: Q
Deconv8/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :q
Deconv8/mul_1Mul Deconv8/strided_slice_2:output:0Deconv8/mul_1/y:output:0*
T0*
_output_shapes
: Q
Deconv8/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :d
Deconv8/add_1AddV2Deconv8/mul_1:z:0Deconv8/add_1/y:output:0*
T0*
_output_shapes
: Q
Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :¡
Deconv8/stackPackDeconv8/strided_slice:output:0Deconv8/add:z:0Deconv8/add_1:z:0Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv8/strided_slice_3StridedSliceDeconv8/stack:output:0&Deconv8/strided_slice_3/stack:output:0(Deconv8/strided_slice_3/stack_1:output:0(Deconv8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp0deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0­
Deconv8/conv2d_transposeConv2DBackpropInputDeconv8/stack:output:0/Deconv8/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_35/resize/ResizeNearestNeighbor:resized_images:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Deconv8/BiasAdd/ReadVariableOpReadVariableOp'deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0±
Deconv8/BiasAddBiasAdd!Deconv8/conv2d_transpose:output:0&Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
Deconv8/ReluReluDeconv8/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿU
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
shrink_axis_maske
Final/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
Final/strided_slice_1StridedSliceFinal/Shape:output:0$Final/strided_slice_1/stack:output:0&Final/strided_slice_1/stack_1:output:0&Final/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
Final/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
Final/strided_slice_2StridedSliceFinal/Shape:output:0$Final/strided_slice_2/stack:output:0&Final/strided_slice_2/stack_1:output:0&Final/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
Final/mul/yConst*
_output_shapes
: *
dtype0*
value	B :g
	Final/mulMulFinal/strided_slice_1:output:0Final/mul/y:output:0*
T0*
_output_shapes
: M
Final/add/yConst*
_output_shapes
: *
dtype0*
value	B :X
	Final/addAddV2Final/mul:z:0Final/add/y:output:0*
T0*
_output_shapes
: O
Final/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :k
Final/mul_1MulFinal/strided_slice_2:output:0Final/mul_1/y:output:0*
T0*
_output_shapes
: O
Final/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :^
Final/add_1AddV2Final/mul_1:z:0Final/add_1/y:output:0*
T0*
_output_shapes
: O
Final/stack/3Const*
_output_shapes
: *
dtype0*
value	B :
Final/stackPackFinal/strided_slice:output:0Final/add:z:0Final/add_1:z:0Final/stack/3:output:0*
N*
T0*
_output_shapes
:e
Final/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Final/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
Final/strided_slice_3StridedSliceFinal/stack:output:0$Final/strided_slice_3/stack:output:0&Final/strided_slice_3/stack_1:output:0&Final/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%Final/conv2d_transpose/ReadVariableOpReadVariableOp.final_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0
Final/conv2d_transposeConv2DBackpropInputFinal/stack:output:0-Final/conv2d_transpose/ReadVariableOp:value:0Deconv8/Relu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
~
Final/BiasAdd/ReadVariableOpReadVariableOp%final_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0«
Final/BiasAddBiasAddFinal/conv2d_transpose:output:0$Final/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
Final/SigmoidSigmoidFinal/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
IdentityIdentityFinal/Sigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv7/StatefulPartitionedCall^Deconv3/BiasAdd/ReadVariableOp(^Deconv3/conv2d_transpose/ReadVariableOp^Deconv7/BiasAdd/ReadVariableOp(^Deconv7/conv2d_transpose/ReadVariableOp^Deconv8/BiasAdd/ReadVariableOp(^Deconv8/conv2d_transpose/ReadVariableOp^Final/BiasAdd/ReadVariableOp&^Final/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2@
Deconv3/BiasAdd/ReadVariableOpDeconv3/BiasAdd/ReadVariableOp2R
'Deconv3/conv2d_transpose/ReadVariableOp'Deconv3/conv2d_transpose/ReadVariableOp2@
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
²

'__inference_Deconv7_layer_call_fn_75127

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
B__inference_Deconv7_layer_call_and_return_conditional_losses_73616
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
®

%__inference_Final_layer_call_fn_75265

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
@__inference_Final_layer_call_and_return_conditional_losses_73733
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
²

'__inference_Deconv8_layer_call_fn_75218

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
B__inference_Deconv8_layer_call_and_return_conditional_losses_73684
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

g
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73185

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

µ
@__inference_Conv1_layer_call_and_return_conditional_losses_73756

args_0!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73228x
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
 
_user_specified_nameargs_0
Ý
a
E__inference_dropout_86_layer_call_and_return_conditional_losses_73821

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
:ÿÿÿÿÿÿÿÿÿ$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73299h
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
ïG

H__inference_sequential_19_layer_call_and_return_conditional_losses_73862

inputs%
conv1_73757:
conv1_73759:%
conv2_73772:
conv2_73774:%
conv3_73788:
conv3_73790:%
conv7_73811:@
conv7_73813:@'
deconv3_73825:@@
deconv3_73827:@'
deconv7_73838:@
deconv7_73840:'
deconv8_73851:
deconv8_73853:%
final_73856:
final_73858:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/StatefulPartitionedCall¢Deconv7/StatefulPartitionedCall¢Deconv8/StatefulPartitionedCall¢Final/StatefulPartitionedCallí
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_73757conv1_73759*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73756
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_73772conv2_73774*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73771ò
 max_pooling2d_36/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73467
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv3_73788conv3_73790*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73787æ
dropout_85/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_73798ï
 max_pooling2d_37/PartitionedCallPartitionedCall#dropout_85/PartitionedCall:output:0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73479
Conv7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv7_73811conv7_73813*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73810æ
dropout_86/PartitionedCallPartitionedCall&Conv7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73821ï
 max_pooling2d_38/PartitionedCallPartitionedCall#dropout_86/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73491
 up_sampling2d_33/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73503©
Deconv3/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_33/PartitionedCall:output:0deconv3_73825deconv3_73827*
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
B__inference_Deconv3_layer_call_and_return_conditional_losses_73548ú
dropout_87/PartitionedCallPartitionedCall(Deconv3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_87_layer_call_and_return_conditional_losses_73835
 up_sampling2d_34/PartitionedCallPartitionedCall#dropout_87/PartitionedCall:output:0*
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
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_73571©
Deconv7/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_34/PartitionedCall:output:0deconv7_73838deconv7_73840*
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
B__inference_Deconv7_layer_call_and_return_conditional_losses_73616ú
dropout_88/PartitionedCallPartitionedCall(Deconv7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_88_layer_call_and_return_conditional_losses_73848
 up_sampling2d_35/PartitionedCallPartitionedCall#dropout_88/PartitionedCall:output:0*
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
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_73639©
Deconv8/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_35/PartitionedCall:output:0deconv8_73851deconv8_73853*
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
B__inference_Deconv8_layer_call_and_return_conditional_losses_73684 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_73856final_73858*
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
@__inference_Final_layer_call_and_return_conditional_losses_73733
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv7/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
Â
F
*__inference_dropout_85_layer_call_fn_74944

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
:ÿÿÿÿÿÿÿÿÿ8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_73798h
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
Ö
g
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73503

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73204
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
 
_user_specified_nameargs_0
³

d
E__inference_dropout_86_layer_call_and_return_conditional_losses_73963

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
Ý
a
E__inference_dropout_85_layer_call_and_return_conditional_losses_74954

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
:ÿÿÿÿÿÿÿÿÿ8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_73274h
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
¯
~
E__inference_dropout_85_layer_call_and_return_conditional_losses_74038

inputs
identity¢StatefulPartitionedCallË
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_74022w
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

g
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73204

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
å

%__inference_Conv7_layer_call_fn_74978

args_0!
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73810w
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
 
_user_specified_nameargs_0

µ
@__inference_Conv7_layer_call_and_return_conditional_losses_73810

args_0!
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73288w
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
 
_user_specified_nameargs_0
ø
c
E__inference_dropout_86_layer_call_and_return_conditional_losses_73299

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
»
L
0__inference_up_sampling2d_34_layer_call_fn_75106

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
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_73571
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

ù
@__inference_Conv3_layer_call_and_return_conditional_losses_73263

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
Ö
g
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_75017

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73185
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
 
_user_specified_nameargs_0

ù
@__inference_Conv2_layer_call_and_return_conditional_losses_73245

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
à#

@__inference_Final_layer_call_and_return_conditional_losses_73733

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

g
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_73639

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
Ö
g
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_74969

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73173
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
 
_user_specified_nameargs_0
é

%__inference_Conv1_layer_call_fn_74884

args_0!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73756x
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
 
_user_specified_nameargs_0
¯
~
E__inference_dropout_86_layer_call_and_return_conditional_losses_73979

inputs
identity¢StatefulPartitionedCallË
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73963w
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

F
*__inference_dropout_87_layer_call_fn_75079

inputs
identityÍ
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_87_layer_call_and_return_conditional_losses_73835z
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
Â
F
*__inference_dropout_86_layer_call_fn_74992

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
:ÿÿÿÿÿÿÿÿÿ$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73821h
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

g
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_75118

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

F
*__inference_dropout_88_layer_call_fn_75170

inputs
identityÍ
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_88_layer_call_and_return_conditional_losses_73848z
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
Å
d
E__inference_dropout_88_layer_call_and_return_conditional_losses_75192

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
Ö
g
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73467

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73161
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
 
_user_specified_nameargs_0

g
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73173

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
À
c
E__inference_dropout_87_layer_call_and_return_conditional_losses_75089

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

c
*__inference_dropout_85_layer_call_fn_74949

inputs
identity¢StatefulPartitionedCallË
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_74038w
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
Ý
a
E__inference_dropout_85_layer_call_and_return_conditional_losses_73798

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
:ÿÿÿÿÿÿÿÿÿ8L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_73274h
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
é

%__inference_Conv2_layer_call_fn_74902

args_0!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73771x
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
 
_user_specified_nameargs_0
ã#

B__inference_Deconv3_layer_call_and_return_conditional_losses_73548

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

µ
@__inference_Conv7_layer_call_and_return_conditional_losses_74987

args_0!
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73288w
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
 
_user_specified_nameargs_0
»
L
0__inference_max_pooling2d_37_layer_call_fn_74964

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73479
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
 
_user_specified_nameargs_0

µ
@__inference_Conv1_layer_call_and_return_conditional_losses_74893

args_0!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73228x
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
 
_user_specified_nameargs_0
N

H__inference_sequential_19_layer_call_and_return_conditional_losses_74194

inputs%
conv1_74143:
conv1_74145:%
conv2_74148:
conv2_74150:%
conv3_74154:
conv3_74156:%
conv7_74161:@
conv7_74163:@'
deconv3_74169:@@
deconv3_74171:@'
deconv7_74176:@
deconv7_74178:'
deconv8_74183:
deconv8_74185:%
final_74188:
final_74190:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/StatefulPartitionedCall¢Deconv7/StatefulPartitionedCall¢Deconv8/StatefulPartitionedCall¢Final/StatefulPartitionedCall¢"dropout_85/StatefulPartitionedCall¢"dropout_86/StatefulPartitionedCall¢"dropout_87/StatefulPartitionedCall¢"dropout_88/StatefulPartitionedCallí
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_74143conv1_74145*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73756
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_74148conv2_74150*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73771ò
 max_pooling2d_36/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73467
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv3_74154conv3_74156*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73787ö
"dropout_85/StatefulPartitionedCallStatefulPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_74038÷
 max_pooling2d_37/PartitionedCallPartitionedCall+dropout_85/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73479
Conv7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv7_74161conv7_74163*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73810
"dropout_86/StatefulPartitionedCallStatefulPartitionedCall&Conv7/StatefulPartitionedCall:output:0#^dropout_85/StatefulPartitionedCall*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73979÷
 max_pooling2d_38/PartitionedCallPartitionedCall+dropout_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73491
 up_sampling2d_33/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73503©
Deconv3/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_33/PartitionedCall:output:0deconv3_74169deconv3_74171*
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
B__inference_Deconv3_layer_call_and_return_conditional_losses_73548¯
"dropout_87/StatefulPartitionedCallStatefulPartitionedCall(Deconv3/StatefulPartitionedCall:output:0#^dropout_86/StatefulPartitionedCall*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_87_layer_call_and_return_conditional_losses_73940
 up_sampling2d_34/PartitionedCallPartitionedCall+dropout_87/StatefulPartitionedCall:output:0*
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
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_73571©
Deconv7/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_34/PartitionedCall:output:0deconv7_74176deconv7_74178*
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
B__inference_Deconv7_layer_call_and_return_conditional_losses_73616¯
"dropout_88/StatefulPartitionedCallStatefulPartitionedCall(Deconv7/StatefulPartitionedCall:output:0#^dropout_87/StatefulPartitionedCall*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_88_layer_call_and_return_conditional_losses_73917
 up_sampling2d_35/PartitionedCallPartitionedCall+dropout_88/StatefulPartitionedCall:output:0*
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
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_73639©
Deconv8/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_35/PartitionedCall:output:0deconv8_74183deconv8_74185*
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
B__inference_Deconv8_layer_call_and_return_conditional_losses_73684 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_74188final_74190*
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
@__inference_Final_layer_call_and_return_conditional_losses_73733
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv7/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall#^dropout_85/StatefulPartitionedCall#^dropout_86/StatefulPartitionedCall#^dropout_87/StatefulPartitionedCall#^dropout_88/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall2H
"dropout_85/StatefulPartitionedCall"dropout_85/StatefulPartitionedCall2H
"dropout_86/StatefulPartitionedCall"dropout_86/StatefulPartitionedCall2H
"dropout_87/StatefulPartitionedCall"dropout_87/StatefulPartitionedCall2H
"dropout_88/StatefulPartitionedCall"dropout_88/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
ýû

 __inference__wrapped_model_73458
conv1_input3
sequential_19_conv1_73229:'
sequential_19_conv1_73231:3
sequential_19_conv2_73246:'
sequential_19_conv2_73248:3
sequential_19_conv3_73264:'
sequential_19_conv3_73266:3
sequential_19_conv7_73289:@'
sequential_19_conv7_73291:@X
>sequential_19_deconv3_conv2d_transpose_readvariableop_resource:@@C
5sequential_19_deconv3_biasadd_readvariableop_resource:@X
>sequential_19_deconv7_conv2d_transpose_readvariableop_resource:@C
5sequential_19_deconv7_biasadd_readvariableop_resource:X
>sequential_19_deconv8_conv2d_transpose_readvariableop_resource:C
5sequential_19_deconv8_biasadd_readvariableop_resource:V
<sequential_19_final_conv2d_transpose_readvariableop_resource:A
3sequential_19_final_biasadd_readvariableop_resource:
identity¢+sequential_19/Conv1/StatefulPartitionedCall¢+sequential_19/Conv2/StatefulPartitionedCall¢+sequential_19/Conv3/StatefulPartitionedCall¢+sequential_19/Conv7/StatefulPartitionedCall¢,sequential_19/Deconv3/BiasAdd/ReadVariableOp¢5sequential_19/Deconv3/conv2d_transpose/ReadVariableOp¢,sequential_19/Deconv7/BiasAdd/ReadVariableOp¢5sequential_19/Deconv7/conv2d_transpose/ReadVariableOp¢,sequential_19/Deconv8/BiasAdd/ReadVariableOp¢5sequential_19/Deconv8/conv2d_transpose/ReadVariableOp¢*sequential_19/Final/BiasAdd/ReadVariableOp¢3sequential_19/Final/conv2d_transpose/ReadVariableOp
+sequential_19/Conv1/StatefulPartitionedCallStatefulPartitionedCallconv1_inputsequential_19_conv1_73229sequential_19_conv1_73231*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73228Å
+sequential_19/Conv2/StatefulPartitionedCallStatefulPartitionedCall4sequential_19/Conv1/StatefulPartitionedCall:output:0sequential_19_conv2_73246sequential_19_conv2_73248*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73245
.sequential_19/max_pooling2d_36/PartitionedCallPartitionedCall4sequential_19/Conv2/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73161Ç
+sequential_19/Conv3/StatefulPartitionedCallStatefulPartitionedCall7sequential_19/max_pooling2d_36/PartitionedCall:output:0sequential_19_conv3_73264sequential_19_conv3_73266*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73263
(sequential_19/dropout_85/PartitionedCallPartitionedCall4sequential_19/Conv3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_73274
.sequential_19/max_pooling2d_37/PartitionedCallPartitionedCall1sequential_19/dropout_85/PartitionedCall:output:0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73173Ç
+sequential_19/Conv7/StatefulPartitionedCallStatefulPartitionedCall7sequential_19/max_pooling2d_37/PartitionedCall:output:0sequential_19_conv7_73289sequential_19_conv7_73291*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73288
(sequential_19/dropout_86/PartitionedCallPartitionedCall4sequential_19/Conv7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73299
.sequential_19/max_pooling2d_38/PartitionedCallPartitionedCall1sequential_19/dropout_86/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73185£
.sequential_19/up_sampling2d_33/PartitionedCallPartitionedCall7sequential_19/max_pooling2d_38/PartitionedCall:output:0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73204
sequential_19/Deconv3/ShapeShape7sequential_19/up_sampling2d_33/PartitionedCall:output:0*
T0*
_output_shapes
:s
)sequential_19/Deconv3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_19/Deconv3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/Deconv3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_19/Deconv3/strided_sliceStridedSlice$sequential_19/Deconv3/Shape:output:02sequential_19/Deconv3/strided_slice/stack:output:04sequential_19/Deconv3/strided_slice/stack_1:output:04sequential_19/Deconv3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+sequential_19/Deconv3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_19/Deconv3/strided_slice_1StridedSlice$sequential_19/Deconv3/Shape:output:04sequential_19/Deconv3/strided_slice_1/stack:output:06sequential_19/Deconv3/strided_slice_1/stack_1:output:06sequential_19/Deconv3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+sequential_19/Deconv3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_19/Deconv3/strided_slice_2StridedSlice$sequential_19/Deconv3/Shape:output:04sequential_19/Deconv3/strided_slice_2/stack:output:06sequential_19/Deconv3/strided_slice_2/stack_1:output:06sequential_19/Deconv3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
sequential_19/Deconv3/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv3/mulMul.sequential_19/Deconv3/strided_slice_1:output:0$sequential_19/Deconv3/mul/y:output:0*
T0*
_output_shapes
: ]
sequential_19/Deconv3/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv3/addAddV2sequential_19/Deconv3/mul:z:0$sequential_19/Deconv3/add/y:output:0*
T0*
_output_shapes
: _
sequential_19/Deconv3/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv3/mul_1Mul.sequential_19/Deconv3/strided_slice_2:output:0&sequential_19/Deconv3/mul_1/y:output:0*
T0*
_output_shapes
: _
sequential_19/Deconv3/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv3/add_1AddV2sequential_19/Deconv3/mul_1:z:0&sequential_19/Deconv3/add_1/y:output:0*
T0*
_output_shapes
: _
sequential_19/Deconv3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@ç
sequential_19/Deconv3/stackPack,sequential_19/Deconv3/strided_slice:output:0sequential_19/Deconv3/add:z:0sequential_19/Deconv3/add_1:z:0&sequential_19/Deconv3/stack/3:output:0*
N*
T0*
_output_shapes
:u
+sequential_19/Deconv3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_19/Deconv3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_19/Deconv3/strided_slice_3StridedSlice$sequential_19/Deconv3/stack:output:04sequential_19/Deconv3/strided_slice_3/stack:output:06sequential_19/Deconv3/strided_slice_3/stack_1:output:06sequential_19/Deconv3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¼
5sequential_19/Deconv3/conv2d_transpose/ReadVariableOpReadVariableOp>sequential_19_deconv3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ð
&sequential_19/Deconv3/conv2d_transposeConv2DBackpropInput$sequential_19/Deconv3/stack:output:0=sequential_19/Deconv3/conv2d_transpose/ReadVariableOp:value:07sequential_19/up_sampling2d_33/PartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

,sequential_19/Deconv3/BiasAdd/ReadVariableOpReadVariableOp5sequential_19_deconv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Û
sequential_19/Deconv3/BiasAddBiasAdd/sequential_19/Deconv3/conv2d_transpose:output:04sequential_19/Deconv3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
sequential_19/Deconv3/ReluRelu&sequential_19/Deconv3/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@£
!sequential_19/dropout_87/IdentityIdentity(sequential_19/Deconv3/Relu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@~
$sequential_19/up_sampling2d_34/ShapeShape*sequential_19/dropout_87/Identity:output:0*
T0*
_output_shapes
:|
2sequential_19/up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4sequential_19/up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_19/up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
,sequential_19/up_sampling2d_34/strided_sliceStridedSlice-sequential_19/up_sampling2d_34/Shape:output:0;sequential_19/up_sampling2d_34/strided_slice/stack:output:0=sequential_19/up_sampling2d_34/strided_slice/stack_1:output:0=sequential_19/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:u
$sequential_19/up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      ´
"sequential_19/up_sampling2d_34/mulMul5sequential_19/up_sampling2d_34/strided_slice:output:0-sequential_19/up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:
;sequential_19/up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_19/dropout_87/Identity:output:0&sequential_19/up_sampling2d_34/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(
sequential_19/Deconv7/ShapeShapeLsequential_19/up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:s
)sequential_19/Deconv7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_19/Deconv7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/Deconv7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_19/Deconv7/strided_sliceStridedSlice$sequential_19/Deconv7/Shape:output:02sequential_19/Deconv7/strided_slice/stack:output:04sequential_19/Deconv7/strided_slice/stack_1:output:04sequential_19/Deconv7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+sequential_19/Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_19/Deconv7/strided_slice_1StridedSlice$sequential_19/Deconv7/Shape:output:04sequential_19/Deconv7/strided_slice_1/stack:output:06sequential_19/Deconv7/strided_slice_1/stack_1:output:06sequential_19/Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+sequential_19/Deconv7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_19/Deconv7/strided_slice_2StridedSlice$sequential_19/Deconv7/Shape:output:04sequential_19/Deconv7/strided_slice_2/stack:output:06sequential_19/Deconv7/strided_slice_2/stack_1:output:06sequential_19/Deconv7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
sequential_19/Deconv7/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv7/mulMul.sequential_19/Deconv7/strided_slice_1:output:0$sequential_19/Deconv7/mul/y:output:0*
T0*
_output_shapes
: ]
sequential_19/Deconv7/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv7/addAddV2sequential_19/Deconv7/mul:z:0$sequential_19/Deconv7/add/y:output:0*
T0*
_output_shapes
: _
sequential_19/Deconv7/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv7/mul_1Mul.sequential_19/Deconv7/strided_slice_2:output:0&sequential_19/Deconv7/mul_1/y:output:0*
T0*
_output_shapes
: _
sequential_19/Deconv7/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv7/add_1AddV2sequential_19/Deconv7/mul_1:z:0&sequential_19/Deconv7/add_1/y:output:0*
T0*
_output_shapes
: _
sequential_19/Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ç
sequential_19/Deconv7/stackPack,sequential_19/Deconv7/strided_slice:output:0sequential_19/Deconv7/add:z:0sequential_19/Deconv7/add_1:z:0&sequential_19/Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:u
+sequential_19/Deconv7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_19/Deconv7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_19/Deconv7/strided_slice_3StridedSlice$sequential_19/Deconv7/stack:output:04sequential_19/Deconv7/strided_slice_3/stack:output:06sequential_19/Deconv7/strided_slice_3/stack_1:output:06sequential_19/Deconv7/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¼
5sequential_19/Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp>sequential_19_deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0å
&sequential_19/Deconv7/conv2d_transposeConv2DBackpropInput$sequential_19/Deconv7/stack:output:0=sequential_19/Deconv7/conv2d_transpose/ReadVariableOp:value:0Lsequential_19/up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

,sequential_19/Deconv7/BiasAdd/ReadVariableOpReadVariableOp5sequential_19_deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Û
sequential_19/Deconv7/BiasAddBiasAdd/sequential_19/Deconv7/conv2d_transpose:output:04sequential_19/Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
sequential_19/Deconv7/ReluRelu&sequential_19/Deconv7/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ£
!sequential_19/dropout_88/IdentityIdentity(sequential_19/Deconv7/Relu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ~
$sequential_19/up_sampling2d_35/ShapeShape*sequential_19/dropout_88/Identity:output:0*
T0*
_output_shapes
:|
2sequential_19/up_sampling2d_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4sequential_19/up_sampling2d_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_19/up_sampling2d_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
,sequential_19/up_sampling2d_35/strided_sliceStridedSlice-sequential_19/up_sampling2d_35/Shape:output:0;sequential_19/up_sampling2d_35/strided_slice/stack:output:0=sequential_19/up_sampling2d_35/strided_slice/stack_1:output:0=sequential_19/up_sampling2d_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:u
$sequential_19/up_sampling2d_35/ConstConst*
_output_shapes
:*
dtype0*
valueB"      ´
"sequential_19/up_sampling2d_35/mulMul5sequential_19/up_sampling2d_35/strided_slice:output:0-sequential_19/up_sampling2d_35/Const:output:0*
T0*
_output_shapes
:
;sequential_19/up_sampling2d_35/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_19/dropout_88/Identity:output:0&sequential_19/up_sampling2d_35/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
sequential_19/Deconv8/ShapeShapeLsequential_19/up_sampling2d_35/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:s
)sequential_19/Deconv8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_19/Deconv8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/Deconv8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_19/Deconv8/strided_sliceStridedSlice$sequential_19/Deconv8/Shape:output:02sequential_19/Deconv8/strided_slice/stack:output:04sequential_19/Deconv8/strided_slice/stack_1:output:04sequential_19/Deconv8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+sequential_19/Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_19/Deconv8/strided_slice_1StridedSlice$sequential_19/Deconv8/Shape:output:04sequential_19/Deconv8/strided_slice_1/stack:output:06sequential_19/Deconv8/strided_slice_1/stack_1:output:06sequential_19/Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+sequential_19/Deconv8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_19/Deconv8/strided_slice_2StridedSlice$sequential_19/Deconv8/Shape:output:04sequential_19/Deconv8/strided_slice_2/stack:output:06sequential_19/Deconv8/strided_slice_2/stack_1:output:06sequential_19/Deconv8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
sequential_19/Deconv8/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv8/mulMul.sequential_19/Deconv8/strided_slice_1:output:0$sequential_19/Deconv8/mul/y:output:0*
T0*
_output_shapes
: ]
sequential_19/Deconv8/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv8/addAddV2sequential_19/Deconv8/mul:z:0$sequential_19/Deconv8/add/y:output:0*
T0*
_output_shapes
: _
sequential_19/Deconv8/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv8/mul_1Mul.sequential_19/Deconv8/strided_slice_2:output:0&sequential_19/Deconv8/mul_1/y:output:0*
T0*
_output_shapes
: _
sequential_19/Deconv8/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Deconv8/add_1AddV2sequential_19/Deconv8/mul_1:z:0&sequential_19/Deconv8/add_1/y:output:0*
T0*
_output_shapes
: _
sequential_19/Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ç
sequential_19/Deconv8/stackPack,sequential_19/Deconv8/strided_slice:output:0sequential_19/Deconv8/add:z:0sequential_19/Deconv8/add_1:z:0&sequential_19/Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:u
+sequential_19/Deconv8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_19/Deconv8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/Deconv8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%sequential_19/Deconv8/strided_slice_3StridedSlice$sequential_19/Deconv8/stack:output:04sequential_19/Deconv8/strided_slice_3/stack:output:06sequential_19/Deconv8/strided_slice_3/stack_1:output:06sequential_19/Deconv8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¼
5sequential_19/Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp>sequential_19_deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0å
&sequential_19/Deconv8/conv2d_transposeConv2DBackpropInput$sequential_19/Deconv8/stack:output:0=sequential_19/Deconv8/conv2d_transpose/ReadVariableOp:value:0Lsequential_19/up_sampling2d_35/resize/ResizeNearestNeighbor:resized_images:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

,sequential_19/Deconv8/BiasAdd/ReadVariableOpReadVariableOp5sequential_19_deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Û
sequential_19/Deconv8/BiasAddBiasAdd/sequential_19/Deconv8/conv2d_transpose:output:04sequential_19/Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
sequential_19/Deconv8/ReluRelu&sequential_19/Deconv8/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿq
sequential_19/Final/ShapeShape(sequential_19/Deconv8/Relu:activations:0*
T0*
_output_shapes
:q
'sequential_19/Final/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_19/Final/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_19/Final/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_19/Final/strided_sliceStridedSlice"sequential_19/Final/Shape:output:00sequential_19/Final/strided_slice/stack:output:02sequential_19/Final/strided_slice/stack_1:output:02sequential_19/Final/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)sequential_19/Final/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/Final/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/Final/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
#sequential_19/Final/strided_slice_1StridedSlice"sequential_19/Final/Shape:output:02sequential_19/Final/strided_slice_1/stack:output:04sequential_19/Final/strided_slice_1/stack_1:output:04sequential_19/Final/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)sequential_19/Final/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/Final/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/Final/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
#sequential_19/Final/strided_slice_2StridedSlice"sequential_19/Final/Shape:output:02sequential_19/Final/strided_slice_2/stack:output:04sequential_19/Final/strided_slice_2/stack_1:output:04sequential_19/Final/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
sequential_19/Final/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Final/mulMul,sequential_19/Final/strided_slice_1:output:0"sequential_19/Final/mul/y:output:0*
T0*
_output_shapes
: [
sequential_19/Final/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Final/addAddV2sequential_19/Final/mul:z:0"sequential_19/Final/add/y:output:0*
T0*
_output_shapes
: ]
sequential_19/Final/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Final/mul_1Mul,sequential_19/Final/strided_slice_2:output:0$sequential_19/Final/mul_1/y:output:0*
T0*
_output_shapes
: ]
sequential_19/Final/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/Final/add_1AddV2sequential_19/Final/mul_1:z:0$sequential_19/Final/add_1/y:output:0*
T0*
_output_shapes
: ]
sequential_19/Final/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ý
sequential_19/Final/stackPack*sequential_19/Final/strided_slice:output:0sequential_19/Final/add:z:0sequential_19/Final/add_1:z:0$sequential_19/Final/stack/3:output:0*
N*
T0*
_output_shapes
:s
)sequential_19/Final/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_19/Final/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/Final/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
#sequential_19/Final/strided_slice_3StridedSlice"sequential_19/Final/stack:output:02sequential_19/Final/strided_slice_3/stack:output:04sequential_19/Final/strided_slice_3/stack_1:output:04sequential_19/Final/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¸
3sequential_19/Final/conv2d_transpose/ReadVariableOpReadVariableOp<sequential_19_final_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0»
$sequential_19/Final/conv2d_transposeConv2DBackpropInput"sequential_19/Final/stack:output:0;sequential_19/Final/conv2d_transpose/ReadVariableOp:value:0(sequential_19/Deconv8/Relu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

*sequential_19/Final/BiasAdd/ReadVariableOpReadVariableOp3sequential_19_final_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Õ
sequential_19/Final/BiasAddBiasAdd-sequential_19/Final/conv2d_transpose:output:02sequential_19/Final/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
sequential_19/Final/SigmoidSigmoid$sequential_19/Final/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
IdentityIdentitysequential_19/Final/Sigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp,^sequential_19/Conv1/StatefulPartitionedCall,^sequential_19/Conv2/StatefulPartitionedCall,^sequential_19/Conv3/StatefulPartitionedCall,^sequential_19/Conv7/StatefulPartitionedCall-^sequential_19/Deconv3/BiasAdd/ReadVariableOp6^sequential_19/Deconv3/conv2d_transpose/ReadVariableOp-^sequential_19/Deconv7/BiasAdd/ReadVariableOp6^sequential_19/Deconv7/conv2d_transpose/ReadVariableOp-^sequential_19/Deconv8/BiasAdd/ReadVariableOp6^sequential_19/Deconv8/conv2d_transpose/ReadVariableOp+^sequential_19/Final/BiasAdd/ReadVariableOp4^sequential_19/Final/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 2Z
+sequential_19/Conv1/StatefulPartitionedCall+sequential_19/Conv1/StatefulPartitionedCall2Z
+sequential_19/Conv2/StatefulPartitionedCall+sequential_19/Conv2/StatefulPartitionedCall2Z
+sequential_19/Conv3/StatefulPartitionedCall+sequential_19/Conv3/StatefulPartitionedCall2Z
+sequential_19/Conv7/StatefulPartitionedCall+sequential_19/Conv7/StatefulPartitionedCall2\
,sequential_19/Deconv3/BiasAdd/ReadVariableOp,sequential_19/Deconv3/BiasAdd/ReadVariableOp2n
5sequential_19/Deconv3/conv2d_transpose/ReadVariableOp5sequential_19/Deconv3/conv2d_transpose/ReadVariableOp2\
,sequential_19/Deconv7/BiasAdd/ReadVariableOp,sequential_19/Deconv7/BiasAdd/ReadVariableOp2n
5sequential_19/Deconv7/conv2d_transpose/ReadVariableOp5sequential_19/Deconv7/conv2d_transpose/ReadVariableOp2\
,sequential_19/Deconv8/BiasAdd/ReadVariableOp,sequential_19/Deconv8/BiasAdd/ReadVariableOp2n
5sequential_19/Deconv8/conv2d_transpose/ReadVariableOp5sequential_19/Deconv8/conv2d_transpose/ReadVariableOp2X
*sequential_19/Final/BiasAdd/ReadVariableOp*sequential_19/Final/BiasAdd/ReadVariableOp2j
3sequential_19/Final/conv2d_transpose/ReadVariableOp3sequential_19/Final/conv2d_transpose/ReadVariableOp:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input
²

'__inference_Deconv3_layer_call_fn_75036

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
B__inference_Deconv3_layer_call_and_return_conditional_losses_73548
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
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_75209

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
À
c
E__inference_dropout_88_layer_call_and_return_conditional_losses_75180

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
ã#

B__inference_Deconv3_layer_call_and_return_conditional_losses_75074

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
Å
d
E__inference_dropout_88_layer_call_and_return_conditional_losses_73917

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

c
*__inference_dropout_86_layer_call_fn_74997

inputs
identity¢StatefulPartitionedCallË
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73979w
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
»
L
0__inference_up_sampling2d_35_layer_call_fn_75197

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
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_73639
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
Ý
c
*__inference_dropout_88_layer_call_fn_75175

inputs
identity¢StatefulPartitionedCallÝ
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_88_layer_call_and_return_conditional_losses_73917
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

µ
@__inference_Conv3_layer_call_and_return_conditional_losses_74939

args_0!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73263w
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
 
_user_specified_nameargs_0
Êp
«
__inference__traced_save_75497
file_prefix+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop+
'savev2_conv2_kernel_read_readvariableop)
%savev2_conv2_bias_read_readvariableop+
'savev2_conv3_kernel_read_readvariableop)
%savev2_conv3_bias_read_readvariableop+
'savev2_conv7_kernel_read_readvariableop)
%savev2_conv7_bias_read_readvariableop-
)savev2_deconv3_kernel_read_readvariableop+
'savev2_deconv3_bias_read_readvariableop-
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
.savev2_adam_conv7_kernel_m_read_readvariableop0
,savev2_adam_conv7_bias_m_read_readvariableop4
0savev2_adam_deconv3_kernel_m_read_readvariableop2
.savev2_adam_deconv3_bias_m_read_readvariableop4
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
.savev2_adam_conv7_kernel_v_read_readvariableop0
,savev2_adam_conv7_bias_v_read_readvariableop4
0savev2_adam_deconv3_kernel_v_read_readvariableop2
.savev2_adam_deconv3_bias_v_read_readvariableop4
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
:  
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*À
value¶B³:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHâ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Å
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop'savev2_conv3_kernel_read_readvariableop%savev2_conv3_bias_read_readvariableop'savev2_conv7_kernel_read_readvariableop%savev2_conv7_bias_read_readvariableop)savev2_deconv3_kernel_read_readvariableop'savev2_deconv3_bias_read_readvariableop)savev2_deconv7_kernel_read_readvariableop'savev2_deconv7_bias_read_readvariableop)savev2_deconv8_kernel_read_readvariableop'savev2_deconv8_bias_read_readvariableop'savev2_final_kernel_read_readvariableop%savev2_final_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_conv1_kernel_m_read_readvariableop,savev2_adam_conv1_bias_m_read_readvariableop.savev2_adam_conv2_kernel_m_read_readvariableop,savev2_adam_conv2_bias_m_read_readvariableop.savev2_adam_conv3_kernel_m_read_readvariableop,savev2_adam_conv3_bias_m_read_readvariableop.savev2_adam_conv7_kernel_m_read_readvariableop,savev2_adam_conv7_bias_m_read_readvariableop0savev2_adam_deconv3_kernel_m_read_readvariableop.savev2_adam_deconv3_bias_m_read_readvariableop0savev2_adam_deconv7_kernel_m_read_readvariableop.savev2_adam_deconv7_bias_m_read_readvariableop0savev2_adam_deconv8_kernel_m_read_readvariableop.savev2_adam_deconv8_bias_m_read_readvariableop.savev2_adam_final_kernel_m_read_readvariableop,savev2_adam_final_bias_m_read_readvariableop.savev2_adam_conv1_kernel_v_read_readvariableop,savev2_adam_conv1_bias_v_read_readvariableop.savev2_adam_conv2_kernel_v_read_readvariableop,savev2_adam_conv2_bias_v_read_readvariableop.savev2_adam_conv3_kernel_v_read_readvariableop,savev2_adam_conv3_bias_v_read_readvariableop.savev2_adam_conv7_kernel_v_read_readvariableop,savev2_adam_conv7_bias_v_read_readvariableop0savev2_adam_deconv3_kernel_v_read_readvariableop.savev2_adam_deconv3_bias_v_read_readvariableop0savev2_adam_deconv7_kernel_v_read_readvariableop.savev2_adam_deconv7_bias_v_read_readvariableop0savev2_adam_deconv8_kernel_v_read_readvariableop.savev2_adam_deconv8_bias_v_read_readvariableop.savev2_adam_final_kernel_v_read_readvariableop,savev2_adam_final_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	
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

identity_1Identity_1:output:0*ë
_input_shapesÙ
Ö: :::::::@:@:@@:@:@:::::: : : : : : : : : :::::::@:@:@@:@:@::::::::::::@:@:@@:@:@:::::: 2(
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
:@: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:@: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:,$(
&
_output_shapes
:@: %

_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:: -
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
:@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@:,4(
&
_output_shapes
:@: 5
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
:: 9

_output_shapes
:::

_output_shapes
: 
þG

H__inference_sequential_19_layer_call_and_return_conditional_losses_74320
conv1_input%
conv1_74269:
conv1_74271:%
conv2_74274:
conv2_74276:%
conv3_74280:
conv3_74282:%
conv7_74287:@
conv7_74289:@'
deconv3_74295:@@
deconv3_74297:@'
deconv7_74302:@
deconv7_74304:'
deconv8_74309:
deconv8_74311:%
final_74314:
final_74316:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/StatefulPartitionedCall¢Deconv7/StatefulPartitionedCall¢Deconv8/StatefulPartitionedCall¢Final/StatefulPartitionedCallò
Conv1/StatefulPartitionedCallStatefulPartitionedCallconv1_inputconv1_74269conv1_74271*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73756
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_74274conv2_74276*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73771ò
 max_pooling2d_36/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73467
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv3_74280conv3_74282*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73787æ
dropout_85/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_73798ï
 max_pooling2d_37/PartitionedCallPartitionedCall#dropout_85/PartitionedCall:output:0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73479
Conv7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv7_74287conv7_74289*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73810æ
dropout_86/PartitionedCallPartitionedCall&Conv7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73821ï
 max_pooling2d_38/PartitionedCallPartitionedCall#dropout_86/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73491
 up_sampling2d_33/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73503©
Deconv3/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_33/PartitionedCall:output:0deconv3_74295deconv3_74297*
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
B__inference_Deconv3_layer_call_and_return_conditional_losses_73548ú
dropout_87/PartitionedCallPartitionedCall(Deconv3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_87_layer_call_and_return_conditional_losses_73835
 up_sampling2d_34/PartitionedCallPartitionedCall#dropout_87/PartitionedCall:output:0*
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
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_73571©
Deconv7/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_34/PartitionedCall:output:0deconv7_74302deconv7_74304*
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
B__inference_Deconv7_layer_call_and_return_conditional_losses_73616ú
dropout_88/PartitionedCallPartitionedCall(Deconv7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_88_layer_call_and_return_conditional_losses_73848
 up_sampling2d_35/PartitionedCallPartitionedCall#dropout_88/PartitionedCall:output:0*
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
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_73639©
Deconv8/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_35/PartitionedCall:output:0deconv8_74309deconv8_74311*
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
B__inference_Deconv8_layer_call_and_return_conditional_losses_73684 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_74314final_74316*
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
@__inference_Final_layer_call_and_return_conditional_losses_73733
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv7/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input
»
L
0__inference_max_pooling2d_38_layer_call_fn_75012

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73491
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
 
_user_specified_nameargs_0
ø
c
E__inference_dropout_85_layer_call_and_return_conditional_losses_73274

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
ã#

B__inference_Deconv8_layer_call_and_return_conditional_losses_75256

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
Ö
g
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73491

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73185
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
 
_user_specified_nameargs_0
ª
Ù
-__inference_sequential_19_layer_call_fn_74417

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
	unknown_9:@

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_73862
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs
Å
d
E__inference_dropout_87_layer_call_and_return_conditional_losses_75101

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
Ö
g
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_75027

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73204
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
 
_user_specified_nameargs_0

g
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73161

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
å

%__inference_Conv3_layer_call_fn_74930

args_0!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73787w
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
 
_user_specified_nameargs_0
»
L
0__inference_max_pooling2d_36_layer_call_fn_74916

args_0
identityÜ
PartitionedCallPartitionedCallargs_0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73467
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
 
_user_specified_nameargs_0

µ
@__inference_Conv2_layer_call_and_return_conditional_losses_74911

args_0!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73245x
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
 
_user_specified_nameargs_0
N
¢
H__inference_sequential_19_layer_call_and_return_conditional_losses_74374
conv1_input%
conv1_74323:
conv1_74325:%
conv2_74328:
conv2_74330:%
conv3_74334:
conv3_74336:%
conv7_74341:@
conv7_74343:@'
deconv3_74349:@@
deconv3_74351:@'
deconv7_74356:@
deconv7_74358:'
deconv8_74363:
deconv8_74365:%
final_74368:
final_74370:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/StatefulPartitionedCall¢Deconv7/StatefulPartitionedCall¢Deconv8/StatefulPartitionedCall¢Final/StatefulPartitionedCall¢"dropout_85/StatefulPartitionedCall¢"dropout_86/StatefulPartitionedCall¢"dropout_87/StatefulPartitionedCall¢"dropout_88/StatefulPartitionedCallò
Conv1/StatefulPartitionedCallStatefulPartitionedCallconv1_inputconv1_74323conv1_74325*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73756
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_74328conv2_74330*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73771ò
 max_pooling2d_36/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73467
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv3_74334conv3_74336*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73787ö
"dropout_85/StatefulPartitionedCallStatefulPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_74038÷
 max_pooling2d_37/PartitionedCallPartitionedCall+dropout_85/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73479
Conv7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv7_74341conv7_74343*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73810
"dropout_86/StatefulPartitionedCallStatefulPartitionedCall&Conv7/StatefulPartitionedCall:output:0#^dropout_85/StatefulPartitionedCall*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73979÷
 max_pooling2d_38/PartitionedCallPartitionedCall+dropout_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73491
 up_sampling2d_33/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73503©
Deconv3/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_33/PartitionedCall:output:0deconv3_74349deconv3_74351*
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
B__inference_Deconv3_layer_call_and_return_conditional_losses_73548¯
"dropout_87/StatefulPartitionedCallStatefulPartitionedCall(Deconv3/StatefulPartitionedCall:output:0#^dropout_86/StatefulPartitionedCall*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_87_layer_call_and_return_conditional_losses_73940
 up_sampling2d_34/PartitionedCallPartitionedCall+dropout_87/StatefulPartitionedCall:output:0*
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
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_73571©
Deconv7/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_34/PartitionedCall:output:0deconv7_74356deconv7_74358*
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
B__inference_Deconv7_layer_call_and_return_conditional_losses_73616¯
"dropout_88/StatefulPartitionedCallStatefulPartitionedCall(Deconv7/StatefulPartitionedCall:output:0#^dropout_87/StatefulPartitionedCall*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_88_layer_call_and_return_conditional_losses_73917
 up_sampling2d_35/PartitionedCallPartitionedCall+dropout_88/StatefulPartitionedCall:output:0*
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
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_73639©
Deconv8/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_35/PartitionedCall:output:0deconv8_74363deconv8_74365*
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
B__inference_Deconv8_layer_call_and_return_conditional_losses_73684 
Final/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0final_74368final_74370*
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
@__inference_Final_layer_call_and_return_conditional_losses_73733
IdentityIdentity&Final/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv7/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall^Final/StatefulPartitionedCall#^dropout_85/StatefulPartitionedCall#^dropout_86/StatefulPartitionedCall#^dropout_87/StatefulPartitionedCall#^dropout_88/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2>
Final/StatefulPartitionedCallFinal/StatefulPartitionedCall2H
"dropout_85/StatefulPartitionedCall"dropout_85/StatefulPartitionedCall2H
"dropout_86/StatefulPartitionedCall"dropout_86/StatefulPartitionedCall2H
"dropout_87/StatefulPartitionedCall"dropout_87/StatefulPartitionedCall2H
"dropout_88/StatefulPartitionedCall"dropout_88/StatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input
¯
~
E__inference_dropout_85_layer_call_and_return_conditional_losses_74959

inputs
identity¢StatefulPartitionedCallË
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_74022w
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
ã#

B__inference_Deconv8_layer_call_and_return_conditional_losses_73684

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
à#

@__inference_Final_layer_call_and_return_conditional_losses_75303

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

ù
@__inference_Conv7_layer_call_and_return_conditional_losses_73288

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
À
c
E__inference_dropout_87_layer_call_and_return_conditional_losses_73835

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
Å
d
E__inference_dropout_87_layer_call_and_return_conditional_losses_73940

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
Ý
c
*__inference_dropout_87_layer_call_fn_75084

inputs
identity¢StatefulPartitionedCallÝ
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_87_layer_call_and_return_conditional_losses_73940
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
¶ã
é

H__inference_sequential_19_layer_call_and_return_conditional_losses_74836

inputs%
conv1_74641:
conv1_74643:%
conv2_74646:
conv2_74648:%
conv3_74652:
conv3_74654:%
conv7_74659:@
conv7_74661:@J
0deconv3_conv2d_transpose_readvariableop_resource:@@5
'deconv3_biasadd_readvariableop_resource:@J
0deconv7_conv2d_transpose_readvariableop_resource:@5
'deconv7_biasadd_readvariableop_resource:J
0deconv8_conv2d_transpose_readvariableop_resource:5
'deconv8_biasadd_readvariableop_resource:H
.final_conv2d_transpose_readvariableop_resource:3
%final_biasadd_readvariableop_resource:
identity¢Conv1/StatefulPartitionedCall¢Conv2/StatefulPartitionedCall¢Conv3/StatefulPartitionedCall¢Conv7/StatefulPartitionedCall¢Deconv3/BiasAdd/ReadVariableOp¢'Deconv3/conv2d_transpose/ReadVariableOp¢Deconv7/BiasAdd/ReadVariableOp¢'Deconv7/conv2d_transpose/ReadVariableOp¢Deconv8/BiasAdd/ReadVariableOp¢'Deconv8/conv2d_transpose/ReadVariableOp¢Final/BiasAdd/ReadVariableOp¢%Final/conv2d_transpose/ReadVariableOp¢"dropout_85/StatefulPartitionedCall¢"dropout_86/StatefulPartitionedCallí
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_74641conv1_74643*
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
@__inference_Conv1_layer_call_and_return_conditional_losses_73228
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_74646conv2_74648*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73245ò
 max_pooling2d_36/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_73161
Conv3/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv3_74652conv3_74654*
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
@__inference_Conv3_layer_call_and_return_conditional_losses_73263ö
"dropout_85/StatefulPartitionedCallStatefulPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_85_layer_call_and_return_conditional_losses_74022÷
 max_pooling2d_37/PartitionedCallPartitionedCall+dropout_85/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_73173
Conv7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv7_74659conv7_74661*
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
@__inference_Conv7_layer_call_and_return_conditional_losses_73288
"dropout_86/StatefulPartitionedCallStatefulPartitionedCall&Conv7/StatefulPartitionedCall:output:0#^dropout_85/StatefulPartitionedCall*
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73963÷
 max_pooling2d_38/PartitionedCallPartitionedCall+dropout_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_73185
 up_sampling2d_33/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
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
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_73204f
Deconv3/ShapeShape)up_sampling2d_33/PartitionedCall:output:0*
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
shrink_axis_maskg
Deconv3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv3/strided_slice_1StridedSliceDeconv3/Shape:output:0&Deconv3/strided_slice_1/stack:output:0(Deconv3/strided_slice_1/stack_1:output:0(Deconv3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
Deconv3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv3/strided_slice_2StridedSliceDeconv3/Shape:output:0&Deconv3/strided_slice_2/stack:output:0(Deconv3/strided_slice_2/stack_1:output:0(Deconv3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskO
Deconv3/mul/yConst*
_output_shapes
: *
dtype0*
value	B :m
Deconv3/mulMul Deconv3/strided_slice_1:output:0Deconv3/mul/y:output:0*
T0*
_output_shapes
: O
Deconv3/add/yConst*
_output_shapes
: *
dtype0*
value	B :^
Deconv3/addAddV2Deconv3/mul:z:0Deconv3/add/y:output:0*
T0*
_output_shapes
: Q
Deconv3/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :q
Deconv3/mul_1Mul Deconv3/strided_slice_2:output:0Deconv3/mul_1/y:output:0*
T0*
_output_shapes
: Q
Deconv3/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :d
Deconv3/add_1AddV2Deconv3/mul_1:z:0Deconv3/add_1/y:output:0*
T0*
_output_shapes
: Q
Deconv3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@¡
Deconv3/stackPackDeconv3/strided_slice:output:0Deconv3/add:z:0Deconv3/add_1:z:0Deconv3/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv3/strided_slice_3StridedSliceDeconv3/stack:output:0&Deconv3/strided_slice_3/stack:output:0(Deconv3/strided_slice_3/stack_1:output:0(Deconv3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv3/conv2d_transpose/ReadVariableOpReadVariableOp0deconv3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Deconv3/conv2d_transposeConv2DBackpropInputDeconv3/stack:output:0/Deconv3/conv2d_transpose/ReadVariableOp:value:0)up_sampling2d_33/PartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

Deconv3/BiasAdd/ReadVariableOpReadVariableOp'deconv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0±
Deconv3/BiasAddBiasAdd!Deconv3/conv2d_transpose:output:0&Deconv3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@z
Deconv3/ReluReluDeconv3/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@]
dropout_87/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
dropout_87/dropout/MulMulDeconv3/Relu:activations:0!dropout_87/dropout/Const:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@b
dropout_87/dropout/ShapeShapeDeconv3/Relu:activations:0*
T0*
_output_shapes
:¼
/dropout_87/dropout/random_uniform/RandomUniformRandomUniform!dropout_87/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0f
!dropout_87/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>á
dropout_87/dropout/GreaterEqualGreaterEqual8dropout_87/dropout/random_uniform/RandomUniform:output:0*dropout_87/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
dropout_87/dropout/CastCast#dropout_87/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¤
dropout_87/dropout/Mul_1Muldropout_87/dropout/Mul:z:0dropout_87/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@b
up_sampling2d_34/ShapeShapedropout_87/dropout/Mul_1:z:0*
T0*
_output_shapes
:n
$up_sampling2d_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&up_sampling2d_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&up_sampling2d_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
up_sampling2d_34/strided_sliceStridedSliceup_sampling2d_34/Shape:output:0-up_sampling2d_34/strided_slice/stack:output:0/up_sampling2d_34/strided_slice/stack_1:output:0/up_sampling2d_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
up_sampling2d_34/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_34/mulMul'up_sampling2d_34/strided_slice:output:0up_sampling2d_34/Const:output:0*
T0*
_output_shapes
:ä
-up_sampling2d_34/resize/ResizeNearestNeighborResizeNearestNeighbordropout_87/dropout/Mul_1:z:0up_sampling2d_34/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers({
Deconv7/ShapeShape>up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0*
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
shrink_axis_maskg
Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv7/strided_slice_1StridedSliceDeconv7/Shape:output:0&Deconv7/strided_slice_1/stack:output:0(Deconv7/strided_slice_1/stack_1:output:0(Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
Deconv7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv7/strided_slice_2StridedSliceDeconv7/Shape:output:0&Deconv7/strided_slice_2/stack:output:0(Deconv7/strided_slice_2/stack_1:output:0(Deconv7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskO
Deconv7/mul/yConst*
_output_shapes
: *
dtype0*
value	B :m
Deconv7/mulMul Deconv7/strided_slice_1:output:0Deconv7/mul/y:output:0*
T0*
_output_shapes
: O
Deconv7/add/yConst*
_output_shapes
: *
dtype0*
value	B :^
Deconv7/addAddV2Deconv7/mul:z:0Deconv7/add/y:output:0*
T0*
_output_shapes
: Q
Deconv7/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :q
Deconv7/mul_1Mul Deconv7/strided_slice_2:output:0Deconv7/mul_1/y:output:0*
T0*
_output_shapes
: Q
Deconv7/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :d
Deconv7/add_1AddV2Deconv7/mul_1:z:0Deconv7/add_1/y:output:0*
T0*
_output_shapes
: Q
Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :¡
Deconv7/stackPackDeconv7/strided_slice:output:0Deconv7/add:z:0Deconv7/add_1:z:0Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv7/strided_slice_3StridedSliceDeconv7/stack:output:0&Deconv7/strided_slice_3/stack:output:0(Deconv7/strided_slice_3/stack_1:output:0(Deconv7/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp0deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0­
Deconv7/conv2d_transposeConv2DBackpropInputDeconv7/stack:output:0/Deconv7/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_34/resize/ResizeNearestNeighbor:resized_images:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Deconv7/BiasAdd/ReadVariableOpReadVariableOp'deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0±
Deconv7/BiasAddBiasAdd!Deconv7/conv2d_transpose:output:0&Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
Deconv7/ReluReluDeconv7/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ]
dropout_88/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
dropout_88/dropout/MulMulDeconv7/Relu:activations:0!dropout_88/dropout/Const:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb
dropout_88/dropout/ShapeShapeDeconv7/Relu:activations:0*
T0*
_output_shapes
:¼
/dropout_88/dropout/random_uniform/RandomUniformRandomUniform!dropout_88/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_88/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>á
dropout_88/dropout/GreaterEqualGreaterEqual8dropout_88/dropout/random_uniform/RandomUniform:output:0*dropout_88/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dropout_88/dropout/CastCast#dropout_88/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¤
dropout_88/dropout/Mul_1Muldropout_88/dropout/Mul:z:0dropout_88/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb
up_sampling2d_35/ShapeShapedropout_88/dropout/Mul_1:z:0*
T0*
_output_shapes
:n
$up_sampling2d_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&up_sampling2d_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&up_sampling2d_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
up_sampling2d_35/strided_sliceStridedSliceup_sampling2d_35/Shape:output:0-up_sampling2d_35/strided_slice/stack:output:0/up_sampling2d_35/strided_slice/stack_1:output:0/up_sampling2d_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
up_sampling2d_35/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_35/mulMul'up_sampling2d_35/strided_slice:output:0up_sampling2d_35/Const:output:0*
T0*
_output_shapes
:ä
-up_sampling2d_35/resize/ResizeNearestNeighborResizeNearestNeighbordropout_88/dropout/Mul_1:z:0up_sampling2d_35/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers({
Deconv8/ShapeShape>up_sampling2d_35/resize/ResizeNearestNeighbor:resized_images:0*
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
shrink_axis_maskg
Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv8/strided_slice_1StridedSliceDeconv8/Shape:output:0&Deconv8/strided_slice_1/stack:output:0(Deconv8/strided_slice_1/stack_1:output:0(Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
Deconv8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv8/strided_slice_2StridedSliceDeconv8/Shape:output:0&Deconv8/strided_slice_2/stack:output:0(Deconv8/strided_slice_2/stack_1:output:0(Deconv8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskO
Deconv8/mul/yConst*
_output_shapes
: *
dtype0*
value	B :m
Deconv8/mulMul Deconv8/strided_slice_1:output:0Deconv8/mul/y:output:0*
T0*
_output_shapes
: O
Deconv8/add/yConst*
_output_shapes
: *
dtype0*
value	B :^
Deconv8/addAddV2Deconv8/mul:z:0Deconv8/add/y:output:0*
T0*
_output_shapes
: Q
Deconv8/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :q
Deconv8/mul_1Mul Deconv8/strided_slice_2:output:0Deconv8/mul_1/y:output:0*
T0*
_output_shapes
: Q
Deconv8/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :d
Deconv8/add_1AddV2Deconv8/mul_1:z:0Deconv8/add_1/y:output:0*
T0*
_output_shapes
: Q
Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :¡
Deconv8/stackPackDeconv8/strided_slice:output:0Deconv8/add:z:0Deconv8/add_1:z:0Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:g
Deconv8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Deconv8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Deconv8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Deconv8/strided_slice_3StridedSliceDeconv8/stack:output:0&Deconv8/strided_slice_3/stack:output:0(Deconv8/strided_slice_3/stack_1:output:0(Deconv8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
'Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp0deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0­
Deconv8/conv2d_transposeConv2DBackpropInputDeconv8/stack:output:0/Deconv8/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_35/resize/ResizeNearestNeighbor:resized_images:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Deconv8/BiasAdd/ReadVariableOpReadVariableOp'deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0±
Deconv8/BiasAddBiasAdd!Deconv8/conv2d_transpose:output:0&Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
Deconv8/ReluReluDeconv8/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿU
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
shrink_axis_maske
Final/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
Final/strided_slice_1StridedSliceFinal/Shape:output:0$Final/strided_slice_1/stack:output:0&Final/strided_slice_1/stack_1:output:0&Final/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
Final/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
Final/strided_slice_2StridedSliceFinal/Shape:output:0$Final/strided_slice_2/stack:output:0&Final/strided_slice_2/stack_1:output:0&Final/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
Final/mul/yConst*
_output_shapes
: *
dtype0*
value	B :g
	Final/mulMulFinal/strided_slice_1:output:0Final/mul/y:output:0*
T0*
_output_shapes
: M
Final/add/yConst*
_output_shapes
: *
dtype0*
value	B :X
	Final/addAddV2Final/mul:z:0Final/add/y:output:0*
T0*
_output_shapes
: O
Final/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :k
Final/mul_1MulFinal/strided_slice_2:output:0Final/mul_1/y:output:0*
T0*
_output_shapes
: O
Final/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :^
Final/add_1AddV2Final/mul_1:z:0Final/add_1/y:output:0*
T0*
_output_shapes
: O
Final/stack/3Const*
_output_shapes
: *
dtype0*
value	B :
Final/stackPackFinal/strided_slice:output:0Final/add:z:0Final/add_1:z:0Final/stack/3:output:0*
N*
T0*
_output_shapes
:e
Final/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Final/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Final/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
Final/strided_slice_3StridedSliceFinal/stack:output:0$Final/strided_slice_3/stack:output:0&Final/strided_slice_3/stack_1:output:0&Final/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%Final/conv2d_transpose/ReadVariableOpReadVariableOp.final_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0
Final/conv2d_transposeConv2DBackpropInputFinal/stack:output:0-Final/conv2d_transpose/ReadVariableOp:value:0Deconv8/Relu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
~
Final/BiasAdd/ReadVariableOpReadVariableOp%final_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0«
Final/BiasAddBiasAddFinal/conv2d_transpose:output:0$Final/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
Final/SigmoidSigmoidFinal/BiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
IdentityIdentityFinal/Sigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv7/StatefulPartitionedCall^Deconv3/BiasAdd/ReadVariableOp(^Deconv3/conv2d_transpose/ReadVariableOp^Deconv7/BiasAdd/ReadVariableOp(^Deconv7/conv2d_transpose/ReadVariableOp^Deconv8/BiasAdd/ReadVariableOp(^Deconv8/conv2d_transpose/ReadVariableOp^Final/BiasAdd/ReadVariableOp&^Final/conv2d_transpose/ReadVariableOp#^dropout_85/StatefulPartitionedCall#^dropout_86/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2@
Deconv3/BiasAdd/ReadVariableOpDeconv3/BiasAdd/ReadVariableOp2R
'Deconv3/conv2d_transpose/ReadVariableOp'Deconv3/conv2d_transpose/ReadVariableOp2@
Deconv7/BiasAdd/ReadVariableOpDeconv7/BiasAdd/ReadVariableOp2R
'Deconv7/conv2d_transpose/ReadVariableOp'Deconv7/conv2d_transpose/ReadVariableOp2@
Deconv8/BiasAdd/ReadVariableOpDeconv8/BiasAdd/ReadVariableOp2R
'Deconv8/conv2d_transpose/ReadVariableOp'Deconv8/conv2d_transpose/ReadVariableOp2<
Final/BiasAdd/ReadVariableOpFinal/BiasAdd/ReadVariableOp2N
%Final/conv2d_transpose/ReadVariableOp%Final/conv2d_transpose/ReadVariableOp2H
"dropout_85/StatefulPartitionedCall"dropout_85/StatefulPartitionedCall2H
"dropout_86/StatefulPartitionedCall"dropout_86/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs

ù
@__inference_Conv1_layer_call_and_return_conditional_losses_73228

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
¯
~
E__inference_dropout_86_layer_call_and_return_conditional_losses_75007

inputs
identity¢StatefulPartitionedCallË
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
GPU2*0J 8 *N
fIRG
E__inference_dropout_86_layer_call_and_return_conditional_losses_73963w
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
¹
Þ
-__inference_sequential_19_layer_call_fn_74266
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
	unknown_9:@

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity¢StatefulPartitionedCallº
StatefulPartitionedCallStatefulPartitionedCallconv1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_74194
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input

µ
@__inference_Conv2_layer_call_and_return_conditional_losses_73771

args_0!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
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
@__inference_Conv2_layer_call_and_return_conditional_losses_73245x
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
 
_user_specified_nameargs_0
³

d
E__inference_dropout_85_layer_call_and_return_conditional_losses_74022

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
êá
ý"
!__inference__traced_restore_75678
file_prefix7
assignvariableop_conv1_kernel:+
assignvariableop_1_conv1_bias:9
assignvariableop_2_conv2_kernel:+
assignvariableop_3_conv2_bias:9
assignvariableop_4_conv3_kernel:+
assignvariableop_5_conv3_bias:9
assignvariableop_6_conv7_kernel:@+
assignvariableop_7_conv7_bias:@;
!assignvariableop_8_deconv3_kernel:@@-
assignvariableop_9_deconv3_bias:@<
"assignvariableop_10_deconv7_kernel:@.
 assignvariableop_11_deconv7_bias:<
"assignvariableop_12_deconv8_kernel:.
 assignvariableop_13_deconv8_bias::
 assignvariableop_14_final_kernel:,
assignvariableop_15_final_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: A
'assignvariableop_25_adam_conv1_kernel_m:3
%assignvariableop_26_adam_conv1_bias_m:A
'assignvariableop_27_adam_conv2_kernel_m:3
%assignvariableop_28_adam_conv2_bias_m:A
'assignvariableop_29_adam_conv3_kernel_m:3
%assignvariableop_30_adam_conv3_bias_m:A
'assignvariableop_31_adam_conv7_kernel_m:@3
%assignvariableop_32_adam_conv7_bias_m:@C
)assignvariableop_33_adam_deconv3_kernel_m:@@5
'assignvariableop_34_adam_deconv3_bias_m:@C
)assignvariableop_35_adam_deconv7_kernel_m:@5
'assignvariableop_36_adam_deconv7_bias_m:C
)assignvariableop_37_adam_deconv8_kernel_m:5
'assignvariableop_38_adam_deconv8_bias_m:A
'assignvariableop_39_adam_final_kernel_m:3
%assignvariableop_40_adam_final_bias_m:A
'assignvariableop_41_adam_conv1_kernel_v:3
%assignvariableop_42_adam_conv1_bias_v:A
'assignvariableop_43_adam_conv2_kernel_v:3
%assignvariableop_44_adam_conv2_bias_v:A
'assignvariableop_45_adam_conv3_kernel_v:3
%assignvariableop_46_adam_conv3_bias_v:A
'assignvariableop_47_adam_conv7_kernel_v:@3
%assignvariableop_48_adam_conv7_bias_v:@C
)assignvariableop_49_adam_deconv3_kernel_v:@@5
'assignvariableop_50_adam_deconv3_bias_v:@C
)assignvariableop_51_adam_deconv7_kernel_v:@5
'assignvariableop_52_adam_deconv7_bias_v:C
)assignvariableop_53_adam_deconv8_kernel_v:5
'assignvariableop_54_adam_deconv8_bias_v:A
'assignvariableop_55_adam_final_kernel_v:3
%assignvariableop_56_adam_final_bias_v:
identity_58¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*À
value¶B³:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHå
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ã
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*þ
_output_shapesë
è::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	[
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
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv7_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv7_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_deconv3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_deconv3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_deconv7_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_deconv7_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_deconv8_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_deconv8_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp assignvariableop_14_final_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_final_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_conv1_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_conv1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_conv2_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp%assignvariableop_28_adam_conv2_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_conv3_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp%assignvariableop_30_adam_conv3_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_conv7_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_conv7_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_deconv3_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_deconv3_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_deconv7_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_deconv7_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_deconv8_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_deconv8_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_final_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_final_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_conv1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp%assignvariableop_42_adam_conv1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_conv2_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_conv2_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_conv3_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp%assignvariableop_46_adam_conv3_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_conv7_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp%assignvariableop_48_adam_conv7_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_deconv3_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_deconv3_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_deconv7_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_deconv7_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_deconv8_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_deconv8_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_final_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_final_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 µ

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: ¢

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_58Identity_58:output:0*
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ª
Ù
-__inference_sequential_19_layer_call_fn_74454

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
	unknown_9:@

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_74194
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
 
_user_specified_nameinputs

Ô
#__inference_signature_wrapper_74875
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
	unknown_9:@

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_73458
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿx : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
%
_user_specified_nameConv1_input"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ó
serving_default¿
L
Conv1_input=
serving_default_Conv1_input:0ÿÿÿÿÿÿÿÿÿx S
FinalJ
StatefulPartitionedCall:0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:´
¨
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
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
»

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
»

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>_random_generator
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S_random_generator
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
»

bkernel
cbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n_random_generator
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
»

wkernel
xbias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
Â
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 
	iter
beta_1
beta_2

decay
 learning_ratemm$m%m2m3mGmHmbmcmwmxm	m	m	m	mvv$v%v2v 3v¡Gv¢Hv£bv¤cv¥wv¦xv§	v¨	v©	vª	v«"
	optimizer

0
1
$2
%3
24
35
G6
H7
b8
c9
w10
x11
12
13
14
15"
trackable_list_wrapper

0
1
$2
%3
24
35
G6
H7
b8
c9
w10
x11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_19_layer_call_fn_73897
-__inference_sequential_19_layer_call_fn_74417
-__inference_sequential_19_layer_call_fn_74454
-__inference_sequential_19_layer_call_fn_74266À
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
H__inference_sequential_19_layer_call_and_return_conditional_losses_74638
H__inference_sequential_19_layer_call_and_return_conditional_losses_74836
H__inference_sequential_19_layer_call_and_return_conditional_losses_74320
H__inference_sequential_19_layer_call_and_return_conditional_losses_74374À
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
 __inference__wrapped_model_73458Conv1_input"
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
¦serving_default"
signature_map
&:$2Conv1/kernel
:2
Conv1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Conv1_layer_call_fn_74884¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_Conv1_layer_call_and_return_conditional_losses_74893¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
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
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Conv2_layer_call_fn_74902¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_Conv2_layer_call_and_return_conditional_losses_74911¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
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
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_36_layer_call_fn_74916¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_74921¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
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
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Conv3_layer_call_fn_74930¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_Conv3_layer_call_and_return_conditional_losses_74939¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
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
»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
:	variables
;trainable_variables
<regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_85_layer_call_fn_74944
*__inference_dropout_85_layer_call_fn_74949´
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
È2Å
E__inference_dropout_85_layer_call_and_return_conditional_losses_74954
E__inference_dropout_85_layer_call_and_return_conditional_losses_74959´
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
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_37_layer_call_fn_74964¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_74969¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
&:$@2Conv7/kernel
:@2
Conv7/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Conv7_layer_call_fn_74978¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_Conv7_layer_call_and_return_conditional_losses_74987¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
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
Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_86_layer_call_fn_74992
*__inference_dropout_86_layer_call_fn_74997´
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
È2Å
E__inference_dropout_86_layer_call_and_return_conditional_losses_75002
E__inference_dropout_86_layer_call_and_return_conditional_losses_75007´
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
Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_38_layer_call_fn_75012¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_75017¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
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
Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_33_layer_call_fn_75022¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_75027¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
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
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_Deconv3_layer_call_fn_75036¢
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
B__inference_Deconv3_layer_call_and_return_conditional_losses_75074¢
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
Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_87_layer_call_fn_75079
*__inference_dropout_87_layer_call_fn_75084´
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
È2Å
E__inference_dropout_87_layer_call_and_return_conditional_losses_75089
E__inference_dropout_87_layer_call_and_return_conditional_losses_75101´
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
ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_34_layer_call_fn_75106¢
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
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_75118¢
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
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_Deconv7_layer_call_fn_75127¢
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
B__inference_Deconv7_layer_call_and_return_conditional_losses_75165¢
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
·
ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_88_layer_call_fn_75170
*__inference_dropout_88_layer_call_fn_75175´
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
È2Å
E__inference_dropout_88_layer_call_and_return_conditional_losses_75180
E__inference_dropout_88_layer_call_and_return_conditional_losses_75192´
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
ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_35_layer_call_fn_75197¢
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
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_75209¢
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
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_Deconv8_layer_call_fn_75218¢
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
B__inference_Deconv8_layer_call_and_return_conditional_losses_75256¢
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
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_Final_layer_call_fn_75265¢
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
@__inference_Final_layer_call_and_return_conditional_losses_75303¢
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
¦
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
17"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
#__inference_signature_wrapper_74875Conv1_input"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
+:)2Adam/Conv1/kernel/m
:2Adam/Conv1/bias/m
+:)2Adam/Conv2/kernel/m
:2Adam/Conv2/bias/m
+:)2Adam/Conv3/kernel/m
:2Adam/Conv3/bias/m
+:)@2Adam/Conv7/kernel/m
:@2Adam/Conv7/bias/m
-:+@@2Adam/Deconv3/kernel/m
:@2Adam/Deconv3/bias/m
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
+:)@2Adam/Conv7/kernel/v
:@2Adam/Conv7/bias/v
-:+@@2Adam/Deconv3/kernel/v
:@2Adam/Deconv3/bias/v
-:+@2Adam/Deconv7/kernel/v
:2Adam/Deconv7/bias/v
-:+2Adam/Deconv8/kernel/v
:2Adam/Deconv8/bias/v
+:)2Adam/Final/kernel/v
:2Adam/Final/bias/v²
@__inference_Conv1_layer_call_and_return_conditional_losses_74893n8¢5
.¢+
)&
args_0ÿÿÿÿÿÿÿÿÿx 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿv
 
%__inference_Conv1_layer_call_fn_74884a8¢5
.¢+
)&
args_0ÿÿÿÿÿÿÿÿÿx 
ª "!ÿÿÿÿÿÿÿÿÿv²
@__inference_Conv2_layer_call_and_return_conditional_losses_74911n$%8¢5
.¢+
)&
args_0ÿÿÿÿÿÿÿÿÿv
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿt
 
%__inference_Conv2_layer_call_fn_74902a$%8¢5
.¢+
)&
args_0ÿÿÿÿÿÿÿÿÿv
ª "!ÿÿÿÿÿÿÿÿÿt°
@__inference_Conv3_layer_call_and_return_conditional_losses_74939l237¢4
-¢*
(%
args_0ÿÿÿÿÿÿÿÿÿ:N
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ8L
 
%__inference_Conv3_layer_call_fn_74930_237¢4
-¢*
(%
args_0ÿÿÿÿÿÿÿÿÿ:N
ª " ÿÿÿÿÿÿÿÿÿ8L°
@__inference_Conv7_layer_call_and_return_conditional_losses_74987lGH7¢4
-¢*
(%
args_0ÿÿÿÿÿÿÿÿÿ&
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$@
 
%__inference_Conv7_layer_call_fn_74978_GH7¢4
-¢*
(%
args_0ÿÿÿÿÿÿÿÿÿ&
ª " ÿÿÿÿÿÿÿÿÿ$@×
B__inference_Deconv3_layer_call_and_return_conditional_losses_75074bcI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ¯
'__inference_Deconv3_layer_call_fn_75036bcI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@×
B__inference_Deconv7_layer_call_and_return_conditional_losses_75165wxI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¯
'__inference_Deconv7_layer_call_fn_75127wxI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙ
B__inference_Deconv8_layer_call_and_return_conditional_losses_75256I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ±
'__inference_Deconv8_layer_call_fn_75218I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ×
@__inference_Final_layer_call_and_return_conditional_losses_75303I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¯
%__inference_Final_layer_call_fn_75265I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
 __inference__wrapped_model_73458$%23GHbcwx=¢:
3¢0
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
ª "GªD
B
Final96
Final+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿµ
E__inference_dropout_85_layer_call_and_return_conditional_losses_74954l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ8L
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ8L
 µ
E__inference_dropout_85_layer_call_and_return_conditional_losses_74959l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ8L
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ8L
 
*__inference_dropout_85_layer_call_fn_74944_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ8L
p 
ª " ÿÿÿÿÿÿÿÿÿ8L
*__inference_dropout_85_layer_call_fn_74949_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ8L
p
ª " ÿÿÿÿÿÿÿÿÿ8Lµ
E__inference_dropout_86_layer_call_and_return_conditional_losses_75002l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ$@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$@
 µ
E__inference_dropout_86_layer_call_and_return_conditional_losses_75007l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ$@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$@
 
*__inference_dropout_86_layer_call_fn_74992_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ$@
p 
ª " ÿÿÿÿÿÿÿÿÿ$@
*__inference_dropout_86_layer_call_fn_74997_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ$@
p
ª " ÿÿÿÿÿÿÿÿÿ$@Ú
E__inference_dropout_87_layer_call_and_return_conditional_losses_75089M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Ú
E__inference_dropout_87_layer_call_and_return_conditional_losses_75101M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ²
*__inference_dropout_87_layer_call_fn_75079M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@²
*__inference_dropout_87_layer_call_fn_75084M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ú
E__inference_dropout_88_layer_call_and_return_conditional_losses_75180M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ú
E__inference_dropout_88_layer_call_and_return_conditional_losses_75192M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ²
*__inference_dropout_88_layer_call_fn_75170M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
*__inference_dropout_88_layer_call_fn_75175M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_74921R¢O
H¢E
C@
args_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_36_layer_call_fn_74916R¢O
H¢E
C@
args_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_74969R¢O
H¢E
C@
args_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_37_layer_call_fn_74964R¢O
H¢E
C@
args_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_75017R¢O
H¢E
C@
args_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_38_layer_call_fn_75012R¢O
H¢E
C@
args_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë
H__inference_sequential_19_layer_call_and_return_conditional_losses_74320$%23GHbcwxE¢B
;¢8
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
p 

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ë
H__inference_sequential_19_layer_call_and_return_conditional_losses_74374$%23GHbcwxE¢B
;¢8
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
p

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 æ
H__inference_sequential_19_layer_call_and_return_conditional_losses_74638$%23GHbcwx@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿx 
p 

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 æ
H__inference_sequential_19_layer_call_and_return_conditional_losses_74836$%23GHbcwx@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿx 
p

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_sequential_19_layer_call_fn_73897$%23GHbcwxE¢B
;¢8
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
-__inference_sequential_19_layer_call_fn_74266$%23GHbcwxE¢B
;¢8
.+
Conv1_inputÿÿÿÿÿÿÿÿÿx 
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
-__inference_sequential_19_layer_call_fn_74417$%23GHbcwx@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿx 
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
-__inference_sequential_19_layer_call_fn_74454$%23GHbcwx@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿx 
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÕ
#__inference_signature_wrapper_74875­$%23GHbcwxL¢I
¢ 
Bª?
=
Conv1_input.+
Conv1_inputÿÿÿÿÿÿÿÿÿx "GªD
B
Final96
Final+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_up_sampling2d_33_layer_call_and_return_conditional_losses_75027R¢O
H¢E
C@
args_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_33_layer_call_fn_75022R¢O
H¢E
C@
args_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_up_sampling2d_34_layer_call_and_return_conditional_losses_75118R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_34_layer_call_fn_75106R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_up_sampling2d_35_layer_call_and_return_conditional_losses_75209R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_35_layer_call_fn_75197R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ