ْ
ً
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
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%حجL>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
ء
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
executor_typestring ?
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ُ	
~
conv2D/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2D/kernel
w
!conv2D/kernel/Read/ReadVariableOpReadVariableOpconv2D/kernel*&
_output_shapes
: *
dtype0
n
conv2D/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2D/bias
g
conv2D/bias/Read/ReadVariableOpReadVariableOpconv2D/bias*
_output_shapes
: *
dtype0

conv2D_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2D_2/kernel
{
#conv2D_2/kernel/Read/ReadVariableOpReadVariableOpconv2D_2/kernel*&
_output_shapes
: @*
dtype0
r
conv2D_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2D_2/bias
k
!conv2D_2/bias/Read/ReadVariableOpReadVariableOpconv2D_2/bias*
_output_shapes
:@*
dtype0

conv2D_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2D_3/kernel
|
#conv2D_3/kernel/Read/ReadVariableOpReadVariableOpconv2D_3/kernel*'
_output_shapes
:@*
dtype0
s
conv2D_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2D_3/bias
l
!conv2D_3/bias/Read/ReadVariableOpReadVariableOpconv2D_3/bias*
_output_shapes	
:*
dtype0

dense_hidden/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
@*$
shared_namedense_hidden/kernel
}
'dense_hidden/kernel/Read/ReadVariableOpReadVariableOpdense_hidden/kernel* 
_output_shapes
:
@*
dtype0
{
dense_hidden/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_hidden/bias
t
%dense_hidden/bias/Read/ReadVariableOpReadVariableOpdense_hidden/bias*
_output_shapes	
:*
dtype0

dense_hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_namedense_hidden_2/kernel

)dense_hidden_2/kernel/Read/ReadVariableOpReadVariableOpdense_hidden_2/kernel* 
_output_shapes
:
*
dtype0

dense_hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namedense_hidden_2/bias
x
'dense_hidden_2/bias/Read/ReadVariableOpReadVariableOpdense_hidden_2/bias*
_output_shapes	
:*
dtype0
u
ouput/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_nameouput/kernel
n
 ouput/kernel/Read/ReadVariableOpReadVariableOpouput/kernel*
_output_shapes
:	*
dtype0
l

ouput/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
ouput/bias
e
ouput/bias/Read/ReadVariableOpReadVariableOp
ouput/bias*
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

Adam/conv2D/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D/kernel/m

(Adam/conv2D/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/conv2D/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2D/bias/m
u
&Adam/conv2D/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D/bias/m*
_output_shapes
: *
dtype0

Adam/conv2D_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/m

*Adam/conv2D_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2D_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2D_2/bias/m
y
(Adam/conv2D_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2D_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2D_3/kernel/m

*Adam/conv2D_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2D_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2D_3/bias/m
z
(Adam/conv2D_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_hidden/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
@*+
shared_nameAdam/dense_hidden/kernel/m

.Adam/dense_hidden/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/kernel/m* 
_output_shapes
:
@*
dtype0

Adam/dense_hidden/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dense_hidden/bias/m

,Adam/dense_hidden/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_hidden_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/dense_hidden_2/kernel/m

0Adam/dense_hidden_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_hidden_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/dense_hidden_2/bias/m

.Adam/dense_hidden_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/bias/m*
_output_shapes	
:*
dtype0

Adam/ouput/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/ouput/kernel/m
|
'Adam/ouput/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ouput/kernel/m*
_output_shapes
:	*
dtype0
z
Adam/ouput/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ouput/bias/m
s
%Adam/ouput/bias/m/Read/ReadVariableOpReadVariableOpAdam/ouput/bias/m*
_output_shapes
:*
dtype0

Adam/conv2D/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D/kernel/v

(Adam/conv2D/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/conv2D/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2D/bias/v
u
&Adam/conv2D/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D/bias/v*
_output_shapes
: *
dtype0

Adam/conv2D_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/v

*Adam/conv2D_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2D_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2D_2/bias/v
y
(Adam/conv2D_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2D_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2D_3/kernel/v

*Adam/conv2D_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2D_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2D_3/bias/v
z
(Adam/conv2D_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_hidden/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
@*+
shared_nameAdam/dense_hidden/kernel/v

.Adam/dense_hidden/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/kernel/v* 
_output_shapes
:
@*
dtype0

Adam/dense_hidden/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dense_hidden/bias/v

,Adam/dense_hidden/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_hidden_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/dense_hidden_2/kernel/v

0Adam/dense_hidden_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_hidden_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/dense_hidden_2/bias/v

.Adam/dense_hidden_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/bias/v*
_output_shapes	
:*
dtype0

Adam/ouput/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/ouput/kernel/v
|
'Adam/ouput/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ouput/kernel/v*
_output_shapes
:	*
dtype0
z
Adam/ouput/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ouput/bias/v
s
%Adam/ouput/bias/v/Read/ReadVariableOpReadVariableOpAdam/ouput/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
t
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*؟s
value?sB?s B?s
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
?
$
activation

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses*

-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
?
3
activation

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses*

<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
?
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses* 

I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses* 
?
O
activation

Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses*
?
X
activation

Ykernel
Zbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses*
?

akernel
bbias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses*
?
iiter

jbeta_1

kbeta_2
	ldecay
mlearning_ratemٍmَ%mُ&mِ4mّ5mْPm?Qm?Ym?Zm?am?bm?v?v?%v?&v?4v?5v?Pv?QvYvZvavbv*
Z
0
1
%2
&3
44
55
P6
Q7
Y8
Z9
a10
b11*
Z
0
1
%2
&3
44
55
P6
Q7
Y8
Z9
a10
b11*
* 
?
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

sserving_default* 

t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
]W
VARIABLE_VALUEconv2D/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2D/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 
* 
* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
_Y
VARIABLE_VALUEconv2D_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2D_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 
* 
* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
_Y
VARIABLE_VALUEconv2D_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2D_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

40
51*

40
51*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
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
non_trainable_variables
 layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

¤non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

?non_trainable_variables
?layers
?metrics
 ،layer_regularization_losses
­layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 
* 
* 

?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
c]
VARIABLE_VALUEdense_hidden/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEdense_hidden/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

P0
Q1*

P0
Q1*
* 

?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*
* 
* 

?	variables
?trainable_variables
؛regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
e_
VARIABLE_VALUEdense_hidden_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEdense_hidden_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

Y0
Z1*

Y0
Z1*
* 

؟non_trainable_variables
?layers
ءmetrics
 آlayer_regularization_losses
أlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEouput/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
ouput/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

a0
b1*

a0
b1*
* 

ؤnon_trainable_variables
إlayers
ئmetrics
 اlayer_regularization_losses
بlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*
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
R
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
10*

ة0
ت1*
* 
* 
* 
* 
* 
* 

ثnon_trainable_variables
جlayers
حmetrics
 خlayer_regularization_losses
دlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

ذnon_trainable_variables
رlayers
زmetrics
 سlayer_regularization_losses
شlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
	
$0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

صnon_trainable_variables
ضlayers
طmetrics
 ظlayer_regularization_losses
عlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
	
30* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

غnon_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
	
O0* 
* 
* 
* 
* 
* 
* 

?non_trainable_variables
ـlayers
فmetrics
 قlayer_regularization_losses
كlayer_metrics
?	variables
?trainable_variables
؛regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
	
X0* 
* 
* 
* 
* 
* 
* 
* 
* 
<

لtotal

مcount
ن	variables
ه	keras_api*
M

وtotal

ىcount
ي
_fn_kwargs
ً	variables
ٌ	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ل0
م1*

ن	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

و0
ى1*

ً	variables*
z
VARIABLE_VALUEAdam/conv2D/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2D/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2D_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2D_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/dense_hidden/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_hidden/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/dense_hidden_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_hidden_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/ouput/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/ouput/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2D/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2D/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2D_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2D_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/dense_hidden/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_hidden/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/dense_hidden_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_hidden_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/ouput/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/ouput/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_inputPlaceholder*/
_output_shapes
:?????????@@*
dtype0*$
shape:?????????@@

StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2D/kernelconv2D/biasconv2D_2/kernelconv2D_2/biasconv2D_3/kernelconv2D_3/biasdense_hidden/kerneldense_hidden/biasdense_hidden_2/kerneldense_hidden_2/biasouput/kernel
ouput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_3027
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2D/kernel/Read/ReadVariableOpconv2D/bias/Read/ReadVariableOp#conv2D_2/kernel/Read/ReadVariableOp!conv2D_2/bias/Read/ReadVariableOp#conv2D_3/kernel/Read/ReadVariableOp!conv2D_3/bias/Read/ReadVariableOp'dense_hidden/kernel/Read/ReadVariableOp%dense_hidden/bias/Read/ReadVariableOp)dense_hidden_2/kernel/Read/ReadVariableOp'dense_hidden_2/bias/Read/ReadVariableOp ouput/kernel/Read/ReadVariableOpouput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2D/kernel/m/Read/ReadVariableOp&Adam/conv2D/bias/m/Read/ReadVariableOp*Adam/conv2D_2/kernel/m/Read/ReadVariableOp(Adam/conv2D_2/bias/m/Read/ReadVariableOp*Adam/conv2D_3/kernel/m/Read/ReadVariableOp(Adam/conv2D_3/bias/m/Read/ReadVariableOp.Adam/dense_hidden/kernel/m/Read/ReadVariableOp,Adam/dense_hidden/bias/m/Read/ReadVariableOp0Adam/dense_hidden_2/kernel/m/Read/ReadVariableOp.Adam/dense_hidden_2/bias/m/Read/ReadVariableOp'Adam/ouput/kernel/m/Read/ReadVariableOp%Adam/ouput/bias/m/Read/ReadVariableOp(Adam/conv2D/kernel/v/Read/ReadVariableOp&Adam/conv2D/bias/v/Read/ReadVariableOp*Adam/conv2D_2/kernel/v/Read/ReadVariableOp(Adam/conv2D_2/bias/v/Read/ReadVariableOp*Adam/conv2D_3/kernel/v/Read/ReadVariableOp(Adam/conv2D_3/bias/v/Read/ReadVariableOp.Adam/dense_hidden/kernel/v/Read/ReadVariableOp,Adam/dense_hidden/bias/v/Read/ReadVariableOp0Adam/dense_hidden_2/kernel/v/Read/ReadVariableOp.Adam/dense_hidden_2/bias/v/Read/ReadVariableOp'Adam/ouput/kernel/v/Read/ReadVariableOp%Adam/ouput/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
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
GPU 2J 8 *&
f!R
__inference__traced_save_3373
،	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2D/kernelconv2D/biasconv2D_2/kernelconv2D_2/biasconv2D_3/kernelconv2D_3/biasdense_hidden/kerneldense_hidden/biasdense_hidden_2/kerneldense_hidden_2/biasouput/kernel
ouput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2D/kernel/mAdam/conv2D/bias/mAdam/conv2D_2/kernel/mAdam/conv2D_2/bias/mAdam/conv2D_3/kernel/mAdam/conv2D_3/bias/mAdam/dense_hidden/kernel/mAdam/dense_hidden/bias/mAdam/dense_hidden_2/kernel/mAdam/dense_hidden_2/bias/mAdam/ouput/kernel/mAdam/ouput/bias/mAdam/conv2D/kernel/vAdam/conv2D/bias/vAdam/conv2D_2/kernel/vAdam/conv2D_2/bias/vAdam/conv2D_3/kernel/vAdam/conv2D_3/bias/vAdam/dense_hidden/kernel/vAdam/dense_hidden/bias/vAdam/dense_hidden_2/kernel/vAdam/dense_hidden_2/bias/vAdam/ouput/kernel/vAdam/ouput/bias/v*9
Tin2
02.*
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
GPU 2J 8 *)
f$R"
 __inference__traced_restore_3518?
?
?
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3077

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @w
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%>|
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs

_
C__inference_pooling_2_layer_call_and_return_conditional_losses_3087

inputs
identity?
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
?
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_2439

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs

a
(__inference_dropout_3_layer_call_fn_3127

inputs
identity?StatefulPartitionedCallا
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2584x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_3195

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????p
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>u
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

_
C__inference_pooling_3_layer_call_and_return_conditional_losses_3117

inputs
identity?
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


ّ
?__inference_ouput_layer_call_and_return_conditional_losses_3215

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

]
A__inference_pooling_layer_call_and_return_conditional_losses_2346

inputs
identity?
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
?
د
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2743	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	
	unknown_5:
@
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:	

unknown_10:
identity?StatefulPartitionedCallم
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
؛
?
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3107

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????x
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:?????????*
alpha%>}
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?/

N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2687

inputs%
conv2d_2651: 
conv2d_2653: '
conv2d_2_2657: @
conv2d_2_2659:@(
conv2d_3_2663:@
conv2d_3_2665:	%
dense_hidden_2671:
@ 
dense_hidden_2673:	'
dense_hidden_2_2676:
"
dense_hidden_2_2678:	

ouput_2681:	

ouput_2683:
identity?conv2D/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall?$dense_hidden/StatefulPartitionedCall?&dense_hidden_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?ouput/StatefulPartitionedCallي
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2651conv2d_2653*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_2391?
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_2346
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_2657conv2d_2_2659*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_2409ك
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_2358
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_2663conv2d_3_2665*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_2427ل
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_2370ٍ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2584ع
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_2447
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_2671dense_hidden_2673*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_2460?
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_2676dense_hidden_2_2678*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_2477
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0
ouput_2681
ouput_2683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_2494u
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????ء
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
ش@
ن	
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2937

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@7
(conv2d_3_biasadd_readvariableop_resource:	?
+dense_hidden_matmul_readvariableop_resource:
@;
,dense_hidden_biasadd_readvariableop_resource:	A
-dense_hidden_2_matmul_readvariableop_resource:
=
.dense_hidden_2_biasadd_readvariableop_resource:	7
$ouput_matmul_readvariableop_resource:	3
%ouput_biasadd_readvariableop_resource:
identity?conv2D/BiasAdd/ReadVariableOp?conv2D/Conv2D/ReadVariableOp?conv2D_2/BiasAdd/ReadVariableOp?conv2D_2/Conv2D/ReadVariableOp?conv2D_3/BiasAdd/ReadVariableOp?conv2D_3/Conv2D/ReadVariableOp?#dense_hidden/BiasAdd/ReadVariableOp?"dense_hidden/MatMul/ReadVariableOp?%dense_hidden_2/BiasAdd/ReadVariableOp?$dense_hidden_2/MatMul/ReadVariableOp?ouput/BiasAdd/ReadVariableOp?ouput/MatMul/ReadVariableOp
conv2D/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2D/Conv2DConv2Dinputs$conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides

conv2D/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2D/BiasAddBiasAddconv2D/Conv2D:output:0%conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 
conv2D/leaky_re_lu/LeakyRelu	LeakyReluconv2D/BiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%>?
pooling/MaxPoolMaxPool*conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides

conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2D_2/Conv2DConv2Dpooling/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides

conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @
 conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyReluconv2D_2/BiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%>?
pooling_2/MaxPoolMaxPool.conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0?
conv2D_3/Conv2DConv2Dpooling_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
 conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyReluconv2D_3/BiasAdd:output:0*0
_output_shapes
:?????????*
alpha%>?
pooling_3/MaxPoolMaxPool.conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
u
dropout_3/IdentityIdentitypooling_3/MaxPool:output:0*
T0*0
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    
flatten/ReshapeReshapedropout_3/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:?????????@
"dense_hidden/MatMul/ReadVariableOpReadVariableOp+dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
@*
dtype0
dense_hidden/MatMulMatMulflatten/Reshape:output:0*dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
#dense_hidden/BiasAdd/ReadVariableOpReadVariableOp,dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_hidden/BiasAddBiasAdddense_hidden/MatMul:product:0+dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
$dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyReludense_hidden/BiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>
$dense_hidden_2/MatMul/ReadVariableOpReadVariableOp-dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0?
dense_hidden_2/MatMulMatMul2dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0,dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
%dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOp.dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
dense_hidden_2/BiasAddBiasAdddense_hidden_2/MatMul:product:0-dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
&dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyReludense_hidden_2/BiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>
ouput/MatMul/ReadVariableOpReadVariableOp$ouput_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0?
ouput/MatMulMatMul4dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:0#ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
ouput/BiasAdd/ReadVariableOpReadVariableOp%ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
ouput/BiasAddBiasAddouput/MatMul:product:0$ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
ouput/SigmoidSigmoidouput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentityouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????ق
NoOpNoOp^conv2D/BiasAdd/ReadVariableOp^conv2D/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp$^dense_hidden/BiasAdd/ReadVariableOp#^dense_hidden/MatMul/ReadVariableOp&^dense_hidden_2/BiasAdd/ReadVariableOp%^dense_hidden_2/MatMul/ReadVariableOp^ouput/BiasAdd/ReadVariableOp^ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2>
conv2D/BiasAdd/ReadVariableOpconv2D/BiasAdd/ReadVariableOp2<
conv2D/Conv2D/ReadVariableOpconv2D/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2B
conv2D_3/BiasAdd/ReadVariableOpconv2D_3/BiasAdd/ReadVariableOp2@
conv2D_3/Conv2D/ReadVariableOpconv2D_3/Conv2D/ReadVariableOp2J
#dense_hidden/BiasAdd/ReadVariableOp#dense_hidden/BiasAdd/ReadVariableOp2H
"dense_hidden/MatMul/ReadVariableOp"dense_hidden/MatMul/ReadVariableOp2N
%dense_hidden_2/BiasAdd/ReadVariableOp%dense_hidden_2/BiasAdd/ReadVariableOp2L
$dense_hidden_2/MatMul/ReadVariableOp$dense_hidden_2/MatMul/ReadVariableOp2<
ouput/BiasAdd/ReadVariableOpouput/BiasAdd/ReadVariableOp2:
ouput/MatMul/ReadVariableOpouput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
D
(__inference_pooling_3_layer_call_fn_3112

inputs
identityر
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
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_2370
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
?

b
C__inference_dropout_3_layer_call_and_return_conditional_losses_3144

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ي

'__inference_conv2D_3_layer_call_fn_3096

inputs"
unknown:@
	unknown_0:	
identity?StatefulPartitionedCallـ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_2427x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?W
?
__inference__wrapped_model_2337	
inputT
:cnn_13_drop_out_0_25_conv2d_conv2d_readvariableop_resource: I
;cnn_13_drop_out_0_25_conv2d_biasadd_readvariableop_resource: V
<cnn_13_drop_out_0_25_conv2d_2_conv2d_readvariableop_resource: @K
=cnn_13_drop_out_0_25_conv2d_2_biasadd_readvariableop_resource:@W
<cnn_13_drop_out_0_25_conv2d_3_conv2d_readvariableop_resource:@L
=cnn_13_drop_out_0_25_conv2d_3_biasadd_readvariableop_resource:	T
@cnn_13_drop_out_0_25_dense_hidden_matmul_readvariableop_resource:
@P
Acnn_13_drop_out_0_25_dense_hidden_biasadd_readvariableop_resource:	V
Bcnn_13_drop_out_0_25_dense_hidden_2_matmul_readvariableop_resource:
R
Ccnn_13_drop_out_0_25_dense_hidden_2_biasadd_readvariableop_resource:	L
9cnn_13_drop_out_0_25_ouput_matmul_readvariableop_resource:	H
:cnn_13_drop_out_0_25_ouput_biasadd_readvariableop_resource:
identity?2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp?1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp?4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp?3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp?4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp?3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp?8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp?7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp?:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp?9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp?1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp?0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp?
1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOpReadVariableOp:cnn_13_drop_out_0_25_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ذ
"cnn_13_drop_out_0.25/conv2D/Conv2DConv2Dinput9cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOpReadVariableOp;cnn_13_drop_out_0_25_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ر
#cnn_13_drop_out_0.25/conv2D/BiasAddBiasAdd+cnn_13_drop_out_0.25/conv2D/Conv2D:output:0:cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ ­
1cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyRelu	LeakyRelu,cnn_13_drop_out_0.25/conv2D/BiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%>?
$cnn_13_drop_out_0.25/pooling/MaxPoolMaxPool?cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
?
3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOpReadVariableOp<cnn_13_drop_out_0_25_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
$cnn_13_drop_out_0.25/conv2D_2/Conv2DConv2D-cnn_13_drop_out_0.25/pooling/MaxPool:output:0;cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOpReadVariableOp=cnn_13_drop_out_0_25_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ط
%cnn_13_drop_out_0.25/conv2D_2/BiasAddBiasAdd-cnn_13_drop_out_0.25/conv2D_2/Conv2D:output:0<cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @?
5cnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyRelu.cnn_13_drop_out_0.25/conv2D_2/BiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%>ك
&cnn_13_drop_out_0.25/pooling_2/MaxPoolMaxPoolCcnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOpReadVariableOp<cnn_13_drop_out_0_25_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0?
$cnn_13_drop_out_0.25/conv2D_3/Conv2DConv2D/cnn_13_drop_out_0.25/pooling_2/MaxPool:output:0;cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
?
4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOpReadVariableOp=cnn_13_drop_out_0_25_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ظ
%cnn_13_drop_out_0.25/conv2D_3/BiasAddBiasAdd-cnn_13_drop_out_0.25/conv2D_3/Conv2D:output:0<cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????
5cnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyRelu.cnn_13_drop_out_0.25/conv2D_3/BiasAdd:output:0*0
_output_shapes
:?????????*
alpha%>ل
&cnn_13_drop_out_0.25/pooling_3/MaxPoolMaxPoolCcnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

'cnn_13_drop_out_0.25/dropout_3/IdentityIdentity/cnn_13_drop_out_0.25/pooling_3/MaxPool:output:0*
T0*0
_output_shapes
:?????????s
"cnn_13_drop_out_0.25/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ء
$cnn_13_drop_out_0.25/flatten/ReshapeReshape0cnn_13_drop_out_0.25/dropout_3/Identity:output:0+cnn_13_drop_out_0.25/flatten/Const:output:0*
T0*(
_output_shapes
:?????????@?
7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOpReadVariableOp@cnn_13_drop_out_0_25_dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
@*
dtype0ص
(cnn_13_drop_out_0.25/dense_hidden/MatMulMatMul-cnn_13_drop_out_0.25/flatten/Reshape:output:0?cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOpReadVariableOpAcnn_13_drop_out_0_25_dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0?
)cnn_13_drop_out_0.25/dense_hidden/BiasAddBiasAdd2cnn_13_drop_out_0.25/dense_hidden/MatMul:product:0@cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
9cnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyRelu2cnn_13_drop_out_0.25/dense_hidden/BiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>?
9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOpReadVariableOpBcnn_13_drop_out_0_25_dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0?
*cnn_13_drop_out_0.25/dense_hidden_2/MatMulMatMulGcnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0Acnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????؛
:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOpCcnn_13_drop_out_0_25_dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ك
+cnn_13_drop_out_0.25/dense_hidden_2/BiasAddBiasAdd4cnn_13_drop_out_0.25/dense_hidden_2/MatMul:product:0Bcnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
;cnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyRelu4cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>?
0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOpReadVariableOp9cnn_13_drop_out_0_25_ouput_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ق
!cnn_13_drop_out_0.25/ouput/MatMulMatMulIcnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:08cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOpReadVariableOp:cnn_13_drop_out_0_25_ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ا
"cnn_13_drop_out_0.25/ouput/BiasAddBiasAdd+cnn_13_drop_out_0.25/ouput/MatMul:product:09cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
"cnn_13_drop_out_0.25/ouput/SigmoidSigmoid+cnn_13_drop_out_0.25/ouput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????u
IdentityIdentity&cnn_13_drop_out_0.25/ouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp3^cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2^cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp5^cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp4^cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp5^cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp4^cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp9^cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp8^cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp;^cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:^cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp2^cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp1^cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2h
2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2f
1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp2l
4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp2j
3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp2l
4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp2j
3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp2t
8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp2r
7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp2x
:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp2v
9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp2f
1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp2d
0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
?

b
C__inference_dropout_3_layer_call_and_return_conditional_losses_2584

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
­
?
@__inference_conv2D_layer_call_and_return_conditional_losses_2391

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ u
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%>z
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
ر

-__inference_dense_hidden_2_layer_call_fn_3184

inputs
unknown:

	unknown_0:	
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_2477p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_3132

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
؛
?
B__inference_conv2D_3_layer_call_and_return_conditional_losses_2427

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????x
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:?????????*
alpha%>}
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
­
ذ
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2885

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	
	unknown_5:
@
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:	

unknown_10:
identity?StatefulPartitionedCallن
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
¤
B
&__inference_pooling_layer_call_fn_3052

inputs
identityد
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
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_2346
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
­
?
@__inference_conv2D_layer_call_and_return_conditional_losses_3047

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ u
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%>z
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
ق

%__inference_conv2D_layer_call_fn_3036

inputs!
unknown: 
	unknown_0: 
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_2391w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
??
?
 __inference__traced_restore_3518
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_2_kernel: @.
 assignvariableop_3_conv2d_2_bias:@=
"assignvariableop_4_conv2d_3_kernel:@/
 assignvariableop_5_conv2d_3_bias:	:
&assignvariableop_6_dense_hidden_kernel:
@3
$assignvariableop_7_dense_hidden_bias:	<
(assignvariableop_8_dense_hidden_2_kernel:
5
&assignvariableop_9_dense_hidden_2_bias:	3
 assignvariableop_10_ouput_kernel:	,
assignvariableop_11_ouput_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: B
(assignvariableop_21_adam_conv2d_kernel_m: 4
&assignvariableop_22_adam_conv2d_bias_m: D
*assignvariableop_23_adam_conv2d_2_kernel_m: @6
(assignvariableop_24_adam_conv2d_2_bias_m:@E
*assignvariableop_25_adam_conv2d_3_kernel_m:@7
(assignvariableop_26_adam_conv2d_3_bias_m:	B
.assignvariableop_27_adam_dense_hidden_kernel_m:
@;
,assignvariableop_28_adam_dense_hidden_bias_m:	D
0assignvariableop_29_adam_dense_hidden_2_kernel_m:
=
.assignvariableop_30_adam_dense_hidden_2_bias_m:	:
'assignvariableop_31_adam_ouput_kernel_m:	3
%assignvariableop_32_adam_ouput_bias_m:B
(assignvariableop_33_adam_conv2d_kernel_v: 4
&assignvariableop_34_adam_conv2d_bias_v: D
*assignvariableop_35_adam_conv2d_2_kernel_v: @6
(assignvariableop_36_adam_conv2d_2_bias_v:@E
*assignvariableop_37_adam_conv2d_3_kernel_v:@7
(assignvariableop_38_adam_conv2d_3_bias_v:	B
.assignvariableop_39_adam_dense_hidden_kernel_v:
@;
,assignvariableop_40_adam_dense_hidden_bias_v:	D
0assignvariableop_41_adam_dense_hidden_2_kernel_v:
=
.assignvariableop_42_adam_dense_hidden_2_bias_v:	:
'assignvariableop_43_adam_ouput_kernel_v:	3
%assignvariableop_44_adam_ouput_bias_v:
identity_46?AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ج
valueآB؟.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHج
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*خ
_output_shapes؛
?::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp&assignvariableop_6_dense_hidden_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp$assignvariableop_7_dense_hidden_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp(assignvariableop_8_dense_hidden_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp&assignvariableop_9_dense_hidden_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp assignvariableop_10_ouput_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_ouput_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv2d_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_conv2d_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_dense_hidden_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adam_dense_hidden_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adam_dense_hidden_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adam_dense_hidden_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_ouput_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_ouput_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_conv2d_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp.assignvariableop_39_adam_dense_hidden_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp,assignvariableop_40_adam_dense_hidden_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp0assignvariableop_41_adam_dense_hidden_2_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adam_dense_hidden_2_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_ouput_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_ouput_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ­
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_44AssignVariableOp_442(
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
?
B
&__inference_flatten_layer_call_fn_3149

inputs
identity­
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_2447a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
؛

$__inference_ouput_layer_call_fn_3204

inputs
unknown:	
	unknown_0:
identity?StatefulPartitionedCallش
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_2494o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ز\
ب
__inference__traced_save_3373
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop2
.savev2_dense_hidden_kernel_read_readvariableop0
,savev2_dense_hidden_bias_read_readvariableop4
0savev2_dense_hidden_2_kernel_read_readvariableop2
.savev2_dense_hidden_2_bias_read_readvariableop+
'savev2_ouput_kernel_read_readvariableop)
%savev2_ouput_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop9
5savev2_adam_dense_hidden_kernel_m_read_readvariableop7
3savev2_adam_dense_hidden_bias_m_read_readvariableop;
7savev2_adam_dense_hidden_2_kernel_m_read_readvariableop9
5savev2_adam_dense_hidden_2_bias_m_read_readvariableop2
.savev2_adam_ouput_kernel_m_read_readvariableop0
,savev2_adam_ouput_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop9
5savev2_adam_dense_hidden_kernel_v_read_readvariableop7
3savev2_adam_dense_hidden_bias_v_read_readvariableop;
7savev2_adam_dense_hidden_2_kernel_v_read_readvariableop9
5savev2_adam_dense_hidden_2_bias_v_read_readvariableop2
.savev2_adam_ouput_kernel_v_read_readvariableop0
,savev2_adam_ouput_bias_v_read_readvariableop
savev2_const

identity_1?MergeV2Checkpointsw
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ج
valueآB؟.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHة
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop.savev2_dense_hidden_kernel_read_readvariableop,savev2_dense_hidden_bias_read_readvariableop0savev2_dense_hidden_2_kernel_read_readvariableop.savev2_dense_hidden_2_bias_read_readvariableop'savev2_ouput_kernel_read_readvariableop%savev2_ouput_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop5savev2_adam_dense_hidden_kernel_m_read_readvariableop3savev2_adam_dense_hidden_bias_m_read_readvariableop7savev2_adam_dense_hidden_2_kernel_m_read_readvariableop5savev2_adam_dense_hidden_2_bias_m_read_readvariableop.savev2_adam_ouput_kernel_m_read_readvariableop,savev2_adam_ouput_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop5savev2_adam_dense_hidden_kernel_v_read_readvariableop3savev2_adam_dense_hidden_bias_v_read_readvariableop7savev2_adam_dense_hidden_2_kernel_v_read_readvariableop5savev2_adam_dense_hidden_2_bias_v_read_readvariableop.savev2_adam_ouput_kernel_v_read_readvariableop,savev2_adam_ouput_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	
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

identity_1Identity_1:output:0*?
_input_shapes
: : : : @:@:@::
@::
::	:: : : : : : : : : : : : @:@:@::
@::
::	:: : : @:@:@::
@::
::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::&"
 
_output_shapes
:
@:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::
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
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::&"
 
_output_shapes
:
@:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::% !

_output_shapes
:	: !

_output_shapes
::,"(
&
_output_shapes
: : #

_output_shapes
: :,$(
&
_output_shapes
: @: %

_output_shapes
:@:-&)
'
_output_shapes
:@:!'

_output_shapes	
::&("
 
_output_shapes
:
@:!)

_output_shapes	
::&*"
 
_output_shapes
:
:!+

_output_shapes	
::%,!

_output_shapes
:	: -

_output_shapes
::.

_output_shapes
: 

_
C__inference_pooling_3_layer_call_and_return_conditional_losses_2370

inputs
identity?
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
إ
]
A__inference_flatten_layer_call_and_return_conditional_losses_3155

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ح

+__inference_dense_hidden_layer_call_fn_3164

inputs
unknown:
@
	unknown_0:	
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_2460p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????@
 
_user_specified_nameinputs
؛H
ن	
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2996

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@7
(conv2d_3_biasadd_readvariableop_resource:	?
+dense_hidden_matmul_readvariableop_resource:
@;
,dense_hidden_biasadd_readvariableop_resource:	A
-dense_hidden_2_matmul_readvariableop_resource:
=
.dense_hidden_2_biasadd_readvariableop_resource:	7
$ouput_matmul_readvariableop_resource:	3
%ouput_biasadd_readvariableop_resource:
identity?conv2D/BiasAdd/ReadVariableOp?conv2D/Conv2D/ReadVariableOp?conv2D_2/BiasAdd/ReadVariableOp?conv2D_2/Conv2D/ReadVariableOp?conv2D_3/BiasAdd/ReadVariableOp?conv2D_3/Conv2D/ReadVariableOp?#dense_hidden/BiasAdd/ReadVariableOp?"dense_hidden/MatMul/ReadVariableOp?%dense_hidden_2/BiasAdd/ReadVariableOp?$dense_hidden_2/MatMul/ReadVariableOp?ouput/BiasAdd/ReadVariableOp?ouput/MatMul/ReadVariableOp
conv2D/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2D/Conv2DConv2Dinputs$conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides

conv2D/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2D/BiasAddBiasAddconv2D/Conv2D:output:0%conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 
conv2D/leaky_re_lu/LeakyRelu	LeakyReluconv2D/BiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%>?
pooling/MaxPoolMaxPool*conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides

conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2D_2/Conv2DConv2Dpooling/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides

conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @
 conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyReluconv2D_2/BiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%>?
pooling_2/MaxPoolMaxPool.conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0?
conv2D_3/Conv2DConv2Dpooling_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
 conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyReluconv2D_3/BiasAdd:output:0*0
_output_shapes
:?????????*
alpha%>?
pooling_3/MaxPoolMaxPool.conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout_3/dropout/MulMulpooling_3/MaxPool:output:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:?????????a
dropout_3/dropout/ShapeShapepooling_3/MaxPool:output:0*
T0*
_output_shapes
:?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ح
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    
flatten/ReshapeReshapedropout_3/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:?????????@
"dense_hidden/MatMul/ReadVariableOpReadVariableOp+dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
@*
dtype0
dense_hidden/MatMulMatMulflatten/Reshape:output:0*dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
#dense_hidden/BiasAdd/ReadVariableOpReadVariableOp,dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_hidden/BiasAddBiasAdddense_hidden/MatMul:product:0+dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
$dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyReludense_hidden/BiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>
$dense_hidden_2/MatMul/ReadVariableOpReadVariableOp-dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0?
dense_hidden_2/MatMulMatMul2dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0,dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
%dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOp.dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
dense_hidden_2/BiasAddBiasAdddense_hidden_2/MatMul:product:0-dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
&dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyReludense_hidden_2/BiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>
ouput/MatMul/ReadVariableOpReadVariableOp$ouput_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0?
ouput/MatMulMatMul4dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:0#ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
ouput/BiasAdd/ReadVariableOpReadVariableOp%ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
ouput/BiasAddBiasAddouput/MatMul:product:0$ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
ouput/SigmoidSigmoidouput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentityouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????ق
NoOpNoOp^conv2D/BiasAdd/ReadVariableOp^conv2D/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp$^dense_hidden/BiasAdd/ReadVariableOp#^dense_hidden/MatMul/ReadVariableOp&^dense_hidden_2/BiasAdd/ReadVariableOp%^dense_hidden_2/MatMul/ReadVariableOp^ouput/BiasAdd/ReadVariableOp^ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2>
conv2D/BiasAdd/ReadVariableOpconv2D/BiasAdd/ReadVariableOp2<
conv2D/Conv2D/ReadVariableOpconv2D/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2B
conv2D_3/BiasAdd/ReadVariableOpconv2D_3/BiasAdd/ReadVariableOp2@
conv2D_3/Conv2D/ReadVariableOpconv2D_3/Conv2D/ReadVariableOp2J
#dense_hidden/BiasAdd/ReadVariableOp#dense_hidden/BiasAdd/ReadVariableOp2H
"dense_hidden/MatMul/ReadVariableOp"dense_hidden/MatMul/ReadVariableOp2N
%dense_hidden_2/BiasAdd/ReadVariableOp%dense_hidden_2/BiasAdd/ReadVariableOp2L
$dense_hidden_2/MatMul/ReadVariableOp$dense_hidden_2/MatMul/ReadVariableOp2<
ouput/BiasAdd/ReadVariableOpouput/BiasAdd/ReadVariableOp2:
ouput/MatMul/ReadVariableOpouput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs


ّ
?__inference_ouput_layer_call_and_return_conditional_losses_2494

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_dense_hidden_layer_call_and_return_conditional_losses_3175

inputs2
matmul_readvariableop_resource:
@.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????p
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>u
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????@
 
_user_specified_nameinputs
س.
ك
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2501

inputs%
conv2d_2392: 
conv2d_2394: '
conv2d_2_2410: @
conv2d_2_2412:@(
conv2d_3_2428:@
conv2d_3_2430:	%
dense_hidden_2461:
@ 
dense_hidden_2463:	'
dense_hidden_2_2478:
"
dense_hidden_2_2480:	

ouput_2495:	

ouput_2497:
identity?conv2D/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall?$dense_hidden/StatefulPartitionedCall?&dense_hidden_2/StatefulPartitionedCall?ouput/StatefulPartitionedCallي
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2392conv2d_2394*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_2391?
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_2346
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_2410conv2d_2_2412*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_2409ك
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_2358
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_2428conv2d_3_2430*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_2427ل
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_2370?
dropout_3/PartitionedCallPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2439ر
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_2447
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_2461dense_hidden_2463*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_2460?
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_2478dense_hidden_2_2480*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_2477
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0
ouput_2495
ouput_2497*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_2494u
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
إ
]
A__inference_flatten_layer_call_and_return_conditional_losses_2447

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
?
د
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2528	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	
	unknown_5:
@
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:	

unknown_10:
identity?StatefulPartitionedCallم
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2501o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput

_
C__inference_pooling_2_layer_call_and_return_conditional_losses_2358

inputs
identity?
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
ذ.
ق
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2782	
input%
conv2d_2746: 
conv2d_2748: '
conv2d_2_2752: @
conv2d_2_2754:@(
conv2d_3_2758:@
conv2d_3_2760:	%
dense_hidden_2766:
@ 
dense_hidden_2768:	'
dense_hidden_2_2771:
"
dense_hidden_2_2773:	

ouput_2776:	

ouput_2778:
identity?conv2D/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall?$dense_hidden/StatefulPartitionedCall?&dense_hidden_2/StatefulPartitionedCall?ouput/StatefulPartitionedCallى
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_2746conv2d_2748*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_2391?
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_2346
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_2752conv2d_2_2754*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_2409ك
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_2358
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_2758conv2d_3_2760*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_2427ل
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_2370?
dropout_3/PartitionedCallPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2439ر
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_2447
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_2766dense_hidden_2768*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_2460?
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_2771dense_hidden_2_2773*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_2477
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0
ouput_2776
ouput_2778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_2494u
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
?

?
F__inference_dense_hidden_layer_call_and_return_conditional_losses_2460

inputs2
matmul_readvariableop_resource:
@.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????p
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>u
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_2477

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????p
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:?????????*
alpha%>u
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
­
ذ
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2856

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	
	unknown_5:
@
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:	

unknown_10:
identity?StatefulPartitionedCallن
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2501o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
ي

?
"__inference_signature_wrapper_3027	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	
	unknown_5:
@
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:	

unknown_10:
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_2337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
?
?
B__inference_conv2D_2_layer_call_and_return_conditional_losses_2409

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity?BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @w
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%>|
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
ن

'__inference_conv2D_2_layer_call_fn_3066

inputs!
unknown: @
	unknown_0:@
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_2409w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
؟
D
(__inference_dropout_3_layer_call_fn_3122

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2439i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
?/

N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2821	
input%
conv2d_2785: 
conv2d_2787: '
conv2d_2_2791: @
conv2d_2_2793:@(
conv2d_3_2797:@
conv2d_3_2799:	%
dense_hidden_2805:
@ 
dense_hidden_2807:	'
dense_hidden_2_2810:
"
dense_hidden_2_2812:	

ouput_2815:	

ouput_2817:
identity?conv2D/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall?$dense_hidden/StatefulPartitionedCall?&dense_hidden_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?ouput/StatefulPartitionedCallى
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_2785conv2d_2787*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_2391?
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_2346
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_2791conv2d_2_2793*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_2409ك
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_2358
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_2797conv2d_3_2799*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_2427ل
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_2370ٍ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_2584ع
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_2447
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_2805dense_hidden_2807*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_2460?
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_2810dense_hidden_2_2812*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_2477
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0
ouput_2815
ouput_2817*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_2494u
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????ء
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput

]
A__inference_pooling_layer_call_and_return_conditional_losses_3057

inputs
identity?
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
?
D
(__inference_pooling_2_layer_call_fn_3082

inputs
identityر
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
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_2358
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*،
serving_default
?
input6
serving_default_input:0?????????@@9
ouput0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ٌِ

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
ث

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
ث
$
activation

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
ث
3
activation

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
?
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
?
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
ث
O
activation

Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
ث
X
activation

Ykernel
Zbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
؛

akernel
bbias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
أ
iiter

jbeta_1

kbeta_2
	ldecay
mlearning_ratemٍmَ%mُ&mِ4mّ5mْPm?Qm?Ym?Zm?am?bm?v?v?%v?&v?4v?5v?Pv?QvYvZvavbv"
	optimizer
v
0
1
%2
&3
44
55
P6
Q7
Y8
Z9
a10
b11"
trackable_list_wrapper
v
0
1
%2
&3
44
55
P6
Q7
Y8
Z9
a10
b11"
trackable_list_wrapper
 "
trackable_list_wrapper
ت
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2528
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2856
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2885
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2743?
???
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
kwonlydefaults? 
annotations? *
 
2
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2937
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2996
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2782
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2821?
???
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
kwonlydefaults? 
annotations? *
 
بBإ
__inference__wrapped_model_2337input"
?
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
,
sserving_default"
signature_map
?
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
':% 2conv2D/kernel
: 2conv2D/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
د2ج
%__inference_conv2D_layer_call_fn_3036?
?
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
annotations? *
 
ي2ه
@__inference_conv2D_layer_call_and_return_conditional_losses_3047?
?
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
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ذ2ح
&__inference_pooling_layer_call_fn_3052?
?
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
annotations? *
 
ً2و
A__inference_pooling_layer_call_and_return_conditional_losses_3057?
?
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
annotations? *
 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
):' @2conv2D_2/kernel
:@2conv2D_2/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ر2خ
'__inference_conv2D_2_layer_call_fn_3066?
?
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
annotations? *
 
ٌ2ى
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3077?
?
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
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
ز2د
(__inference_pooling_2_layer_call_fn_3082?
?
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
annotations? *
 
ٍ2ي
C__inference_pooling_2_layer_call_and_return_conditional_losses_3087?
?
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
annotations? *
 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
*:(@2conv2D_3/kernel
:2conv2D_3/bias
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
?
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ر2خ
'__inference_conv2D_3_layer_call_fn_3096?
?
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
annotations? *
 
ٌ2ى
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3107?
?
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
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
 layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ز2د
(__inference_pooling_3_layer_call_fn_3112?
?
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
annotations? *
 
ٍ2ي
C__inference_pooling_3_layer_call_and_return_conditional_losses_3117?
?
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
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
¤non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_dropout_3_layer_call_fn_3122
(__inference_dropout_3_layer_call_fn_3127?
???
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
kwonlydefaults? 
annotations? *
 
ؤ2ء
C__inference_dropout_3_layer_call_and_return_conditional_losses_3132
C__inference_dropout_3_layer_call_and_return_conditional_losses_3144?
???
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
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ،layer_regularization_losses
­layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
ذ2ح
&__inference_flatten_layer_call_fn_3149?
?
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
annotations? *
 
ً2و
A__inference_flatten_layer_call_and_return_conditional_losses_3155?
?
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
annotations? *
 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
':%
@2dense_hidden/kernel
 :2dense_hidden/bias
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
ص2ز
+__inference_dense_hidden_layer_call_fn_3164?
?
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
annotations? *
 
ِ2ٍ
F__inference_dense_hidden_layer_call_and_return_conditional_losses_3175?
?
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
annotations? *
 
?
?	variables
?trainable_variables
؛regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
):'
2dense_hidden_2/kernel
": 2dense_hidden_2/bias
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
؟non_trainable_variables
?layers
ءmetrics
 آlayer_regularization_losses
أlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
ط2ش
-__inference_dense_hidden_2_layer_call_fn_3184?
?
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
annotations? *
 
ْ2ُ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_3195?
?
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
annotations? *
 
:	2ouput/kernel
:2
ouput/bias
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
ؤnon_trainable_variables
إlayers
ئmetrics
 اlayer_regularization_losses
بlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
خ2ث
$__inference_ouput_layer_call_fn_3204?
?
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
annotations? *
 
ى2ن
?__inference_ouput_layer_call_and_return_conditional_losses_3215?
?
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
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
n
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
10"
trackable_list_wrapper
0
ة0
ت1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
اBؤ
"__inference_signature_wrapper_3027input"
?
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
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ثnon_trainable_variables
جlayers
حmetrics
 خlayer_regularization_losses
دlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
?2??
?
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
annotations? *
 
?2??
?
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
annotations? *
 
 "
trackable_list_wrapper
'
0"
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
?
ذnon_trainable_variables
رlayers
زmetrics
 سlayer_regularization_losses
شlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
?2??
?
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
annotations? *
 
?2??
?
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
annotations? *
 
 "
trackable_list_wrapper
'
$0"
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
?
صnon_trainable_variables
ضlayers
طmetrics
 ظlayer_regularization_losses
عlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
?2??
?
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
annotations? *
 
?2??
?
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
annotations? *
 
 "
trackable_list_wrapper
'
30"
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
?
غnon_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
?
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
annotations? *
 
?2??
?
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
annotations? *
 
 "
trackable_list_wrapper
'
O0"
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
?
?non_trainable_variables
ـlayers
فmetrics
 قlayer_regularization_losses
كlayer_metrics
?	variables
?trainable_variables
؛regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
?
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
annotations? *
 
?2??
?
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
annotations? *
 
 "
trackable_list_wrapper
'
X0"
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

لtotal

مcount
ن	variables
ه	keras_api"
_tf_keras_metric
c

وtotal

ىcount
ي
_fn_kwargs
ً	variables
ٌ	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
ل0
م1"
trackable_list_wrapper
.
ن	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
و0
ى1"
trackable_list_wrapper
.
ً	variables"
_generic_user_object
,:* 2Adam/conv2D/kernel/m
: 2Adam/conv2D/bias/m
.:, @2Adam/conv2D_2/kernel/m
 :@2Adam/conv2D_2/bias/m
/:-@2Adam/conv2D_3/kernel/m
!:2Adam/conv2D_3/bias/m
,:*
@2Adam/dense_hidden/kernel/m
%:#2Adam/dense_hidden/bias/m
.:,
2Adam/dense_hidden_2/kernel/m
':%2Adam/dense_hidden_2/bias/m
$:"	2Adam/ouput/kernel/m
:2Adam/ouput/bias/m
,:* 2Adam/conv2D/kernel/v
: 2Adam/conv2D/bias/v
.:, @2Adam/conv2D_2/kernel/v
 :@2Adam/conv2D_2/bias/v
/:-@2Adam/conv2D_3/kernel/v
!:2Adam/conv2D_3/bias/v
,:*
@2Adam/dense_hidden/kernel/v
%:#2Adam/dense_hidden/bias/v
.:,
2Adam/dense_hidden_2/kernel/v
':%2Adam/dense_hidden_2/bias/v
$:"	2Adam/ouput/kernel/v
:2Adam/ouput/bias/v
__inference__wrapped_model_2337u%&45PQYZab6?3
,?)
'$
input?????????@@
? "-?*
(
ouput
ouput?????????ا
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2782u%&45PQYZab>?;
4?1
'$
input?????????@@
p 

 
? "%?"

0?????????
 ا
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2821u%&45PQYZab>?;
4?1
'$
input?????????@@
p

 
? "%?"

0?????????
 ب
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2937v%&45PQYZab??<
5?2
(%
inputs?????????@@
p 

 
? "%?"

0?????????
 ب
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_2996v%&45PQYZab??<
5?2
(%
inputs?????????@@
p

 
? "%?"

0?????????
 
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2528h%&45PQYZab>?;
4?1
'$
input?????????@@
p 

 
? "?????????
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2743h%&45PQYZab>?;
4?1
'$
input?????????@@
p

 
? "????????? 
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2856i%&45PQYZab??<
5?2
(%
inputs?????????@@
p 

 
? "????????? 
3__inference_cnn_13_drop_out_0.25_layer_call_fn_2885i%&45PQYZab??<
5?2
(%
inputs?????????@@
p

 
? "??????????
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3077l%&7?4
-?*
(%
inputs?????????   
? "-?*
# 
0?????????  @
 
'__inference_conv2D_2_layer_call_fn_3066_%&7?4
-?*
(%
inputs?????????   
? " ?????????  @?
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3107m457?4
-?*
(%
inputs?????????@
? ".?+
$!
0?????????
 
'__inference_conv2D_3_layer_call_fn_3096`457?4
-?*
(%
inputs?????????@
? "!??????????
@__inference_conv2D_layer_call_and_return_conditional_losses_3047l7?4
-?*
(%
inputs?????????@@
? "-?*
# 
0?????????@@ 
 
%__inference_conv2D_layer_call_fn_3036_7?4
-?*
(%
inputs?????????@@
? " ?????????@@ ?
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_3195^YZ0?-
&?#
!
inputs?????????
? "&?#

0?????????
 
-__inference_dense_hidden_2_layer_call_fn_3184QYZ0?-
&?#
!
inputs?????????
? "??????????
F__inference_dense_hidden_layer_call_and_return_conditional_losses_3175^PQ0?-
&?#
!
inputs?????????@
? "&?#

0?????????
 
+__inference_dense_hidden_layer_call_fn_3164QPQ0?-
&?#
!
inputs?????????@
? "??????????
C__inference_dropout_3_layer_call_and_return_conditional_losses_3132n<?9
2?/
)&
inputs?????????
p 
? ".?+
$!
0?????????
 ?
C__inference_dropout_3_layer_call_and_return_conditional_losses_3144n<?9
2?/
)&
inputs?????????
p
? ".?+
$!
0?????????
 
(__inference_dropout_3_layer_call_fn_3122a<?9
2?/
)&
inputs?????????
p 
? "!?????????
(__inference_dropout_3_layer_call_fn_3127a<?9
2?/
)&
inputs?????????
p
? "!??????????
A__inference_flatten_layer_call_and_return_conditional_losses_3155b8?5
.?+
)&
inputs?????????
? "&?#

0?????????@
 
&__inference_flatten_layer_call_fn_3149U8?5
.?+
)&
inputs?????????
? "?????????@ 
?__inference_ouput_layer_call_and_return_conditional_losses_3215]ab0?-
&?#
!
inputs?????????
? "%?"

0?????????
 x
$__inference_ouput_layer_call_fn_3204Pab0?-
&?#
!
inputs?????????
? "?????????ن
C__inference_pooling_2_layer_call_and_return_conditional_losses_3087R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ?
(__inference_pooling_2_layer_call_fn_3082R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????ن
C__inference_pooling_3_layer_call_and_return_conditional_losses_3117R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ?
(__inference_pooling_3_layer_call_fn_3112R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????ل
A__inference_pooling_layer_call_and_return_conditional_losses_3057R?O
H?E
C@
inputs4????????????????????????????????????
? "H?E
>;
04????????????????????????????????????
 ?
&__inference_pooling_layer_call_fn_3052R?O
H?E
C@
inputs4????????????????????????????????????
? ";84????????????????????????????????????¤
"__inference_signature_wrapper_3027~%&45PQYZab??<
? 
5?2
0
input'$
input?????????@@"-?*
(
ouput
ouput?????????