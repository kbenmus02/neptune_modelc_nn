ШЁ
Ъы
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
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
alphafloat%═╠L>"
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
В
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
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68╣э	
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
В
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
Г
conv2D_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2D_3/kernel
|
#conv2D_3/kernel/Read/ReadVariableOpReadVariableOpconv2D_3/kernel*'
_output_shapes
:@А*
dtype0
s
conv2D_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2D_3/bias
l
!conv2D_3/bias/Read/ReadVariableOpReadVariableOpconv2D_3/bias*
_output_shapes	
:А*
dtype0
Д
dense_hidden/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А@А*$
shared_namedense_hidden/kernel
}
'dense_hidden/kernel/Read/ReadVariableOpReadVariableOpdense_hidden/kernel* 
_output_shapes
:
А@А*
dtype0
{
dense_hidden/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_namedense_hidden/bias
t
%dense_hidden/bias/Read/ReadVariableOpReadVariableOpdense_hidden/bias*
_output_shapes	
:А*
dtype0
И
dense_hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_namedense_hidden_2/kernel
Б
)dense_hidden_2/kernel/Read/ReadVariableOpReadVariableOpdense_hidden_2/kernel* 
_output_shapes
:
АА*
dtype0

dense_hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_namedense_hidden_2/bias
x
'dense_hidden_2/bias/Read/ReadVariableOpReadVariableOpdense_hidden_2/bias*
_output_shapes	
:А*
dtype0
u
ouput/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_nameouput/kernel
n
 ouput/kernel/Read/ReadVariableOpReadVariableOpouput/kernel*
_output_shapes
:	А*
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
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
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
М
Adam/conv2D/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D/kernel/m
Е
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
Р
Adam/conv2D_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/m
Й
*Adam/conv2D_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/m*&
_output_shapes
: @*
dtype0
А
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
С
Adam/conv2D_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/conv2D_3/kernel/m
К
*Adam/conv2D_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/kernel/m*'
_output_shapes
:@А*
dtype0
Б
Adam/conv2D_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2D_3/bias/m
z
(Adam/conv2D_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/bias/m*
_output_shapes	
:А*
dtype0
Т
Adam/dense_hidden/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А@А*+
shared_nameAdam/dense_hidden/kernel/m
Л
.Adam/dense_hidden/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/kernel/m* 
_output_shapes
:
А@А*
dtype0
Й
Adam/dense_hidden/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/dense_hidden/bias/m
В
,Adam/dense_hidden/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/bias/m*
_output_shapes	
:А*
dtype0
Ц
Adam/dense_hidden_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*-
shared_nameAdam/dense_hidden_2/kernel/m
П
0Adam/dense_hidden_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/kernel/m* 
_output_shapes
:
АА*
dtype0
Н
Adam/dense_hidden_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameAdam/dense_hidden_2/bias/m
Ж
.Adam/dense_hidden_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/bias/m*
_output_shapes	
:А*
dtype0
Г
Adam/ouput/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/ouput/kernel/m
|
'Adam/ouput/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ouput/kernel/m*
_output_shapes
:	А*
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
М
Adam/conv2D/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D/kernel/v
Е
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
Р
Adam/conv2D_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/v
Й
*Adam/conv2D_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/v*&
_output_shapes
: @*
dtype0
А
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
С
Adam/conv2D_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/conv2D_3/kernel/v
К
*Adam/conv2D_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/kernel/v*'
_output_shapes
:@А*
dtype0
Б
Adam/conv2D_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2D_3/bias/v
z
(Adam/conv2D_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/bias/v*
_output_shapes	
:А*
dtype0
Т
Adam/dense_hidden/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А@А*+
shared_nameAdam/dense_hidden/kernel/v
Л
.Adam/dense_hidden/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/kernel/v* 
_output_shapes
:
А@А*
dtype0
Й
Adam/dense_hidden/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/dense_hidden/bias/v
В
,Adam/dense_hidden/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/bias/v*
_output_shapes	
:А*
dtype0
Ц
Adam/dense_hidden_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*-
shared_nameAdam/dense_hidden_2/kernel/v
П
0Adam/dense_hidden_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/kernel/v* 
_output_shapes
:
АА*
dtype0
Н
Adam/dense_hidden_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameAdam/dense_hidden_2/bias/v
Ж
.Adam/dense_hidden_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/bias/v*
_output_shapes	
:А*
dtype0
Г
Adam/ouput/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/ouput/kernel/v
|
'Adam/ouput/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ouput/kernel/v*
_output_shapes
:	А*
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
Ёs
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*лs
valueбsBЮs BЧs
°
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
╢
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
О
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
╢
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
О
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
╢
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
О
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
е
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses* 
О
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses* 
╢
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
╢
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
ж

akernel
bbias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses*
┤

ibeta_1

jbeta_2
	kdecay
llearning_rate
mitermэmю%mя&mЁ4mё5mЄPmєQmЇYmїZmЎamўbm°v∙v·%v√&v№4v¤5v■Pv QvАYvБZvВavГbvД*
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
░
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
О
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
У
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
Х
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 
* 
* 
Ф
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses* 
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
Ш
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
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
Ц
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 
* 
* 
Ф
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses* 
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
Ш
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
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
Ц
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
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
Ц
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
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
Ц
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 
* 
* 
Ф
о	variables
пtrainable_variables
░regularization_losses
▒	keras_api
▓__call__
+│&call_and_return_all_conditional_losses* 
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
Ш
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*
* 
* 
Ф
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses* 
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
Ш
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
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
Ш
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*
* 
* 
KE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
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
╔0
╩1*
* 
* 
* 
* 
* 
* 
Ц
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
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
Ь
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses* 
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
Ь
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses* 
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
Ь
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
о	variables
пtrainable_variables
░regularization_losses
▓__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses* 
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
Ь
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses* 
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

фtotal

хcount
ц	variables
ч	keras_api*
M

шtotal

щcount
ъ
_fn_kwargs
ы	variables
ь	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
ф0
х1*

ц	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ш0
щ1*

ы	variables*
Аz
VARIABLE_VALUEAdam/conv2D/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2D/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2D_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2D_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/dense_hidden/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_hidden/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUEAdam/dense_hidden_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/dense_hidden_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/ouput/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/ouput/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2D/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2D/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2D_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2D_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/dense_hidden/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_hidden/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUEAdam/dense_hidden_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/dense_hidden_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/ouput/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/ouput/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
И
serving_default_inputPlaceholder*/
_output_shapes
:         @@*
dtype0*$
shape:         @@
Р
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2D/kernelconv2D/biasconv2D_2/kernelconv2D_2/biasconv2D_3/kernelconv2D_3/biasdense_hidden/kerneldense_hidden/biasdense_hidden_2/kerneldense_hidden_2/biasouput/kernel
ouput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_4464
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
б
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2D/kernel/Read/ReadVariableOpconv2D/bias/Read/ReadVariableOp#conv2D_2/kernel/Read/ReadVariableOp!conv2D_2/bias/Read/ReadVariableOp#conv2D_3/kernel/Read/ReadVariableOp!conv2D_3/bias/Read/ReadVariableOp'dense_hidden/kernel/Read/ReadVariableOp%dense_hidden/bias/Read/ReadVariableOp)dense_hidden_2/kernel/Read/ReadVariableOp'dense_hidden_2/bias/Read/ReadVariableOp ouput/kernel/Read/ReadVariableOpouput/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2D/kernel/m/Read/ReadVariableOp&Adam/conv2D/bias/m/Read/ReadVariableOp*Adam/conv2D_2/kernel/m/Read/ReadVariableOp(Adam/conv2D_2/bias/m/Read/ReadVariableOp*Adam/conv2D_3/kernel/m/Read/ReadVariableOp(Adam/conv2D_3/bias/m/Read/ReadVariableOp.Adam/dense_hidden/kernel/m/Read/ReadVariableOp,Adam/dense_hidden/bias/m/Read/ReadVariableOp0Adam/dense_hidden_2/kernel/m/Read/ReadVariableOp.Adam/dense_hidden_2/bias/m/Read/ReadVariableOp'Adam/ouput/kernel/m/Read/ReadVariableOp%Adam/ouput/bias/m/Read/ReadVariableOp(Adam/conv2D/kernel/v/Read/ReadVariableOp&Adam/conv2D/bias/v/Read/ReadVariableOp*Adam/conv2D_2/kernel/v/Read/ReadVariableOp(Adam/conv2D_2/bias/v/Read/ReadVariableOp*Adam/conv2D_3/kernel/v/Read/ReadVariableOp(Adam/conv2D_3/bias/v/Read/ReadVariableOp.Adam/dense_hidden/kernel/v/Read/ReadVariableOp,Adam/dense_hidden/bias/v/Read/ReadVariableOp0Adam/dense_hidden_2/kernel/v/Read/ReadVariableOp.Adam/dense_hidden_2/bias/v/Read/ReadVariableOp'Adam/ouput/kernel/v/Read/ReadVariableOp%Adam/ouput/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
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
GPU 2J 8В *&
f!R
__inference__traced_save_4810
Ш	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2D/kernelconv2D/biasconv2D_2/kernelconv2D_2/biasconv2D_3/kernelconv2D_3/biasdense_hidden/kerneldense_hidden/biasdense_hidden_2/kerneldense_hidden_2/biasouput/kernel
ouput/biasbeta_1beta_2decaylearning_rate	Adam/itertotalcounttotal_1count_1Adam/conv2D/kernel/mAdam/conv2D/bias/mAdam/conv2D_2/kernel/mAdam/conv2D_2/bias/mAdam/conv2D_3/kernel/mAdam/conv2D_3/bias/mAdam/dense_hidden/kernel/mAdam/dense_hidden/bias/mAdam/dense_hidden_2/kernel/mAdam/dense_hidden_2/bias/mAdam/ouput/kernel/mAdam/ouput/bias/mAdam/conv2D/kernel/vAdam/conv2D/bias/vAdam/conv2D_2/kernel/vAdam/conv2D_2/bias/vAdam/conv2D_3/kernel/vAdam/conv2D_3/bias/vAdam/dense_hidden/kernel/vAdam/dense_hidden/bias/vAdam/dense_hidden_2/kernel/vAdam/dense_hidden_2/bias/vAdam/ouput/kernel/vAdam/ouput/bias/v*9
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
GPU 2J 8В *)
f$R"
 __inference__traced_restore_4955эВ
╗
Т
$__inference_ouput_layer_call_fn_4641

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_3931o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
│
√
B__inference_conv2D_2_layer_call_and_return_conditional_losses_4514

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
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
:           @w
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>|
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:           @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Щ

ё
?__inference_ouput_layer_call_and_return_conditional_losses_3931

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
л
B
&__inference_flatten_layer_call_fn_4586

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3884a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
│
√
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3846

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
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
:           @w
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>|
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:           @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╗
¤
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3864

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аx
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>}
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┼
]
A__inference_flatten_layer_call_and_return_conditional_losses_3884

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
√/
З
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4124

inputs%
conv2d_4088: 
conv2d_4090: '
conv2d_2_4094: @
conv2d_2_4096:@(
conv2d_3_4100:@А
conv2d_3_4102:	А%
dense_hidden_4108:
А@А 
dense_hidden_4110:	А'
dense_hidden_2_4113:
АА"
dense_hidden_2_4115:	А

ouput_4118:	А

ouput_4120:
identityИвconv2D/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallв conv2D_3/StatefulPartitionedCallв$dense_hidden/StatefulPartitionedCallв&dense_hidden_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallвouput/StatefulPartitionedCallъ
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4088conv2d_4090*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_3828▌
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_3783М
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_4094conv2d_2_4096*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3846у
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_3795П
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_4100conv2d_3_4102*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3864ф
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_3807э
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_4021┘
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3884Х
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_4108dense_hidden_4110*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_3897к
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_4113dense_hidden_2_4115*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_3914З
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0
ouput_4118
ouput_4120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_3931u
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┴
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╗
¤
B__inference_conv2D_3_layer_call_and_return_conditional_losses_4544

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аx
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>}
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╗H
ц	
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4433

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@А7
(conv2d_3_biasadd_readvariableop_resource:	А?
+dense_hidden_matmul_readvariableop_resource:
А@А;
,dense_hidden_biasadd_readvariableop_resource:	АA
-dense_hidden_2_matmul_readvariableop_resource:
АА=
.dense_hidden_2_biasadd_readvariableop_resource:	А7
$ouput_matmul_readvariableop_resource:	А3
%ouput_biasadd_readvariableop_resource:
identityИвconv2D/BiasAdd/ReadVariableOpвconv2D/Conv2D/ReadVariableOpвconv2D_2/BiasAdd/ReadVariableOpвconv2D_2/Conv2D/ReadVariableOpвconv2D_3/BiasAdd/ReadVariableOpвconv2D_3/Conv2D/ReadVariableOpв#dense_hidden/BiasAdd/ReadVariableOpв"dense_hidden/MatMul/ReadVariableOpв%dense_hidden_2/BiasAdd/ReadVariableOpв$dense_hidden_2/MatMul/ReadVariableOpвouput/BiasAdd/ReadVariableOpвouput/MatMul/ReadVariableOpК
conv2D/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0з
conv2D/Conv2DConv2Dinputs$conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
А
conv2D/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Т
conv2D/BiasAddBiasAddconv2D/Conv2D:output:0%conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ Г
conv2D/leaky_re_lu/LeakyRelu	LeakyReluconv2D/BiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>│
pooling/MaxPoolMaxPool*conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
О
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╜
conv2D_2/Conv2DConv2Dpooling/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
Д
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @Й
 conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyReluconv2D_2/BiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>╣
pooling_2/MaxPoolMaxPool.conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
П
conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0└
conv2D_3/Conv2DConv2Dpooling_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АК
 conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyReluconv2D_3/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>║
pooling_3/MaxPoolMaxPool.conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:         А*
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
 *лкк?Х
dropout_3/dropout/MulMulpooling_3/MaxPool:output:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:         Аa
dropout_3/dropout/ShapeShapepooling_3/MaxPool:output:0*
T0*
_output_shapes
:й
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>═
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АМ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         АР
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:         А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"        В
flatten/ReshapeReshapedropout_3/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:         А@Р
"dense_hidden/MatMul/ReadVariableOpReadVariableOp+dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0Ц
dense_hidden/MatMulMatMulflatten/Reshape:output:0*dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АН
#dense_hidden/BiasAdd/ReadVariableOpReadVariableOp,dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_hidden/BiasAddBiasAdddense_hidden/MatMul:product:0+dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АК
$dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyReludense_hidden/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>Ф
$dense_hidden_2/MatMul/ReadVariableOpReadVariableOp-dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0┤
dense_hidden_2/MatMulMatMul2dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0,dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АС
%dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOp.dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0д
dense_hidden_2/BiasAddBiasAdddense_hidden_2/MatMul:product:0-dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АО
&dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyReludense_hidden_2/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>Б
ouput/MatMul/ReadVariableOpReadVariableOp$ouput_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0г
ouput/MatMulMatMul4dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:0#ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
ouput/BiasAdd/ReadVariableOpReadVariableOp%ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
ouput/BiasAddBiasAddouput/MatMul:product:0$ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
ouput/SigmoidSigmoidouput/BiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentityouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         т
NoOpNoOp^conv2D/BiasAdd/ReadVariableOp^conv2D/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp$^dense_hidden/BiasAdd/ReadVariableOp#^dense_hidden/MatMul/ReadVariableOp&^dense_hidden_2/BiasAdd/ReadVariableOp%^dense_hidden_2/MatMul/ReadVariableOp^ouput/BiasAdd/ReadVariableOp^ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2>
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
:         @@
 
_user_specified_nameinputs
Л
_
C__inference_pooling_3_layer_call_and_return_conditional_losses_3807

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╨.
т
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4219	
input%
conv2d_4183: 
conv2d_4185: '
conv2d_2_4189: @
conv2d_2_4191:@(
conv2d_3_4195:@А
conv2d_3_4197:	А%
dense_hidden_4203:
А@А 
dense_hidden_4205:	А'
dense_hidden_2_4208:
АА"
dense_hidden_2_4210:	А

ouput_4213:	А

ouput_4215:
identityИвconv2D/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallв conv2D_3/StatefulPartitionedCallв$dense_hidden/StatefulPartitionedCallв&dense_hidden_2/StatefulPartitionedCallвouput/StatefulPartitionedCallщ
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_4183conv2d_4185*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_3828▌
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_3783М
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_4189conv2d_2_4191*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3846у
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_3795П
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_4195conv2d_3_4197*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3864ф
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_3807▌
dropout_3/PartitionedCallPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_3876╤
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3884Х
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_4203dense_hidden_4205*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_3897к
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_4208dense_hidden_2_4210*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_3914З
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0
ouput_4213
ouput_4215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_3931u
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Э
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
ъ
Ю
'__inference_conv2D_3_layer_call_fn_4533

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3864x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
▌

№
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_3914

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аp
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>u
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
и
D
(__inference_pooling_3_layer_call_fn_4549

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_3807Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┼
]
A__inference_flatten_layer_call_and_return_conditional_losses_4592

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
н
∙
@__inference_conv2D_layer_call_and_return_conditional_losses_3828

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
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
:         @@ u
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>z
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
н
╨
3__inference_cnn_13_drop_out_0.25_layer_call_fn_4322

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
н
╨
3__inference_cnn_13_drop_out_0.25_layer_call_fn_4293

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_3938o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Й
]
A__inference_pooling_layer_call_and_return_conditional_losses_3783

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┐
D
(__inference_dropout_3_layer_call_fn_4559

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_3876i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Л
_
C__inference_pooling_3_layer_call_and_return_conditional_losses_4554

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
═
Ы
+__inference_dense_hidden_layer_call_fn_4601

inputs
unknown:
А@А
	unknown_0:	А
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_3897p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А@: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
н
∙
@__inference_conv2D_layer_call_and_return_conditional_losses_4484

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
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
:         @@ u
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>z
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Щ

ё
?__inference_ouput_layer_call_and_return_conditional_losses_4652

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╣

b
C__inference_dropout_3_layer_call_and_return_conditional_losses_4581

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
т
Ъ
%__inference_conv2D_layer_call_fn_4473

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_3828w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
·
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_3876

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Й
]
A__inference_pooling_layer_call_and_return_conditional_losses_4494

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█

·
F__inference_dense_hidden_layer_call_and_return_conditional_losses_3897

inputs2
matmul_readvariableop_resource:
А@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аp
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>u
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
ц
Ь
'__inference_conv2D_2_layer_call_fn_4503

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3846w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
к
╧
3__inference_cnn_13_drop_out_0.25_layer_call_fn_3965	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_3938o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
к
╧
3__inference_cnn_13_drop_out_0.25_layer_call_fn_4180	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
°/
Ж
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4258	
input%
conv2d_4222: 
conv2d_4224: '
conv2d_2_4228: @
conv2d_2_4230:@(
conv2d_3_4234:@А
conv2d_3_4236:	А%
dense_hidden_4242:
А@А 
dense_hidden_4244:	А'
dense_hidden_2_4247:
АА"
dense_hidden_2_4249:	А

ouput_4252:	А

ouput_4254:
identityИвconv2D/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallв conv2D_3/StatefulPartitionedCallв$dense_hidden/StatefulPartitionedCallв&dense_hidden_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallвouput/StatefulPartitionedCallщ
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_4222conv2d_4224*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_3828▌
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_3783М
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_4228conv2d_2_4230*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3846у
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_3795П
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_4234conv2d_3_4236*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3864ф
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_3807э
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_4021┘
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3884Х
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_4242dense_hidden_4244*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_3897к
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_4247dense_hidden_2_4249*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_3914З
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0
ouput_4252
ouput_4254*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_3931u
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┴
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
▌

№
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_4632

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аp
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>u
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
█

·
F__inference_dense_hidden_layer_call_and_return_conditional_losses_4612

inputs2
matmul_readvariableop_resource:
А@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аp
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>u
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
·│
х
 __inference__traced_restore_4955
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_2_kernel: @.
 assignvariableop_3_conv2d_2_bias:@=
"assignvariableop_4_conv2d_3_kernel:@А/
 assignvariableop_5_conv2d_3_bias:	А:
&assignvariableop_6_dense_hidden_kernel:
А@А3
$assignvariableop_7_dense_hidden_bias:	А<
(assignvariableop_8_dense_hidden_2_kernel:
АА5
&assignvariableop_9_dense_hidden_2_bias:	А3
 assignvariableop_10_ouput_kernel:	А,
assignvariableop_11_ouput_bias:$
assignvariableop_12_beta_1: $
assignvariableop_13_beta_2: #
assignvariableop_14_decay: +
!assignvariableop_15_learning_rate: '
assignvariableop_16_adam_iter:	 #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: B
(assignvariableop_21_adam_conv2d_kernel_m: 4
&assignvariableop_22_adam_conv2d_bias_m: D
*assignvariableop_23_adam_conv2d_2_kernel_m: @6
(assignvariableop_24_adam_conv2d_2_bias_m:@E
*assignvariableop_25_adam_conv2d_3_kernel_m:@А7
(assignvariableop_26_adam_conv2d_3_bias_m:	АB
.assignvariableop_27_adam_dense_hidden_kernel_m:
А@А;
,assignvariableop_28_adam_dense_hidden_bias_m:	АD
0assignvariableop_29_adam_dense_hidden_2_kernel_m:
АА=
.assignvariableop_30_adam_dense_hidden_2_bias_m:	А:
'assignvariableop_31_adam_ouput_kernel_m:	А3
%assignvariableop_32_adam_ouput_bias_m:B
(assignvariableop_33_adam_conv2d_kernel_v: 4
&assignvariableop_34_adam_conv2d_bias_v: D
*assignvariableop_35_adam_conv2d_2_kernel_v: @6
(assignvariableop_36_adam_conv2d_2_bias_v:@E
*assignvariableop_37_adam_conv2d_3_kernel_v:@А7
(assignvariableop_38_adam_conv2d_3_bias_v:	АB
.assignvariableop_39_adam_dense_hidden_kernel_v:
А@А;
,assignvariableop_40_adam_dense_hidden_bias_v:	АD
0assignvariableop_41_adam_dense_hidden_2_kernel_v:
АА=
.assignvariableop_42_adam_dense_hidden_2_bias_v:	А:
'assignvariableop_43_adam_ouput_kernel_v:	А3
%assignvariableop_44_adam_ouput_bias_v:
identity_46ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9ж
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*╠
value┬B┐.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╠
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B З
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_6AssignVariableOp&assignvariableop_6_dense_hidden_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_7AssignVariableOp$assignvariableop_7_dense_hidden_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_8AssignVariableOp(assignvariableop_8_dense_hidden_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_9AssignVariableOp&assignvariableop_9_dense_hidden_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_10AssignVariableOp assignvariableop_10_ouput_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_11AssignVariableOpassignvariableop_11_ouput_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_12AssignVariableOpassignvariableop_12_beta_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_13AssignVariableOpassignvariableop_13_beta_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_14AssignVariableOpassignvariableop_14_decayIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv2d_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_conv2d_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_dense_hidden_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adam_dense_hidden_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adam_dense_hidden_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adam_dense_hidden_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_ouput_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_ouput_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_conv2d_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_39AssignVariableOp.assignvariableop_39_adam_dense_hidden_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_40AssignVariableOp,assignvariableop_40_adam_dense_hidden_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_41AssignVariableOp0assignvariableop_41_adam_dense_hidden_2_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adam_dense_hidden_2_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_ouput_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_ouput_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 н
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: Ъ
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
╘@
ц	
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4374

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@А7
(conv2d_3_biasadd_readvariableop_resource:	А?
+dense_hidden_matmul_readvariableop_resource:
А@А;
,dense_hidden_biasadd_readvariableop_resource:	АA
-dense_hidden_2_matmul_readvariableop_resource:
АА=
.dense_hidden_2_biasadd_readvariableop_resource:	А7
$ouput_matmul_readvariableop_resource:	А3
%ouput_biasadd_readvariableop_resource:
identityИвconv2D/BiasAdd/ReadVariableOpвconv2D/Conv2D/ReadVariableOpвconv2D_2/BiasAdd/ReadVariableOpвconv2D_2/Conv2D/ReadVariableOpвconv2D_3/BiasAdd/ReadVariableOpвconv2D_3/Conv2D/ReadVariableOpв#dense_hidden/BiasAdd/ReadVariableOpв"dense_hidden/MatMul/ReadVariableOpв%dense_hidden_2/BiasAdd/ReadVariableOpв$dense_hidden_2/MatMul/ReadVariableOpвouput/BiasAdd/ReadVariableOpвouput/MatMul/ReadVariableOpК
conv2D/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0з
conv2D/Conv2DConv2Dinputs$conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
А
conv2D/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Т
conv2D/BiasAddBiasAddconv2D/Conv2D:output:0%conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ Г
conv2D/leaky_re_lu/LeakyRelu	LeakyReluconv2D/BiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>│
pooling/MaxPoolMaxPool*conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
О
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╜
conv2D_2/Conv2DConv2Dpooling/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
Д
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @Й
 conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyReluconv2D_2/BiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>╣
pooling_2/MaxPoolMaxPool.conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
П
conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0└
conv2D_3/Conv2DConv2Dpooling_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АК
 conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyReluconv2D_3/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>║
pooling_3/MaxPoolMaxPool.conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
u
dropout_3/IdentityIdentitypooling_3/MaxPool:output:0*
T0*0
_output_shapes
:         А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"        В
flatten/ReshapeReshapedropout_3/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А@Р
"dense_hidden/MatMul/ReadVariableOpReadVariableOp+dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0Ц
dense_hidden/MatMulMatMulflatten/Reshape:output:0*dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АН
#dense_hidden/BiasAdd/ReadVariableOpReadVariableOp,dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_hidden/BiasAddBiasAdddense_hidden/MatMul:product:0+dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АК
$dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyReludense_hidden/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>Ф
$dense_hidden_2/MatMul/ReadVariableOpReadVariableOp-dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0┤
dense_hidden_2/MatMulMatMul2dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0,dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АС
%dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOp.dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0д
dense_hidden_2/BiasAddBiasAdddense_hidden_2/MatMul:product:0-dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АО
&dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyReludense_hidden_2/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>Б
ouput/MatMul/ReadVariableOpReadVariableOp$ouput_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0г
ouput/MatMulMatMul4dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:0#ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
ouput/BiasAdd/ReadVariableOpReadVariableOp%ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
ouput/BiasAddBiasAddouput/MatMul:product:0$ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
ouput/SigmoidSigmoidouput/BiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentityouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         т
NoOpNoOp^conv2D/BiasAdd/ReadVariableOp^conv2D/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp$^dense_hidden/BiasAdd/ReadVariableOp#^dense_hidden/MatMul/ReadVariableOp&^dense_hidden_2/BiasAdd/ReadVariableOp%^dense_hidden_2/MatMul/ReadVariableOp^ouput/BiasAdd/ReadVariableOp^ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2>
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
:         @@
 
_user_specified_nameinputs
С
a
(__inference_dropout_3_layer_call_fn_4564

inputs
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_4021x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╤
Э
-__inference_dense_hidden_2_layer_call_fn_4621

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_3914p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
їW
о
__inference__wrapped_model_3774	
inputT
:cnn_13_drop_out_0_25_conv2d_conv2d_readvariableop_resource: I
;cnn_13_drop_out_0_25_conv2d_biasadd_readvariableop_resource: V
<cnn_13_drop_out_0_25_conv2d_2_conv2d_readvariableop_resource: @K
=cnn_13_drop_out_0_25_conv2d_2_biasadd_readvariableop_resource:@W
<cnn_13_drop_out_0_25_conv2d_3_conv2d_readvariableop_resource:@АL
=cnn_13_drop_out_0_25_conv2d_3_biasadd_readvariableop_resource:	АT
@cnn_13_drop_out_0_25_dense_hidden_matmul_readvariableop_resource:
А@АP
Acnn_13_drop_out_0_25_dense_hidden_biasadd_readvariableop_resource:	АV
Bcnn_13_drop_out_0_25_dense_hidden_2_matmul_readvariableop_resource:
ААR
Ccnn_13_drop_out_0_25_dense_hidden_2_biasadd_readvariableop_resource:	АL
9cnn_13_drop_out_0_25_ouput_matmul_readvariableop_resource:	АH
:cnn_13_drop_out_0_25_ouput_biasadd_readvariableop_resource:
identityИв2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOpв1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOpв4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOpв3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOpв4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOpв3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOpв8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOpв7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOpв:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOpв9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOpв1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOpв0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp┤
1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOpReadVariableOp:cnn_13_drop_out_0_25_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╨
"cnn_13_drop_out_0.25/conv2D/Conv2DConv2Dinput9cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
к
2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOpReadVariableOp;cnn_13_drop_out_0_25_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╤
#cnn_13_drop_out_0.25/conv2D/BiasAddBiasAdd+cnn_13_drop_out_0.25/conv2D/Conv2D:output:0:cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ н
1cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyRelu	LeakyRelu,cnn_13_drop_out_0.25/conv2D/BiasAdd:output:0*/
_output_shapes
:         @@ *
alpha%ЪЩЩ>▌
$cnn_13_drop_out_0.25/pooling/MaxPoolMaxPool?cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
╕
3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOpReadVariableOp<cnn_13_drop_out_0_25_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0№
$cnn_13_drop_out_0.25/conv2D_2/Conv2DConv2D-cnn_13_drop_out_0.25/pooling/MaxPool:output:0;cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
о
4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOpReadVariableOp=cnn_13_drop_out_0_25_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╫
%cnn_13_drop_out_0.25/conv2D_2/BiasAddBiasAdd-cnn_13_drop_out_0.25/conv2D_2/Conv2D:output:0<cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @│
5cnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyRelu.cnn_13_drop_out_0.25/conv2D_2/BiasAdd:output:0*/
_output_shapes
:           @*
alpha%ЪЩЩ>у
&cnn_13_drop_out_0.25/pooling_2/MaxPoolMaxPoolCcnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
╣
3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOpReadVariableOp<cnn_13_drop_out_0_25_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0 
$cnn_13_drop_out_0.25/conv2D_3/Conv2DConv2D/cnn_13_drop_out_0.25/pooling_2/MaxPool:output:0;cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
п
4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOpReadVariableOp=cnn_13_drop_out_0_25_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╪
%cnn_13_drop_out_0.25/conv2D_3/BiasAddBiasAdd-cnn_13_drop_out_0.25/conv2D_3/Conv2D:output:0<cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А┤
5cnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyRelu.cnn_13_drop_out_0.25/conv2D_3/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>ф
&cnn_13_drop_out_0.25/pooling_3/MaxPoolMaxPoolCcnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Я
'cnn_13_drop_out_0.25/dropout_3/IdentityIdentity/cnn_13_drop_out_0.25/pooling_3/MaxPool:output:0*
T0*0
_output_shapes
:         Аs
"cnn_13_drop_out_0.25/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"        ┴
$cnn_13_drop_out_0.25/flatten/ReshapeReshape0cnn_13_drop_out_0.25/dropout_3/Identity:output:0+cnn_13_drop_out_0.25/flatten/Const:output:0*
T0*(
_output_shapes
:         А@║
7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOpReadVariableOp@cnn_13_drop_out_0_25_dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0╒
(cnn_13_drop_out_0.25/dense_hidden/MatMulMatMul-cnn_13_drop_out_0.25/flatten/Reshape:output:0?cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╖
8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOpReadVariableOpAcnn_13_drop_out_0_25_dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0▌
)cnn_13_drop_out_0.25/dense_hidden/BiasAddBiasAdd2cnn_13_drop_out_0.25/dense_hidden/MatMul:product:0@cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А┤
9cnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyRelu2cnn_13_drop_out_0.25/dense_hidden/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>╛
9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOpReadVariableOpBcnn_13_drop_out_0_25_dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0є
*cnn_13_drop_out_0.25/dense_hidden_2/MatMulMatMulGcnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0Acnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╗
:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOpCcnn_13_drop_out_0_25_dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0у
+cnn_13_drop_out_0.25/dense_hidden_2/BiasAddBiasAdd4cnn_13_drop_out_0.25/dense_hidden_2/MatMul:product:0Bcnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╕
;cnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyRelu4cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd:output:0*(
_output_shapes
:         А*
alpha%ЪЩЩ>л
0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOpReadVariableOp9cnn_13_drop_out_0_25_ouput_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0т
!cnn_13_drop_out_0.25/ouput/MatMulMatMulIcnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:08cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         и
1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOpReadVariableOp:cnn_13_drop_out_0_25_ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╟
"cnn_13_drop_out_0.25/ouput/BiasAddBiasAdd+cnn_13_drop_out_0.25/ouput/MatMul:product:09cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         М
"cnn_13_drop_out_0.25/ouput/SigmoidSigmoid+cnn_13_drop_out_0.25/ouput/BiasAdd:output:0*
T0*'
_output_shapes
:         u
IdentityIdentity&cnn_13_drop_out_0.25/ouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ▐
NoOpNoOp3^cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2^cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp5^cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp4^cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp5^cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp4^cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp9^cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp8^cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp;^cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:^cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp2^cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp1^cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2h
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
:         @@

_user_specified_nameinput
Л
_
C__inference_pooling_2_layer_call_and_return_conditional_losses_4524

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
к\
┤
__inference__traced_save_4810
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
%savev2_ouput_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	$
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

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: г
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*╠
value┬B┐.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╔
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B є
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop.savev2_dense_hidden_kernel_read_readvariableop,savev2_dense_hidden_bias_read_readvariableop0savev2_dense_hidden_2_kernel_read_readvariableop.savev2_dense_hidden_2_bias_read_readvariableop'savev2_ouput_kernel_read_readvariableop%savev2_ouput_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop5savev2_adam_dense_hidden_kernel_m_read_readvariableop3savev2_adam_dense_hidden_bias_m_read_readvariableop7savev2_adam_dense_hidden_2_kernel_m_read_readvariableop5savev2_adam_dense_hidden_2_bias_m_read_readvariableop.savev2_adam_ouput_kernel_m_read_readvariableop,savev2_adam_ouput_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop5savev2_adam_dense_hidden_kernel_v_read_readvariableop3savev2_adam_dense_hidden_bias_v_read_readvariableop7savev2_adam_dense_hidden_2_kernel_v_read_readvariableop5savev2_adam_dense_hidden_2_bias_v_read_readvariableop.savev2_adam_ouput_kernel_v_read_readvariableop,savev2_adam_ouput_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*о
_input_shapesЬ
Щ: : : : @:@:@А:А:
А@А:А:
АА:А:	А:: : : : : : : : : : : : @:@:@А:А:
А@А:А:
АА:А:	А:: : : @:@:@А:А:
А@А:А:
АА:А:	А:: 2(
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
:@А:!

_output_shapes	
:А:&"
 
_output_shapes
:
А@А:!

_output_shapes	
:А:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А:%!

_output_shapes
:	А: 
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
:@А:!

_output_shapes	
:А:&"
 
_output_shapes
:
А@А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:% !

_output_shapes
:	А: !
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
:@А:!'

_output_shapes	
:А:&("
 
_output_shapes
:
А@А:!)

_output_shapes	
:А:&*"
 
_output_shapes
:
АА:!+

_output_shapes	
:А:%,!

_output_shapes
:	А: -

_output_shapes
::.

_output_shapes
: 
╣

b
C__inference_dropout_3_layer_call_and_return_conditional_losses_4021

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╙.
у
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_3938

inputs%
conv2d_3829: 
conv2d_3831: '
conv2d_2_3847: @
conv2d_2_3849:@(
conv2d_3_3865:@А
conv2d_3_3867:	А%
dense_hidden_3898:
А@А 
dense_hidden_3900:	А'
dense_hidden_2_3915:
АА"
dense_hidden_2_3917:	А

ouput_3932:	А

ouput_3934:
identityИвconv2D/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallв conv2D_3/StatefulPartitionedCallв$dense_hidden/StatefulPartitionedCallв&dense_hidden_2/StatefulPartitionedCallвouput/StatefulPartitionedCallъ
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3829conv2d_3831*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2D_layer_call_and_return_conditional_losses_3828▌
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_3783М
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_3847conv2d_2_3849*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3846у
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_3795П
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_3865conv2d_3_3867*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3864ф
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_3807▌
dropout_3/PartitionedCallPartitionedCall"pooling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_3876╤
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3884Х
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_3898dense_hidden_3900*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_hidden_layer_call_and_return_conditional_losses_3897к
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_3915dense_hidden_2_3917*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_3914З
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0
ouput_3932
ouput_3934*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_ouput_layer_call_and_return_conditional_losses_3931u
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Э
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ъ

╛
"__inference_signature_wrapper_4464	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_3774o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         @@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         @@

_user_specified_nameinput
Л
_
C__inference_pooling_2_layer_call_and_return_conditional_losses_3795

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
и
D
(__inference_pooling_2_layer_call_fn_4519

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_3795Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
·
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_4569

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
д
B
&__inference_pooling_layer_call_fn_4489

inputs
identity╧
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_pooling_layer_call_and_return_conditional_losses_3783Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*м
serving_defaultШ
?
input6
serving_default_input:0         @@9
ouput0
StatefulPartitionedCall:0         tensorflow/serving/predict:▄ь
Т
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
╦
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
е
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
╦
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
е
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
╦
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
е
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
е
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
╦
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
╦
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
╗

akernel
bbias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
├

ibeta_1

jbeta_2
	kdecay
llearning_rate
mitermэmю%mя&mЁ4mё5mЄPmєQmЇYmїZmЎamўbm°v∙v·%v√&v№4v¤5v■Pv QvАYvБZvВavГbvД"
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
╩
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
Ъ2Ч
3__inference_cnn_13_drop_out_0.25_layer_call_fn_3965
3__inference_cnn_13_drop_out_0.25_layer_call_fn_4293
3__inference_cnn_13_drop_out_0.25_layer_call_fn_4322
3__inference_cnn_13_drop_out_0.25_layer_call_fn_4180└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ж2Г
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4374
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4433
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4219
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4258└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╚B┼
__inference__wrapped_model_3774input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,
sserving_default"
signature_map
е
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
н
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
╧2╠
%__inference_conv2D_layer_call_fn_4473в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv2D_layer_call_and_return_conditional_losses_4484в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▒
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
╨2═
&__inference_pooling_layer_call_fn_4489в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_pooling_layer_call_and_return_conditional_losses_4494в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
л
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"
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
▓
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
╤2╬
'__inference_conv2D_2_layer_call_fn_4503в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_conv2D_2_layer_call_and_return_conditional_losses_4514в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
╥2╧
(__inference_pooling_2_layer_call_fn_4519в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_pooling_2_layer_call_and_return_conditional_losses_4524в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
л
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses"
_tf_keras_layer
*:(@А2conv2D_3/kernel
:А2conv2D_3/bias
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
▓
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
╤2╬
'__inference_conv2D_3_layer_call_fn_4533в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_conv2D_3_layer_call_and_return_conditional_losses_4544в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
╥2╧
(__inference_pooling_3_layer_call_fn_4549в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_pooling_3_layer_call_and_return_conditional_losses_4554в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
О2Л
(__inference_dropout_3_layer_call_fn_4559
(__inference_dropout_3_layer_call_fn_4564┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
─2┴
C__inference_dropout_3_layer_call_and_return_conditional_losses_4569
C__inference_dropout_3_layer_call_and_return_conditional_losses_4581┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
╨2═
&__inference_flatten_layer_call_fn_4586в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_flatten_layer_call_and_return_conditional_losses_4592в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
л
о	variables
пtrainable_variables
░regularization_losses
▒	keras_api
▓__call__
+│&call_and_return_all_conditional_losses"
_tf_keras_layer
':%
А@А2dense_hidden/kernel
 :А2dense_hidden/bias
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
▓
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_dense_hidden_layer_call_fn_4601в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_dense_hidden_layer_call_and_return_conditional_losses_4612в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
л
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses"
_tf_keras_layer
):'
АА2dense_hidden_2/kernel
": А2dense_hidden_2/bias
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
▓
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
╫2╘
-__inference_dense_hidden_2_layer_call_fn_4621в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Є2я
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_4632в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	А2ouput/kernel
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
▓
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
╬2╦
$__inference_ouput_layer_call_fn_4641в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щ2ц
?__inference_ouput_layer_call_and_return_conditional_losses_4652в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
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
╔0
╩1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╟B─
"__inference_signature_wrapper_4464input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╕
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╕
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╕
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
о	variables
пtrainable_variables
░regularization_losses
▓__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╕
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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

фtotal

хcount
ц	variables
ч	keras_api"
_tf_keras_metric
c

шtotal

щcount
ъ
_fn_kwargs
ы	variables
ь	keras_api"
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
ф0
х1"
trackable_list_wrapper
.
ц	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ш0
щ1"
trackable_list_wrapper
.
ы	variables"
_generic_user_object
,:* 2Adam/conv2D/kernel/m
: 2Adam/conv2D/bias/m
.:, @2Adam/conv2D_2/kernel/m
 :@2Adam/conv2D_2/bias/m
/:-@А2Adam/conv2D_3/kernel/m
!:А2Adam/conv2D_3/bias/m
,:*
А@А2Adam/dense_hidden/kernel/m
%:#А2Adam/dense_hidden/bias/m
.:,
АА2Adam/dense_hidden_2/kernel/m
':%А2Adam/dense_hidden_2/bias/m
$:"	А2Adam/ouput/kernel/m
:2Adam/ouput/bias/m
,:* 2Adam/conv2D/kernel/v
: 2Adam/conv2D/bias/v
.:, @2Adam/conv2D_2/kernel/v
 :@2Adam/conv2D_2/bias/v
/:-@А2Adam/conv2D_3/kernel/v
!:А2Adam/conv2D_3/bias/v
,:*
А@А2Adam/dense_hidden/kernel/v
%:#А2Adam/dense_hidden/bias/v
.:,
АА2Adam/dense_hidden_2/kernel/v
':%А2Adam/dense_hidden_2/bias/v
$:"	А2Adam/ouput/kernel/v
:2Adam/ouput/bias/vШ
__inference__wrapped_model_3774u%&45PQYZab6в3
,в)
'К$
input         @@
к "-к*
(
ouputК
ouput         ╟
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4219u%&45PQYZab>в;
4в1
'К$
input         @@
p 

 
к "%в"
К
0         
Ъ ╟
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4258u%&45PQYZab>в;
4в1
'К$
input         @@
p

 
к "%в"
К
0         
Ъ ╚
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4374v%&45PQYZab?в<
5в2
(К%
inputs         @@
p 

 
к "%в"
К
0         
Ъ ╚
N__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_4433v%&45PQYZab?в<
5в2
(К%
inputs         @@
p

 
к "%в"
К
0         
Ъ Я
3__inference_cnn_13_drop_out_0.25_layer_call_fn_3965h%&45PQYZab>в;
4в1
'К$
input         @@
p 

 
к "К         Я
3__inference_cnn_13_drop_out_0.25_layer_call_fn_4180h%&45PQYZab>в;
4в1
'К$
input         @@
p

 
к "К         а
3__inference_cnn_13_drop_out_0.25_layer_call_fn_4293i%&45PQYZab?в<
5в2
(К%
inputs         @@
p 

 
к "К         а
3__inference_cnn_13_drop_out_0.25_layer_call_fn_4322i%&45PQYZab?в<
5в2
(К%
inputs         @@
p

 
к "К         ▓
B__inference_conv2D_2_layer_call_and_return_conditional_losses_4514l%&7в4
-в*
(К%
inputs            
к "-в*
#К 
0           @
Ъ К
'__inference_conv2D_2_layer_call_fn_4503_%&7в4
-в*
(К%
inputs            
к " К           @│
B__inference_conv2D_3_layer_call_and_return_conditional_losses_4544m457в4
-в*
(К%
inputs         @
к ".в+
$К!
0         А
Ъ Л
'__inference_conv2D_3_layer_call_fn_4533`457в4
-в*
(К%
inputs         @
к "!К         А░
@__inference_conv2D_layer_call_and_return_conditional_losses_4484l7в4
-в*
(К%
inputs         @@
к "-в*
#К 
0         @@ 
Ъ И
%__inference_conv2D_layer_call_fn_4473_7в4
-в*
(К%
inputs         @@
к " К         @@ к
H__inference_dense_hidden_2_layer_call_and_return_conditional_losses_4632^YZ0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ В
-__inference_dense_hidden_2_layer_call_fn_4621QYZ0в-
&в#
!К
inputs         А
к "К         Аи
F__inference_dense_hidden_layer_call_and_return_conditional_losses_4612^PQ0в-
&в#
!К
inputs         А@
к "&в#
К
0         А
Ъ А
+__inference_dense_hidden_layer_call_fn_4601QPQ0в-
&в#
!К
inputs         А@
к "К         А╡
C__inference_dropout_3_layer_call_and_return_conditional_losses_4569n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╡
C__inference_dropout_3_layer_call_and_return_conditional_losses_4581n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ Н
(__inference_dropout_3_layer_call_fn_4559a<в9
2в/
)К&
inputs         А
p 
к "!К         АН
(__inference_dropout_3_layer_call_fn_4564a<в9
2в/
)К&
inputs         А
p
к "!К         Аз
A__inference_flatten_layer_call_and_return_conditional_losses_4592b8в5
.в+
)К&
inputs         А
к "&в#
К
0         А@
Ъ 
&__inference_flatten_layer_call_fn_4586U8в5
.в+
)К&
inputs         А
к "К         А@а
?__inference_ouput_layer_call_and_return_conditional_losses_4652]ab0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ x
$__inference_ouput_layer_call_fn_4641Pab0в-
&в#
!К
inputs         А
к "К         ц
C__inference_pooling_2_layer_call_and_return_conditional_losses_4524ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╛
(__inference_pooling_2_layer_call_fn_4519СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ц
C__inference_pooling_3_layer_call_and_return_conditional_losses_4554ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╛
(__inference_pooling_3_layer_call_fn_4549СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ф
A__inference_pooling_layer_call_and_return_conditional_losses_4494ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╝
&__inference_pooling_layer_call_fn_4489СRвO
HвE
CК@
inputs4                                    
к ";К84                                    д
"__inference_signature_wrapper_4464~%&45PQYZab?в<
в 
5к2
0
input'К$
input         @@"-к*
(
ouputК
ouput         