ۼ"
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
?
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

: *
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
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
?
5token_and_position_embedding_2/embedding_4/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?e *F
shared_name75token_and_position_embedding_2/embedding_4/embeddings
?
Itoken_and_position_embedding_2/embedding_4/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_2/embedding_4/embeddings*
_output_shapes
:	?e *
dtype0
?
5token_and_position_embedding_2/embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *F
shared_name75token_and_position_embedding_2/embedding_5/embeddings
?
Itoken_and_position_embedding_2/embedding_5/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_2/embedding_5/embeddings*
_output_shapes
:	? *
dtype0
?
7transformer_block_2/multi_head_attention_2/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_2/multi_head_attention_2/query/kernel
?
Ktransformer_block_2/multi_head_attention_2/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_2/multi_head_attention_2/query/kernel*"
_output_shapes
:  *
dtype0
?
5transformer_block_2/multi_head_attention_2/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_2/multi_head_attention_2/query/bias
?
Itransformer_block_2/multi_head_attention_2/query/bias/Read/ReadVariableOpReadVariableOp5transformer_block_2/multi_head_attention_2/query/bias*
_output_shapes

: *
dtype0
?
5transformer_block_2/multi_head_attention_2/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *F
shared_name75transformer_block_2/multi_head_attention_2/key/kernel
?
Itransformer_block_2/multi_head_attention_2/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_block_2/multi_head_attention_2/key/kernel*"
_output_shapes
:  *
dtype0
?
3transformer_block_2/multi_head_attention_2/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *D
shared_name53transformer_block_2/multi_head_attention_2/key/bias
?
Gtransformer_block_2/multi_head_attention_2/key/bias/Read/ReadVariableOpReadVariableOp3transformer_block_2/multi_head_attention_2/key/bias*
_output_shapes

: *
dtype0
?
7transformer_block_2/multi_head_attention_2/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_2/multi_head_attention_2/value/kernel
?
Ktransformer_block_2/multi_head_attention_2/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_2/multi_head_attention_2/value/kernel*"
_output_shapes
:  *
dtype0
?
5transformer_block_2/multi_head_attention_2/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_2/multi_head_attention_2/value/bias
?
Itransformer_block_2/multi_head_attention_2/value/bias/Read/ReadVariableOpReadVariableOp5transformer_block_2/multi_head_attention_2/value/bias*
_output_shapes

: *
dtype0
?
Btransformer_block_2/multi_head_attention_2/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *S
shared_nameDBtransformer_block_2/multi_head_attention_2/attention_output/kernel
?
Vtransformer_block_2/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_block_2/multi_head_attention_2/attention_output/kernel*"
_output_shapes
:  *
dtype0
?
@transformer_block_2/multi_head_attention_2/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *Q
shared_nameB@transformer_block_2/multi_head_attention_2/attention_output/bias
?
Ttransformer_block_2/multi_head_attention_2/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_block_2/multi_head_attention_2/attention_output/bias*
_output_shapes
: *
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:  *
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
: *
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:  *
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
: *
dtype0
?
/transformer_block_2/layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_2/layer_normalization_4/gamma
?
Ctransformer_block_2/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_2/layer_normalization_4/gamma*
_output_shapes
: *
dtype0
?
.transformer_block_2/layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.transformer_block_2/layer_normalization_4/beta
?
Btransformer_block_2/layer_normalization_4/beta/Read/ReadVariableOpReadVariableOp.transformer_block_2/layer_normalization_4/beta*
_output_shapes
: *
dtype0
?
/transformer_block_2/layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_2/layer_normalization_5/gamma
?
Ctransformer_block_2/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_2/layer_normalization_5/gamma*
_output_shapes
: *
dtype0
?
.transformer_block_2/layer_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.transformer_block_2/layer_normalization_5/beta
?
Btransformer_block_2/layer_normalization_5/beta/Read/ReadVariableOpReadVariableOp.transformer_block_2/layer_normalization_5/beta*
_output_shapes
: *
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
?
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_10/kernel/m
?
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/m
?
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0
?
<Adam/token_and_position_embedding_2/embedding_4/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?e *M
shared_name><Adam/token_and_position_embedding_2/embedding_4/embeddings/m
?
PAdam/token_and_position_embedding_2/embedding_4/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_4/embeddings/m*
_output_shapes
:	?e *
dtype0
?
<Adam/token_and_position_embedding_2/embedding_5/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *M
shared_name><Adam/token_and_position_embedding_2/embedding_5/embeddings/m
?
PAdam/token_and_position_embedding_2/embedding_5/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_5/embeddings/m*
_output_shapes
:	? *
dtype0
?
>Adam/transformer_block_2/multi_head_attention_2/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_2/multi_head_attention_2/query/kernel/m
?
RAdam/transformer_block_2/multi_head_attention_2/query/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_2/multi_head_attention_2/query/kernel/m*"
_output_shapes
:  *
dtype0
?
<Adam/transformer_block_2/multi_head_attention_2/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_2/multi_head_attention_2/query/bias/m
?
PAdam/transformer_block_2/multi_head_attention_2/query/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_2/multi_head_attention_2/query/bias/m*
_output_shapes

: *
dtype0
?
<Adam/transformer_block_2/multi_head_attention_2/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *M
shared_name><Adam/transformer_block_2/multi_head_attention_2/key/kernel/m
?
PAdam/transformer_block_2/multi_head_attention_2/key/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_2/multi_head_attention_2/key/kernel/m*"
_output_shapes
:  *
dtype0
?
:Adam/transformer_block_2/multi_head_attention_2/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *K
shared_name<:Adam/transformer_block_2/multi_head_attention_2/key/bias/m
?
NAdam/transformer_block_2/multi_head_attention_2/key/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_2/multi_head_attention_2/key/bias/m*
_output_shapes

: *
dtype0
?
>Adam/transformer_block_2/multi_head_attention_2/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_2/multi_head_attention_2/value/kernel/m
?
RAdam/transformer_block_2/multi_head_attention_2/value/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_2/multi_head_attention_2/value/kernel/m*"
_output_shapes
:  *
dtype0
?
<Adam/transformer_block_2/multi_head_attention_2/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_2/multi_head_attention_2/value/bias/m
?
PAdam/transformer_block_2/multi_head_attention_2/value/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_2/multi_head_attention_2/value/bias/m*
_output_shapes

: *
dtype0
?
IAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *Z
shared_nameKIAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/m
?
]Adam/transformer_block_2/multi_head_attention_2/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/m*"
_output_shapes
:  *
dtype0
?
GAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *X
shared_nameIGAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/m
?
[Adam/transformer_block_2/multi_head_attention_2/attention_output/bias/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
: *
dtype0
?
6Adam/transformer_block_2/layer_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_2/layer_normalization_4/gamma/m
?
JAdam/transformer_block_2/layer_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_2/layer_normalization_4/gamma/m*
_output_shapes
: *
dtype0
?
5Adam/transformer_block_2/layer_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/transformer_block_2/layer_normalization_4/beta/m
?
IAdam/transformer_block_2/layer_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_2/layer_normalization_4/beta/m*
_output_shapes
: *
dtype0
?
6Adam/transformer_block_2/layer_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_2/layer_normalization_5/gamma/m
?
JAdam/transformer_block_2/layer_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_2/layer_normalization_5/gamma/m*
_output_shapes
: *
dtype0
?
5Adam/transformer_block_2/layer_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/transformer_block_2/layer_normalization_5/beta/m
?
IAdam/transformer_block_2/layer_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_2/layer_normalization_5/beta/m*
_output_shapes
: *
dtype0
?
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_10/kernel/v
?
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/v
?
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0
?
<Adam/token_and_position_embedding_2/embedding_4/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?e *M
shared_name><Adam/token_and_position_embedding_2/embedding_4/embeddings/v
?
PAdam/token_and_position_embedding_2/embedding_4/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_4/embeddings/v*
_output_shapes
:	?e *
dtype0
?
<Adam/token_and_position_embedding_2/embedding_5/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *M
shared_name><Adam/token_and_position_embedding_2/embedding_5/embeddings/v
?
PAdam/token_and_position_embedding_2/embedding_5/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_5/embeddings/v*
_output_shapes
:	? *
dtype0
?
>Adam/transformer_block_2/multi_head_attention_2/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_2/multi_head_attention_2/query/kernel/v
?
RAdam/transformer_block_2/multi_head_attention_2/query/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_2/multi_head_attention_2/query/kernel/v*"
_output_shapes
:  *
dtype0
?
<Adam/transformer_block_2/multi_head_attention_2/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_2/multi_head_attention_2/query/bias/v
?
PAdam/transformer_block_2/multi_head_attention_2/query/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_2/multi_head_attention_2/query/bias/v*
_output_shapes

: *
dtype0
?
<Adam/transformer_block_2/multi_head_attention_2/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *M
shared_name><Adam/transformer_block_2/multi_head_attention_2/key/kernel/v
?
PAdam/transformer_block_2/multi_head_attention_2/key/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_2/multi_head_attention_2/key/kernel/v*"
_output_shapes
:  *
dtype0
?
:Adam/transformer_block_2/multi_head_attention_2/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *K
shared_name<:Adam/transformer_block_2/multi_head_attention_2/key/bias/v
?
NAdam/transformer_block_2/multi_head_attention_2/key/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_2/multi_head_attention_2/key/bias/v*
_output_shapes

: *
dtype0
?
>Adam/transformer_block_2/multi_head_attention_2/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_2/multi_head_attention_2/value/kernel/v
?
RAdam/transformer_block_2/multi_head_attention_2/value/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_2/multi_head_attention_2/value/kernel/v*"
_output_shapes
:  *
dtype0
?
<Adam/transformer_block_2/multi_head_attention_2/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_2/multi_head_attention_2/value/bias/v
?
PAdam/transformer_block_2/multi_head_attention_2/value/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_2/multi_head_attention_2/value/bias/v*
_output_shapes

: *
dtype0
?
IAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *Z
shared_nameKIAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/v
?
]Adam/transformer_block_2/multi_head_attention_2/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/v*"
_output_shapes
:  *
dtype0
?
GAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *X
shared_nameIGAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/v
?
[Adam/transformer_block_2/multi_head_attention_2/attention_output/bias/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
: *
dtype0
?
6Adam/transformer_block_2/layer_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_2/layer_normalization_4/gamma/v
?
JAdam/transformer_block_2/layer_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_2/layer_normalization_4/gamma/v*
_output_shapes
: *
dtype0
?
5Adam/transformer_block_2/layer_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/transformer_block_2/layer_normalization_4/beta/v
?
IAdam/transformer_block_2/layer_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_2/layer_normalization_4/beta/v*
_output_shapes
: *
dtype0
?
6Adam/transformer_block_2/layer_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_2/layer_normalization_5/gamma/v
?
JAdam/transformer_block_2/layer_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_2/layer_normalization_5/gamma/v*
_output_shapes
: *
dtype0
?
5Adam/transformer_block_2/layer_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/transformer_block_2/layer_normalization_5/beta/v
?
IAdam/transformer_block_2/layer_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_2/layer_normalization_5/beta/v*
_output_shapes
: *
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
n
	token_emb
pos_emb
	variables
trainable_variables
regularization_losses
	keras_api
?
att
ffn

layernorm1

layernorm2
dropout1
dropout2
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
R
-	variables
.trainable_variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm?(m?1m?2m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?'v?(v?1v?2v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221
 
?
Nlayer_regularization_losses
Onon_trainable_variables

	variables

Players
Qmetrics
trainable_variables
Rlayer_metrics
regularization_losses
 
b
<
embeddings
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
b
=
embeddings
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api

<0
=1

<0
=1
 
?
[layer_regularization_losses
\non_trainable_variables
	variables

]layers
^metrics
trainable_variables
_layer_metrics
regularization_losses
?
`_query_dense
a
_key_dense
b_value_dense
c_softmax
d_dropout_layer
e_output_dense
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
?
jlayer_with_weights-0
jlayer-0
klayer_with_weights-1
klayer-1
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
q
paxis
	Jgamma
Kbeta
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
q
uaxis
	Lgamma
Mbeta
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
R
z	variables
{trainable_variables
|regularization_losses
}	keras_api
T
~	variables
trainable_variables
?regularization_losses
?	keras_api
v
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
v
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
 
?
 ?layer_regularization_losses
?non_trainable_variables
	variables
?layers
?metrics
trainable_variables
?layer_metrics
regularization_losses
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
	variables
?layers
?metrics
 trainable_variables
?layer_metrics
!regularization_losses
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
#	variables
?layers
?metrics
$trainable_variables
?layer_metrics
%regularization_losses
[Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
?
 ?layer_regularization_losses
?non_trainable_variables
)	variables
?layers
?metrics
*trainable_variables
?layer_metrics
+regularization_losses
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
-	variables
?layers
?metrics
.trainable_variables
?layer_metrics
/regularization_losses
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
?
 ?layer_regularization_losses
?non_trainable_variables
3	variables
?layers
?metrics
4trainable_variables
?layer_metrics
5regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5token_and_position_embedding_2/embedding_4/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5token_and_position_embedding_2/embedding_5/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7transformer_block_2/multi_head_attention_2/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_2/multi_head_attention_2/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_2/multi_head_attention_2/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer_block_2/multi_head_attention_2/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7transformer_block_2/multi_head_attention_2/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_2/multi_head_attention_2/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEBtransformer_block_2/multi_head_attention_2/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE@transformer_block_2/multi_head_attention_2/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_8/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_8/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_9/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_9/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_2/layer_normalization_4/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.transformer_block_2/layer_normalization_4/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_2/layer_normalization_5/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.transformer_block_2/layer_normalization_5/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE
 
 
8
0
1
2
3
4
5
6
7

?0
?1
 

<0

<0
 
?
 ?layer_regularization_losses
?non_trainable_variables
S	variables
?layers
?metrics
Ttrainable_variables
?layer_metrics
Uregularization_losses

=0

=0
 
?
 ?layer_regularization_losses
?non_trainable_variables
W	variables
?layers
?metrics
Xtrainable_variables
?layer_metrics
Yregularization_losses
 
 

0
1
 
 
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

Dkernel
Ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
8
>0
?1
@2
A3
B4
C5
D6
E7
8
>0
?1
@2
A3
B4
C5
D6
E7
 
?
 ?layer_regularization_losses
?non_trainable_variables
f	variables
?layers
?metrics
gtrainable_variables
?layer_metrics
hregularization_losses
l

Fkernel
Gbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Hkernel
Ibias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

F0
G1
H2
I3

F0
G1
H2
I3
 
?
 ?layer_regularization_losses
?non_trainable_variables
l	variables
?layers
?metrics
mtrainable_variables
?layer_metrics
nregularization_losses
 

J0
K1

J0
K1
 
?
 ?layer_regularization_losses
?non_trainable_variables
q	variables
?layers
?metrics
rtrainable_variables
?layer_metrics
sregularization_losses
 

L0
M1

L0
M1
 
?
 ?layer_regularization_losses
?non_trainable_variables
v	variables
?layers
?metrics
wtrainable_variables
?layer_metrics
xregularization_losses
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
z	variables
?layers
?metrics
{trainable_variables
?layer_metrics
|regularization_losses
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
~	variables
?layers
?metrics
trainable_variables
?layer_metrics
?regularization_losses
 
 
*
0
1
2
3
4
5
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
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
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

>0
?1

>0
?1
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
 
 

@0
A1

@0
A1
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
 
 

B0
C1

B0
C1
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
 
 

D0
E1

D0
E1
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
 
 
*
`0
a1
b2
c3
d4
e5
 
 

F0
G1

F0
G1
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses

H0
I1

H0
I1
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
 
 

j0
k1
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
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
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
 
~|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_4/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_5/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_2/multi_head_attention_2/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_2/multi_head_attention_2/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_2/multi_head_attention_2/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block_2/multi_head_attention_2/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_2/multi_head_attention_2/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_2/multi_head_attention_2/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEIAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_8/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_8/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_9/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_9/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_2/layer_normalization_4/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/transformer_block_2/layer_normalization_4/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_2/layer_normalization_5/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/transformer_block_2/layer_normalization_5/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_4/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_5/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_2/multi_head_attention_2/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_2/multi_head_attention_2/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_2/multi_head_attention_2/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block_2/multi_head_attention_2/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_2/multi_head_attention_2/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_2/multi_head_attention_2/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEIAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_8/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_8/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_9/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_9/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_2/layer_normalization_4/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/transformer_block_2/layer_normalization_4/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_2/layer_normalization_5/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/transformer_block_2/layer_normalization_5/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_4Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_45token_and_position_embedding_2/embedding_5/embeddings5token_and_position_embedding_2/embedding_4/embeddings7transformer_block_2/multi_head_attention_2/query/kernel5transformer_block_2/multi_head_attention_2/query/bias5transformer_block_2/multi_head_attention_2/key/kernel3transformer_block_2/multi_head_attention_2/key/bias7transformer_block_2/multi_head_attention_2/value/kernel5transformer_block_2/multi_head_attention_2/value/biasBtransformer_block_2/multi_head_attention_2/attention_output/kernel@transformer_block_2/multi_head_attention_2/attention_output/bias/transformer_block_2/layer_normalization_4/gamma.transformer_block_2/layer_normalization_4/betadense_8/kerneldense_8/biasdense_9/kerneldense_9/bias/transformer_block_2/layer_normalization_5/gamma.transformer_block_2/layer_normalization_5/betadense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_65299
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpItoken_and_position_embedding_2/embedding_4/embeddings/Read/ReadVariableOpItoken_and_position_embedding_2/embedding_5/embeddings/Read/ReadVariableOpKtransformer_block_2/multi_head_attention_2/query/kernel/Read/ReadVariableOpItransformer_block_2/multi_head_attention_2/query/bias/Read/ReadVariableOpItransformer_block_2/multi_head_attention_2/key/kernel/Read/ReadVariableOpGtransformer_block_2/multi_head_attention_2/key/bias/Read/ReadVariableOpKtransformer_block_2/multi_head_attention_2/value/kernel/Read/ReadVariableOpItransformer_block_2/multi_head_attention_2/value/bias/Read/ReadVariableOpVtransformer_block_2/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpTtransformer_block_2/multi_head_attention_2/attention_output/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpCtransformer_block_2/layer_normalization_4/gamma/Read/ReadVariableOpBtransformer_block_2/layer_normalization_4/beta/Read/ReadVariableOpCtransformer_block_2/layer_normalization_5/gamma/Read/ReadVariableOpBtransformer_block_2/layer_normalization_5/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_4/embeddings/m/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_5/embeddings/m/Read/ReadVariableOpRAdam/transformer_block_2/multi_head_attention_2/query/kernel/m/Read/ReadVariableOpPAdam/transformer_block_2/multi_head_attention_2/query/bias/m/Read/ReadVariableOpPAdam/transformer_block_2/multi_head_attention_2/key/kernel/m/Read/ReadVariableOpNAdam/transformer_block_2/multi_head_attention_2/key/bias/m/Read/ReadVariableOpRAdam/transformer_block_2/multi_head_attention_2/value/kernel/m/Read/ReadVariableOpPAdam/transformer_block_2/multi_head_attention_2/value/bias/m/Read/ReadVariableOp]Adam/transformer_block_2/multi_head_attention_2/attention_output/kernel/m/Read/ReadVariableOp[Adam/transformer_block_2/multi_head_attention_2/attention_output/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOpJAdam/transformer_block_2/layer_normalization_4/gamma/m/Read/ReadVariableOpIAdam/transformer_block_2/layer_normalization_4/beta/m/Read/ReadVariableOpJAdam/transformer_block_2/layer_normalization_5/gamma/m/Read/ReadVariableOpIAdam/transformer_block_2/layer_normalization_5/beta/m/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_4/embeddings/v/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_5/embeddings/v/Read/ReadVariableOpRAdam/transformer_block_2/multi_head_attention_2/query/kernel/v/Read/ReadVariableOpPAdam/transformer_block_2/multi_head_attention_2/query/bias/v/Read/ReadVariableOpPAdam/transformer_block_2/multi_head_attention_2/key/kernel/v/Read/ReadVariableOpNAdam/transformer_block_2/multi_head_attention_2/key/bias/v/Read/ReadVariableOpRAdam/transformer_block_2/multi_head_attention_2/value/kernel/v/Read/ReadVariableOpPAdam/transformer_block_2/multi_head_attention_2/value/bias/v/Read/ReadVariableOp]Adam/transformer_block_2/multi_head_attention_2/attention_output/kernel/v/Read/ReadVariableOp[Adam/transformer_block_2/multi_head_attention_2/attention_output/bias/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOpJAdam/transformer_block_2/layer_normalization_4/gamma/v/Read/ReadVariableOpIAdam/transformer_block_2/layer_normalization_4/beta/v/Read/ReadVariableOpJAdam/transformer_block_2/layer_normalization_5/gamma/v/Read/ReadVariableOpIAdam/transformer_block_2/layer_normalization_5/beta/v/Read/ReadVariableOpConst*X
TinQ
O2M	*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_66727
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate5token_and_position_embedding_2/embedding_4/embeddings5token_and_position_embedding_2/embedding_5/embeddings7transformer_block_2/multi_head_attention_2/query/kernel5transformer_block_2/multi_head_attention_2/query/bias5transformer_block_2/multi_head_attention_2/key/kernel3transformer_block_2/multi_head_attention_2/key/bias7transformer_block_2/multi_head_attention_2/value/kernel5transformer_block_2/multi_head_attention_2/value/biasBtransformer_block_2/multi_head_attention_2/attention_output/kernel@transformer_block_2/multi_head_attention_2/attention_output/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias/transformer_block_2/layer_normalization_4/gamma.transformer_block_2/layer_normalization_4/beta/transformer_block_2/layer_normalization_5/gamma.transformer_block_2/layer_normalization_5/betatotalcounttotal_1count_1Adam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/m<Adam/token_and_position_embedding_2/embedding_4/embeddings/m<Adam/token_and_position_embedding_2/embedding_5/embeddings/m>Adam/transformer_block_2/multi_head_attention_2/query/kernel/m<Adam/transformer_block_2/multi_head_attention_2/query/bias/m<Adam/transformer_block_2/multi_head_attention_2/key/kernel/m:Adam/transformer_block_2/multi_head_attention_2/key/bias/m>Adam/transformer_block_2/multi_head_attention_2/value/kernel/m<Adam/transformer_block_2/multi_head_attention_2/value/bias/mIAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/mGAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/m6Adam/transformer_block_2/layer_normalization_4/gamma/m5Adam/transformer_block_2/layer_normalization_4/beta/m6Adam/transformer_block_2/layer_normalization_5/gamma/m5Adam/transformer_block_2/layer_normalization_5/beta/mAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/v<Adam/token_and_position_embedding_2/embedding_4/embeddings/v<Adam/token_and_position_embedding_2/embedding_5/embeddings/v>Adam/transformer_block_2/multi_head_attention_2/query/kernel/v<Adam/transformer_block_2/multi_head_attention_2/query/bias/v<Adam/transformer_block_2/multi_head_attention_2/key/kernel/v:Adam/transformer_block_2/multi_head_attention_2/key/bias/v>Adam/transformer_block_2/multi_head_attention_2/value/kernel/v<Adam/transformer_block_2/multi_head_attention_2/value/bias/vIAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/vGAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/vAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/v6Adam/transformer_block_2/layer_normalization_4/gamma/v5Adam/transformer_block_2/layer_normalization_4/beta/v6Adam/transformer_block_2/layer_normalization_5/gamma/v5Adam/transformer_block_2/layer_normalization_5/beta/v*W
TinP
N2L*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_66962??
?
?
'__inference_model_2_layer_call_fn_65240
input_4
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_651932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4
?
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_64935

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
B__inference_model_2_layer_call_and_return_conditional_losses_65664

inputsE
Atoken_and_position_embedding_2_embedding_5_embedding_lookup_65510E
Atoken_and_position_embedding_2_embedding_4_embedding_lookup_65516Z
Vtransformer_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_2_multi_head_attention_2_query_add_readvariableop_resourceX
Ttransformer_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_2_multi_head_attention_2_key_add_readvariableop_resourceZ
Vtransformer_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_2_multi_head_attention_2_value_add_readvariableop_resourcee
atransformer_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_2_multi_head_attention_2_attention_output_add_readvariableop_resourceS
Otransformer_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_2_layer_normalization_4_batchnorm_readvariableop_resourceN
Jtransformer_block_2_sequential_2_dense_8_tensordot_readvariableop_resourceL
Htransformer_block_2_sequential_2_dense_8_biasadd_readvariableop_resourceN
Jtransformer_block_2_sequential_2_dense_9_tensordot_readvariableop_resourceL
Htransformer_block_2_sequential_2_dense_9_biasadd_readvariableop_resourceS
Otransformer_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_2_layer_normalization_5_batchnorm_readvariableop_resource+
'dense_10_matmul_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?;token_and_position_embedding_2/embedding_4/embedding_lookup?;token_and_position_embedding_2/embedding_5/embedding_lookup?Btransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp?Ftransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp?Btransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp?Ftransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp?Ntransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp?Xtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?Atransformer_block_2/multi_head_attention_2/key/add/ReadVariableOp?Ktransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?Ctransformer_block_2/multi_head_attention_2/query/add/ReadVariableOp?Mtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?Ctransformer_block_2/multi_head_attention_2/value/add/ReadVariableOp?Mtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp??transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp?Atransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp??transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp?Atransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp?
$token_and_position_embedding_2/ShapeShapeinputs*
T0*
_output_shapes
:2&
$token_and_position_embedding_2/Shape?
2token_and_position_embedding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????24
2token_and_position_embedding_2/strided_slice/stack?
4token_and_position_embedding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_2/strided_slice/stack_1?
4token_and_position_embedding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_2/strided_slice/stack_2?
,token_and_position_embedding_2/strided_sliceStridedSlice-token_and_position_embedding_2/Shape:output:0;token_and_position_embedding_2/strided_slice/stack:output:0=token_and_position_embedding_2/strided_slice/stack_1:output:0=token_and_position_embedding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_2/strided_slice?
*token_and_position_embedding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_2/range/start?
*token_and_position_embedding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_2/range/delta?
$token_and_position_embedding_2/rangeRange3token_and_position_embedding_2/range/start:output:05token_and_position_embedding_2/strided_slice:output:03token_and_position_embedding_2/range/delta:output:0*#
_output_shapes
:?????????2&
$token_and_position_embedding_2/range?
;token_and_position_embedding_2/embedding_5/embedding_lookupResourceGatherAtoken_and_position_embedding_2_embedding_5_embedding_lookup_65510-token_and_position_embedding_2/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/65510*'
_output_shapes
:????????? *
dtype02=
;token_and_position_embedding_2/embedding_5/embedding_lookup?
Dtoken_and_position_embedding_2/embedding_5/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_5/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/65510*'
_output_shapes
:????????? 2F
Dtoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity?
Ftoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2H
Ftoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1?
/token_and_position_embedding_2/embedding_4/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????21
/token_and_position_embedding_2/embedding_4/Cast?
;token_and_position_embedding_2/embedding_4/embedding_lookupResourceGatherAtoken_and_position_embedding_2_embedding_4_embedding_lookup_655163token_and_position_embedding_2/embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/65516*,
_output_shapes
:?????????? *
dtype02=
;token_and_position_embedding_2/embedding_4/embedding_lookup?
Dtoken_and_position_embedding_2/embedding_4/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/65516*,
_output_shapes
:?????????? 2F
Dtoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity?
Ftoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2H
Ftoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1?
"token_and_position_embedding_2/addAddV2Otoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2$
"token_and_position_embedding_2/add?
Mtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?
>transformer_block_2/multi_head_attention_2/query/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Utransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2@
>transformer_block_2/multi_head_attention_2/query/einsum/Einsum?
Ctransformer_block_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpLtransformer_block_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_2/multi_head_attention_2/query/add/ReadVariableOp?
4transformer_block_2/multi_head_attention_2/query/addAddV2Gtransformer_block_2/multi_head_attention_2/query/einsum/Einsum:output:0Ktransformer_block_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 26
4transformer_block_2/multi_head_attention_2/query/add?
Ktransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02M
Ktransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?
<transformer_block_2/multi_head_attention_2/key/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Stransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2>
<transformer_block_2/multi_head_attention_2/key/einsum/Einsum?
Atransformer_block_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpJtransformer_block_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

: *
dtype02C
Atransformer_block_2/multi_head_attention_2/key/add/ReadVariableOp?
2transformer_block_2/multi_head_attention_2/key/addAddV2Etransformer_block_2/multi_head_attention_2/key/einsum/Einsum:output:0Itransformer_block_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 24
2transformer_block_2/multi_head_attention_2/key/add?
Mtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?
>transformer_block_2/multi_head_attention_2/value/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Utransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2@
>transformer_block_2/multi_head_attention_2/value/einsum/Einsum?
Ctransformer_block_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpLtransformer_block_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_2/multi_head_attention_2/value/add/ReadVariableOp?
4transformer_block_2/multi_head_attention_2/value/addAddV2Gtransformer_block_2/multi_head_attention_2/value/einsum/Einsum:output:0Ktransformer_block_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 26
4transformer_block_2/multi_head_attention_2/value/add?
0transformer_block_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?5>22
0transformer_block_2/multi_head_attention_2/Mul/y?
.transformer_block_2/multi_head_attention_2/MulMul8transformer_block_2/multi_head_attention_2/query/add:z:09transformer_block_2/multi_head_attention_2/Mul/y:output:0*
T0*0
_output_shapes
:?????????? 20
.transformer_block_2/multi_head_attention_2/Mul?
8transformer_block_2/multi_head_attention_2/einsum/EinsumEinsum6transformer_block_2/multi_head_attention_2/key/add:z:02transformer_block_2/multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2:
8transformer_block_2/multi_head_attention_2/einsum/Einsum?
:transformer_block_2/multi_head_attention_2/softmax/SoftmaxSoftmaxAtransformer_block_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2<
:transformer_block_2/multi_head_attention_2/softmax/Softmax?
;transformer_block_2/multi_head_attention_2/dropout/IdentityIdentityDtransformer_block_2/multi_head_attention_2/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:???????????2=
;transformer_block_2/multi_head_attention_2/dropout/Identity?
:transformer_block_2/multi_head_attention_2/einsum_1/EinsumEinsumDtransformer_block_2/multi_head_attention_2/dropout/Identity:output:08transformer_block_2/multi_head_attention_2/value/add:z:0*
N*
T0*0
_output_shapes
:?????????? *
equationacbe,aecd->abcd2<
:transformer_block_2/multi_head_attention_2/einsum_1/Einsum?
Xtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02Z
Xtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?
Itransformer_block_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumCtransformer_block_2/multi_head_attention_2/einsum_1/Einsum:output:0`transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????? *
equationabcd,cde->abe2K
Itransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum?
Ntransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02P
Ntransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp?
?transformer_block_2/multi_head_attention_2/attention_output/addAddV2Rtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0Vtransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2A
?transformer_block_2/multi_head_attention_2/attention_output/add?
&transformer_block_2/dropout_8/IdentityIdentityCtransformer_block_2/multi_head_attention_2/attention_output/add:z:0*
T0*,
_output_shapes
:?????????? 2(
&transformer_block_2/dropout_8/Identity?
transformer_block_2/addAddV2&token_and_position_embedding_2/add:z:0/transformer_block_2/dropout_8/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
transformer_block_2/add?
Htransformer_block_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_2/layer_normalization_4/moments/mean/reduction_indices?
6transformer_block_2/layer_normalization_4/moments/meanMeantransformer_block_2/add:z:0Qtransformer_block_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(28
6transformer_block_2/layer_normalization_4/moments/mean?
>transformer_block_2/layer_normalization_4/moments/StopGradientStopGradient?transformer_block_2/layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:??????????2@
>transformer_block_2/layer_normalization_4/moments/StopGradient?
Ctransformer_block_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifferencetransformer_block_2/add:z:0Gtransformer_block_2/layer_normalization_4/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 2E
Ctransformer_block_2/layer_normalization_4/moments/SquaredDifference?
Ltransformer_block_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_2/layer_normalization_4/moments/variance/reduction_indices?
:transformer_block_2/layer_normalization_4/moments/varianceMeanGtransformer_block_2/layer_normalization_4/moments/SquaredDifference:z:0Utransformer_block_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2<
:transformer_block_2/layer_normalization_4/moments/variance?
9transformer_block_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52;
9transformer_block_2/layer_normalization_4/batchnorm/add/y?
7transformer_block_2/layer_normalization_4/batchnorm/addAddV2Ctransformer_block_2/layer_normalization_4/moments/variance:output:0Btransformer_block_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????29
7transformer_block_2/layer_normalization_4/batchnorm/add?
9transformer_block_2/layer_normalization_4/batchnorm/RsqrtRsqrt;transformer_block_2/layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2;
9transformer_block_2/layer_normalization_4/batchnorm/Rsqrt?
Ftransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp?
7transformer_block_2/layer_normalization_4/batchnorm/mulMul=transformer_block_2/layer_normalization_4/batchnorm/Rsqrt:y:0Ntransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 29
7transformer_block_2/layer_normalization_4/batchnorm/mul?
9transformer_block_2/layer_normalization_4/batchnorm/mul_1Multransformer_block_2/add:z:0;transformer_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_4/batchnorm/mul_1?
9transformer_block_2/layer_normalization_4/batchnorm/mul_2Mul?transformer_block_2/layer_normalization_4/moments/mean:output:0;transformer_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_4/batchnorm/mul_2?
Btransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp?
7transformer_block_2/layer_normalization_4/batchnorm/subSubJtransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0=transformer_block_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 29
7transformer_block_2/layer_normalization_4/batchnorm/sub?
9transformer_block_2/layer_normalization_4/batchnorm/add_1AddV2=transformer_block_2/layer_normalization_4/batchnorm/mul_1:z:0;transformer_block_2/layer_normalization_4/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_4/batchnorm/add_1?
Atransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_2_sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02C
Atransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp?
7transformer_block_2/sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_2/sequential_2/dense_8/Tensordot/axes?
7transformer_block_2/sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_2/sequential_2/dense_8/Tensordot/free?
8transformer_block_2/sequential_2/dense_8/Tensordot/ShapeShape=transformer_block_2/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_2/sequential_2/dense_8/Tensordot/Shape?
@transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2/axis?
;transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2GatherV2Atransformer_block_2/sequential_2/dense_8/Tensordot/Shape:output:0@transformer_block_2/sequential_2/dense_8/Tensordot/free:output:0Itransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2?
Btransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1/axis?
=transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1GatherV2Atransformer_block_2/sequential_2/dense_8/Tensordot/Shape:output:0@transformer_block_2/sequential_2/dense_8/Tensordot/axes:output:0Ktransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1?
8transformer_block_2/sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_2/sequential_2/dense_8/Tensordot/Const?
7transformer_block_2/sequential_2/dense_8/Tensordot/ProdProdDtransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Atransformer_block_2/sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_2/sequential_2/dense_8/Tensordot/Prod?
:transformer_block_2/sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_2/sequential_2/dense_8/Tensordot/Const_1?
9transformer_block_2/sequential_2/dense_8/Tensordot/Prod_1ProdFtransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1:output:0Ctransformer_block_2/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_2/sequential_2/dense_8/Tensordot/Prod_1?
>transformer_block_2/sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_2/sequential_2/dense_8/Tensordot/concat/axis?
9transformer_block_2/sequential_2/dense_8/Tensordot/concatConcatV2@transformer_block_2/sequential_2/dense_8/Tensordot/free:output:0@transformer_block_2/sequential_2/dense_8/Tensordot/axes:output:0Gtransformer_block_2/sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_2/sequential_2/dense_8/Tensordot/concat?
8transformer_block_2/sequential_2/dense_8/Tensordot/stackPack@transformer_block_2/sequential_2/dense_8/Tensordot/Prod:output:0Btransformer_block_2/sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_2/sequential_2/dense_8/Tensordot/stack?
<transformer_block_2/sequential_2/dense_8/Tensordot/transpose	Transpose=transformer_block_2/layer_normalization_4/batchnorm/add_1:z:0Btransformer_block_2/sequential_2/dense_8/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2>
<transformer_block_2/sequential_2/dense_8/Tensordot/transpose?
:transformer_block_2/sequential_2/dense_8/Tensordot/ReshapeReshape@transformer_block_2/sequential_2/dense_8/Tensordot/transpose:y:0Atransformer_block_2/sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2<
:transformer_block_2/sequential_2/dense_8/Tensordot/Reshape?
9transformer_block_2/sequential_2/dense_8/Tensordot/MatMulMatMulCtransformer_block_2/sequential_2/dense_8/Tensordot/Reshape:output:0Itransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2;
9transformer_block_2/sequential_2/dense_8/Tensordot/MatMul?
:transformer_block_2/sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_2/sequential_2/dense_8/Tensordot/Const_2?
@transformer_block_2/sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_2/sequential_2/dense_8/Tensordot/concat_1/axis?
;transformer_block_2/sequential_2/dense_8/Tensordot/concat_1ConcatV2Dtransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Ctransformer_block_2/sequential_2/dense_8/Tensordot/Const_2:output:0Itransformer_block_2/sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_2/sequential_2/dense_8/Tensordot/concat_1?
2transformer_block_2/sequential_2/dense_8/TensordotReshapeCtransformer_block_2/sequential_2/dense_8/Tensordot/MatMul:product:0Dtransformer_block_2/sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 24
2transformer_block_2/sequential_2/dense_8/Tensordot?
?transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_2_sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp?
0transformer_block_2/sequential_2/dense_8/BiasAddBiasAdd;transformer_block_2/sequential_2/dense_8/Tensordot:output:0Gtransformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 22
0transformer_block_2/sequential_2/dense_8/BiasAdd?
-transformer_block_2/sequential_2/dense_8/ReluRelu9transformer_block_2/sequential_2/dense_8/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2/
-transformer_block_2/sequential_2/dense_8/Relu?
Atransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_2_sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02C
Atransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp?
7transformer_block_2/sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_2/sequential_2/dense_9/Tensordot/axes?
7transformer_block_2/sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_2/sequential_2/dense_9/Tensordot/free?
8transformer_block_2/sequential_2/dense_9/Tensordot/ShapeShape;transformer_block_2/sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:2:
8transformer_block_2/sequential_2/dense_9/Tensordot/Shape?
@transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2/axis?
;transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2GatherV2Atransformer_block_2/sequential_2/dense_9/Tensordot/Shape:output:0@transformer_block_2/sequential_2/dense_9/Tensordot/free:output:0Itransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2?
Btransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1/axis?
=transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1GatherV2Atransformer_block_2/sequential_2/dense_9/Tensordot/Shape:output:0@transformer_block_2/sequential_2/dense_9/Tensordot/axes:output:0Ktransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1?
8transformer_block_2/sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_2/sequential_2/dense_9/Tensordot/Const?
7transformer_block_2/sequential_2/dense_9/Tensordot/ProdProdDtransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Atransformer_block_2/sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_2/sequential_2/dense_9/Tensordot/Prod?
:transformer_block_2/sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_2/sequential_2/dense_9/Tensordot/Const_1?
9transformer_block_2/sequential_2/dense_9/Tensordot/Prod_1ProdFtransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1:output:0Ctransformer_block_2/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_2/sequential_2/dense_9/Tensordot/Prod_1?
>transformer_block_2/sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_2/sequential_2/dense_9/Tensordot/concat/axis?
9transformer_block_2/sequential_2/dense_9/Tensordot/concatConcatV2@transformer_block_2/sequential_2/dense_9/Tensordot/free:output:0@transformer_block_2/sequential_2/dense_9/Tensordot/axes:output:0Gtransformer_block_2/sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_2/sequential_2/dense_9/Tensordot/concat?
8transformer_block_2/sequential_2/dense_9/Tensordot/stackPack@transformer_block_2/sequential_2/dense_9/Tensordot/Prod:output:0Btransformer_block_2/sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_2/sequential_2/dense_9/Tensordot/stack?
<transformer_block_2/sequential_2/dense_9/Tensordot/transpose	Transpose;transformer_block_2/sequential_2/dense_8/Relu:activations:0Btransformer_block_2/sequential_2/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2>
<transformer_block_2/sequential_2/dense_9/Tensordot/transpose?
:transformer_block_2/sequential_2/dense_9/Tensordot/ReshapeReshape@transformer_block_2/sequential_2/dense_9/Tensordot/transpose:y:0Atransformer_block_2/sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2<
:transformer_block_2/sequential_2/dense_9/Tensordot/Reshape?
9transformer_block_2/sequential_2/dense_9/Tensordot/MatMulMatMulCtransformer_block_2/sequential_2/dense_9/Tensordot/Reshape:output:0Itransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2;
9transformer_block_2/sequential_2/dense_9/Tensordot/MatMul?
:transformer_block_2/sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_2/sequential_2/dense_9/Tensordot/Const_2?
@transformer_block_2/sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_2/sequential_2/dense_9/Tensordot/concat_1/axis?
;transformer_block_2/sequential_2/dense_9/Tensordot/concat_1ConcatV2Dtransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Ctransformer_block_2/sequential_2/dense_9/Tensordot/Const_2:output:0Itransformer_block_2/sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_2/sequential_2/dense_9/Tensordot/concat_1?
2transformer_block_2/sequential_2/dense_9/TensordotReshapeCtransformer_block_2/sequential_2/dense_9/Tensordot/MatMul:product:0Dtransformer_block_2/sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 24
2transformer_block_2/sequential_2/dense_9/Tensordot?
?transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_2_sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp?
0transformer_block_2/sequential_2/dense_9/BiasAddBiasAdd;transformer_block_2/sequential_2/dense_9/Tensordot:output:0Gtransformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 22
0transformer_block_2/sequential_2/dense_9/BiasAdd?
&transformer_block_2/dropout_9/IdentityIdentity9transformer_block_2/sequential_2/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2(
&transformer_block_2/dropout_9/Identity?
transformer_block_2/add_1AddV2=transformer_block_2/layer_normalization_4/batchnorm/add_1:z:0/transformer_block_2/dropout_9/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
transformer_block_2/add_1?
Htransformer_block_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_2/layer_normalization_5/moments/mean/reduction_indices?
6transformer_block_2/layer_normalization_5/moments/meanMeantransformer_block_2/add_1:z:0Qtransformer_block_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(28
6transformer_block_2/layer_normalization_5/moments/mean?
>transformer_block_2/layer_normalization_5/moments/StopGradientStopGradient?transformer_block_2/layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:??????????2@
>transformer_block_2/layer_normalization_5/moments/StopGradient?
Ctransformer_block_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifferencetransformer_block_2/add_1:z:0Gtransformer_block_2/layer_normalization_5/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 2E
Ctransformer_block_2/layer_normalization_5/moments/SquaredDifference?
Ltransformer_block_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_2/layer_normalization_5/moments/variance/reduction_indices?
:transformer_block_2/layer_normalization_5/moments/varianceMeanGtransformer_block_2/layer_normalization_5/moments/SquaredDifference:z:0Utransformer_block_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2<
:transformer_block_2/layer_normalization_5/moments/variance?
9transformer_block_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52;
9transformer_block_2/layer_normalization_5/batchnorm/add/y?
7transformer_block_2/layer_normalization_5/batchnorm/addAddV2Ctransformer_block_2/layer_normalization_5/moments/variance:output:0Btransformer_block_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????29
7transformer_block_2/layer_normalization_5/batchnorm/add?
9transformer_block_2/layer_normalization_5/batchnorm/RsqrtRsqrt;transformer_block_2/layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2;
9transformer_block_2/layer_normalization_5/batchnorm/Rsqrt?
Ftransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp?
7transformer_block_2/layer_normalization_5/batchnorm/mulMul=transformer_block_2/layer_normalization_5/batchnorm/Rsqrt:y:0Ntransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 29
7transformer_block_2/layer_normalization_5/batchnorm/mul?
9transformer_block_2/layer_normalization_5/batchnorm/mul_1Multransformer_block_2/add_1:z:0;transformer_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_5/batchnorm/mul_1?
9transformer_block_2/layer_normalization_5/batchnorm/mul_2Mul?transformer_block_2/layer_normalization_5/moments/mean:output:0;transformer_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_5/batchnorm/mul_2?
Btransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp?
7transformer_block_2/layer_normalization_5/batchnorm/subSubJtransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0=transformer_block_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 29
7transformer_block_2/layer_normalization_5/batchnorm/sub?
9transformer_block_2/layer_normalization_5/batchnorm/add_1AddV2=transformer_block_2/layer_normalization_5/batchnorm/mul_1:z:0;transformer_block_2/layer_normalization_5/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_5/batchnorm/add_1?
1global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_2/Mean/reduction_indices?
global_average_pooling1d_2/MeanMean=transformer_block_2/layer_normalization_5/batchnorm/add_1:z:0:global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2!
global_average_pooling1d_2/Mean?
dropout_10/IdentityIdentity(global_average_pooling1d_2/Mean:output:0*
T0*'
_output_shapes
:????????? 2
dropout_10/Identity?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMuldropout_10/Identity:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/BiasAdds
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_10/Relu?
dropout_11/IdentityIdentitydense_10/Relu:activations:0*
T0*'
_output_shapes
:?????????2
dropout_11/Identity?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMuldropout_11/Identity:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAdd|
dense_11/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_11/Sigmoid?
IdentityIdentitydense_11/Sigmoid:y:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp<^token_and_position_embedding_2/embedding_4/embedding_lookup<^token_and_position_embedding_2/embedding_5/embedding_lookupC^transformer_block_2/layer_normalization_4/batchnorm/ReadVariableOpG^transformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpC^transformer_block_2/layer_normalization_5/batchnorm/ReadVariableOpG^transformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpO^transformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpY^transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_2/multi_head_attention_2/key/add/ReadVariableOpL^transformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpD^transformer_block_2/multi_head_attention_2/query/add/ReadVariableOpN^transformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpD^transformer_block_2/multi_head_attention_2/value/add/ReadVariableOpN^transformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp@^transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOpB^transformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp@^transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOpB^transformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2z
;token_and_position_embedding_2/embedding_4/embedding_lookup;token_and_position_embedding_2/embedding_4/embedding_lookup2z
;token_and_position_embedding_2/embedding_5/embedding_lookup;token_and_position_embedding_2/embedding_5/embedding_lookup2?
Btransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOpBtransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp2?
Ftransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpFtransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2?
Btransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOpBtransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp2?
Ftransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpFtransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2?
Ntransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpNtransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp2?
Xtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2?
Atransformer_block_2/multi_head_attention_2/key/add/ReadVariableOpAtransformer_block_2/multi_head_attention_2/key/add/ReadVariableOp2?
Ktransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpKtransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_2/multi_head_attention_2/query/add/ReadVariableOpCtransformer_block_2/multi_head_attention_2/query/add/ReadVariableOp2?
Mtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpMtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_2/multi_head_attention_2/value/add/ReadVariableOpCtransformer_block_2/multi_head_attention_2/value/add/ReadVariableOp2?
Mtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpMtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2?
?transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp?transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp2?
Atransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOpAtransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp2?
?transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp?transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp2?
Atransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOpAtransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_10_layer_call_and_return_conditional_losses_66204

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?-
?
B__inference_model_2_layer_call_and_return_conditional_losses_64976
input_4(
$token_and_position_embedding_2_64460(
$token_and_position_embedding_2_64462
transformer_block_2_64816
transformer_block_2_64818
transformer_block_2_64820
transformer_block_2_64822
transformer_block_2_64824
transformer_block_2_64826
transformer_block_2_64828
transformer_block_2_64830
transformer_block_2_64832
transformer_block_2_64834
transformer_block_2_64836
transformer_block_2_64838
transformer_block_2_64840
transformer_block_2_64842
transformer_block_2_64844
transformer_block_2_64846
dense_10_64913
dense_10_64915
dense_11_64970
dense_11_64972
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?"dropout_10/StatefulPartitionedCall?"dropout_11/StatefulPartitionedCall?6token_and_position_embedding_2/StatefulPartitionedCall?+transformer_block_2/StatefulPartitionedCall?
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_4$token_and_position_embedding_2_64460$token_and_position_embedding_2_64462*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *b
f]R[
Y__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_6444928
6token_and_position_embedding_2/StatefulPartitionedCall?
+transformer_block_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_block_2_64816transformer_block_2_64818transformer_block_2_64820transformer_block_2_64822transformer_block_2_64824transformer_block_2_64826transformer_block_2_64828transformer_block_2_64830transformer_block_2_64832transformer_block_2_64834transformer_block_2_64836transformer_block_2_64838transformer_block_2_64840transformer_block_2_64842transformer_block_2_64844transformer_block_2_64846*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_646132-
+transformer_block_2/StatefulPartitionedCall?
*global_average_pooling1d_2/PartitionedCallPartitionedCall4transformer_block_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_648542,
*global_average_pooling1d_2/PartitionedCall?
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_648732$
"dropout_10/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_10_64913dense_10_64915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_649022"
 dense_10/StatefulPartitionedCall?
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_649302$
"dropout_11/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_11_64970dense_11_64972*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_649592"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall,^transformer_block_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2Z
+transformer_block_2/StatefulPartitionedCall+transformer_block_2/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4
?-
?
B__inference_model_2_layer_call_and_return_conditional_losses_65089

inputs(
$token_and_position_embedding_2_65037(
$token_and_position_embedding_2_65039
transformer_block_2_65042
transformer_block_2_65044
transformer_block_2_65046
transformer_block_2_65048
transformer_block_2_65050
transformer_block_2_65052
transformer_block_2_65054
transformer_block_2_65056
transformer_block_2_65058
transformer_block_2_65060
transformer_block_2_65062
transformer_block_2_65064
transformer_block_2_65066
transformer_block_2_65068
transformer_block_2_65070
transformer_block_2_65072
dense_10_65077
dense_10_65079
dense_11_65083
dense_11_65085
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?"dropout_10/StatefulPartitionedCall?"dropout_11/StatefulPartitionedCall?6token_and_position_embedding_2/StatefulPartitionedCall?+transformer_block_2/StatefulPartitionedCall?
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs$token_and_position_embedding_2_65037$token_and_position_embedding_2_65039*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *b
f]R[
Y__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_6444928
6token_and_position_embedding_2/StatefulPartitionedCall?
+transformer_block_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_block_2_65042transformer_block_2_65044transformer_block_2_65046transformer_block_2_65048transformer_block_2_65050transformer_block_2_65052transformer_block_2_65054transformer_block_2_65056transformer_block_2_65058transformer_block_2_65060transformer_block_2_65062transformer_block_2_65064transformer_block_2_65066transformer_block_2_65068transformer_block_2_65070transformer_block_2_65072*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_646132-
+transformer_block_2/StatefulPartitionedCall?
*global_average_pooling1d_2/PartitionedCallPartitionedCall4transformer_block_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_648542,
*global_average_pooling1d_2/PartitionedCall?
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_648732$
"dropout_10/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_10_65077dense_10_65079*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_649022"
 dense_10/StatefulPartitionedCall?
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_649302$
"dropout_11/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_11_65083dense_11_65085*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_649592"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall,^transformer_block_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2Z
+transformer_block_2/StatefulPartitionedCall+transformer_block_2/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
|
'__inference_dense_9_layer_call_fn_66479

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_643162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_65762

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_651932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
}
(__inference_dense_10_layer_call_fn_66213

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_649022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_65713

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_650892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_10_layer_call_fn_66193

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_648782
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
E__inference_dropout_10_layer_call_and_return_conditional_losses_66178

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_64613

inputsF
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_2_query_add_readvariableop_resourceD
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_2_key_add_readvariableop_resourceF
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_2_value_add_readvariableop_resourceQ
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_2_attention_output_add_readvariableop_resource?
;layer_normalization_4_batchnorm_mul_readvariableop_resource;
7layer_normalization_4_batchnorm_readvariableop_resource:
6sequential_2_dense_8_tensordot_readvariableop_resource8
4sequential_2_dense_8_biasadd_readvariableop_resource:
6sequential_2_dense_9_tensordot_readvariableop_resource8
4sequential_2_dense_9_biasadd_readvariableop_resource?
;layer_normalization_5_batchnorm_mul_readvariableop_resource;
7layer_normalization_5_batchnorm_readvariableop_resource
identity??.layer_normalization_4/batchnorm/ReadVariableOp?2layer_normalization_4/batchnorm/mul/ReadVariableOp?.layer_normalization_5/batchnorm/ReadVariableOp?2layer_normalization_5/batchnorm/mul/ReadVariableOp?:multi_head_attention_2/attention_output/add/ReadVariableOp?Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_2/key/add/ReadVariableOp?7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_2/query/add/ReadVariableOp?9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_2/value/add/ReadVariableOp?9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?+sequential_2/dense_8/BiasAdd/ReadVariableOp?-sequential_2/dense_8/Tensordot/ReadVariableOp?+sequential_2/dense_9/BiasAdd/ReadVariableOp?-sequential_2/dense_9/Tensordot/ReadVariableOp?
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2,
*multi_head_attention_2/query/einsum/Einsum?
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_2/query/add/ReadVariableOp?
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2"
 multi_head_attention_2/query/add?
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2*
(multi_head_attention_2/key/einsum/Einsum?
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_2/key/add/ReadVariableOp?
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2 
multi_head_attention_2/key/add?
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2,
*multi_head_attention_2/value/einsum/Einsum?
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_2/value/add/ReadVariableOp?
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2"
 multi_head_attention_2/value/add?
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?5>2
multi_head_attention_2/Mul/y?
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*0
_output_shapes
:?????????? 2
multi_head_attention_2/Mul?
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2&
$multi_head_attention_2/einsum/Einsum?
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2(
&multi_head_attention_2/softmax/Softmax?
,multi_head_attention_2/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,multi_head_attention_2/dropout/dropout/Const?
*multi_head_attention_2/dropout/dropout/MulMul0multi_head_attention_2/softmax/Softmax:softmax:05multi_head_attention_2/dropout/dropout/Const:output:0*
T0*1
_output_shapes
:???????????2,
*multi_head_attention_2/dropout/dropout/Mul?
,multi_head_attention_2/dropout/dropout/ShapeShape0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_2/dropout/dropout/Shape?
Cmulti_head_attention_2/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_2/dropout/dropout/Shape:output:0*
T0*1
_output_shapes
:???????????*
dtype02E
Cmulti_head_attention_2/dropout/dropout/random_uniform/RandomUniform?
5multi_head_attention_2/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_2/dropout/dropout/GreaterEqual/y?
3multi_head_attention_2/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_2/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_2/dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:???????????25
3multi_head_attention_2/dropout/dropout/GreaterEqual?
+multi_head_attention_2/dropout/dropout/CastCast7multi_head_attention_2/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:???????????2-
+multi_head_attention_2/dropout/dropout/Cast?
,multi_head_attention_2/dropout/dropout/Mul_1Mul.multi_head_attention_2/dropout/dropout/Mul:z:0/multi_head_attention_2/dropout/dropout/Cast:y:0*
T0*1
_output_shapes
:???????????2.
,multi_head_attention_2/dropout/dropout/Mul_1?
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/dropout/Mul_1:z:0$multi_head_attention_2/value/add:z:0*
N*
T0*0
_output_shapes
:?????????? *
equationacbe,aecd->abcd2(
&multi_head_attention_2/einsum_1/Einsum?
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????? *
equationabcd,cde->abe27
5multi_head_attention_2/attention_output/einsum/Einsum?
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_2/attention_output/add/ReadVariableOp?
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2-
+multi_head_attention_2/attention_output/addw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_8/dropout/Const?
dropout_8/dropout/MulMul/multi_head_attention_2/attention_output/add:z:0 dropout_8/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout_8/dropout/Mul?
dropout_8/dropout/ShapeShape/multi_head_attention_2/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype020
.dropout_8/dropout/random_uniform/RandomUniform?
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_8/dropout/GreaterEqual/y?
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2 
dropout_8/dropout/GreaterEqual?
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout_8/dropout/Cast?
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout_8/dropout/Mul_1o
addAddV2inputsdropout_8/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2
add?
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_4/moments/mean/reduction_indices?
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2$
"layer_normalization_4/moments/mean?
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:??????????2,
*layer_normalization_4/moments/StopGradient?
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 21
/layer_normalization_4/moments/SquaredDifference?
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_4/moments/variance/reduction_indices?
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2(
&layer_normalization_4/moments/variance?
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_4/batchnorm/add/y?
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2%
#layer_normalization_4/batchnorm/add?
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2'
%layer_normalization_4/batchnorm/Rsqrt?
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_4/batchnorm/mul/ReadVariableOp?
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_4/batchnorm/mul?
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/mul_1?
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/mul_2?
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_4/batchnorm/ReadVariableOp?
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_4/batchnorm/sub?
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/add_1?
-sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_2/dense_8/Tensordot/ReadVariableOp?
#sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_2/dense_8/Tensordot/axes?
#sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_2/dense_8/Tensordot/free?
$sequential_2/dense_8/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_2/dense_8/Tensordot/Shape?
,sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_8/Tensordot/GatherV2/axis?
'sequential_2/dense_8/Tensordot/GatherV2GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/free:output:05sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_2/dense_8/Tensordot/GatherV2?
.sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/dense_8/Tensordot/GatherV2_1/axis?
)sequential_2/dense_8/Tensordot/GatherV2_1GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/axes:output:07sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_2/dense_8/Tensordot/GatherV2_1?
$sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_2/dense_8/Tensordot/Const?
#sequential_2/dense_8/Tensordot/ProdProd0sequential_2/dense_8/Tensordot/GatherV2:output:0-sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_2/dense_8/Tensordot/Prod?
&sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_8/Tensordot/Const_1?
%sequential_2/dense_8/Tensordot/Prod_1Prod2sequential_2/dense_8/Tensordot/GatherV2_1:output:0/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_2/dense_8/Tensordot/Prod_1?
*sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_2/dense_8/Tensordot/concat/axis?
%sequential_2/dense_8/Tensordot/concatConcatV2,sequential_2/dense_8/Tensordot/free:output:0,sequential_2/dense_8/Tensordot/axes:output:03sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_2/dense_8/Tensordot/concat?
$sequential_2/dense_8/Tensordot/stackPack,sequential_2/dense_8/Tensordot/Prod:output:0.sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_2/dense_8/Tensordot/stack?
(sequential_2/dense_8/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0.sequential_2/dense_8/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2*
(sequential_2/dense_8/Tensordot/transpose?
&sequential_2/dense_8/Tensordot/ReshapeReshape,sequential_2/dense_8/Tensordot/transpose:y:0-sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2(
&sequential_2/dense_8/Tensordot/Reshape?
%sequential_2/dense_8/Tensordot/MatMulMatMul/sequential_2/dense_8/Tensordot/Reshape:output:05sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/dense_8/Tensordot/MatMul?
&sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_8/Tensordot/Const_2?
,sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_8/Tensordot/concat_1/axis?
'sequential_2/dense_8/Tensordot/concat_1ConcatV20sequential_2/dense_8/Tensordot/GatherV2:output:0/sequential_2/dense_8/Tensordot/Const_2:output:05sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_2/dense_8/Tensordot/concat_1?
sequential_2/dense_8/TensordotReshape/sequential_2/dense_8/Tensordot/MatMul:product:00sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2 
sequential_2/dense_8/Tensordot?
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_2/dense_8/BiasAdd/ReadVariableOp?
sequential_2/dense_8/BiasAddBiasAdd'sequential_2/dense_8/Tensordot:output:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_8/BiasAdd?
sequential_2/dense_8/ReluRelu%sequential_2/dense_8/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_8/Relu?
-sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_2/dense_9/Tensordot/ReadVariableOp?
#sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_2/dense_9/Tensordot/axes?
#sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_2/dense_9/Tensordot/free?
$sequential_2/dense_9/Tensordot/ShapeShape'sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_2/dense_9/Tensordot/Shape?
,sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_9/Tensordot/GatherV2/axis?
'sequential_2/dense_9/Tensordot/GatherV2GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/free:output:05sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_2/dense_9/Tensordot/GatherV2?
.sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/dense_9/Tensordot/GatherV2_1/axis?
)sequential_2/dense_9/Tensordot/GatherV2_1GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/axes:output:07sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_2/dense_9/Tensordot/GatherV2_1?
$sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_2/dense_9/Tensordot/Const?
#sequential_2/dense_9/Tensordot/ProdProd0sequential_2/dense_9/Tensordot/GatherV2:output:0-sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_2/dense_9/Tensordot/Prod?
&sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_9/Tensordot/Const_1?
%sequential_2/dense_9/Tensordot/Prod_1Prod2sequential_2/dense_9/Tensordot/GatherV2_1:output:0/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_2/dense_9/Tensordot/Prod_1?
*sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_2/dense_9/Tensordot/concat/axis?
%sequential_2/dense_9/Tensordot/concatConcatV2,sequential_2/dense_9/Tensordot/free:output:0,sequential_2/dense_9/Tensordot/axes:output:03sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_2/dense_9/Tensordot/concat?
$sequential_2/dense_9/Tensordot/stackPack,sequential_2/dense_9/Tensordot/Prod:output:0.sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_2/dense_9/Tensordot/stack?
(sequential_2/dense_9/Tensordot/transpose	Transpose'sequential_2/dense_8/Relu:activations:0.sequential_2/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2*
(sequential_2/dense_9/Tensordot/transpose?
&sequential_2/dense_9/Tensordot/ReshapeReshape,sequential_2/dense_9/Tensordot/transpose:y:0-sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2(
&sequential_2/dense_9/Tensordot/Reshape?
%sequential_2/dense_9/Tensordot/MatMulMatMul/sequential_2/dense_9/Tensordot/Reshape:output:05sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/dense_9/Tensordot/MatMul?
&sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_9/Tensordot/Const_2?
,sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_9/Tensordot/concat_1/axis?
'sequential_2/dense_9/Tensordot/concat_1ConcatV20sequential_2/dense_9/Tensordot/GatherV2:output:0/sequential_2/dense_9/Tensordot/Const_2:output:05sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_2/dense_9/Tensordot/concat_1?
sequential_2/dense_9/TensordotReshape/sequential_2/dense_9/Tensordot/MatMul:product:00sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2 
sequential_2/dense_9/Tensordot?
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_2/dense_9/BiasAdd/ReadVariableOp?
sequential_2/dense_9/BiasAddBiasAdd'sequential_2/dense_9/Tensordot:output:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_9/BiasAddw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_9/dropout/Const?
dropout_9/dropout/MulMul%sequential_2/dense_9/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout_9/dropout/Mul?
dropout_9/dropout/ShapeShape%sequential_2/dense_9/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape?
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype020
.dropout_9/dropout/random_uniform/RandomUniform?
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_9/dropout/GreaterEqual/y?
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2 
dropout_9/dropout/GreaterEqual?
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout_9/dropout/Cast?
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout_9/dropout/Mul_1?
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_9/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2
add_1?
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_5/moments/mean/reduction_indices?
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2$
"layer_normalization_5/moments/mean?
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:??????????2,
*layer_normalization_5/moments/StopGradient?
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 21
/layer_normalization_5/moments/SquaredDifference?
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_5/moments/variance/reduction_indices?
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2(
&layer_normalization_5/moments/variance?
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_5/batchnorm/add/y?
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2%
#layer_normalization_5/batchnorm/add?
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2'
%layer_normalization_5/batchnorm/Rsqrt?
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_5/batchnorm/mul/ReadVariableOp?
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_5/batchnorm/mul?
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/mul_1?
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/mul_2?
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_5/batchnorm/ReadVariableOp?
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_5/batchnorm/sub?
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/add_1?
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp.^sequential_2/dense_8/Tensordot/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp.^sequential_2/dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:?????????? ::::::::::::::::2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2^
-sequential_2/dense_8/Tensordot/ReadVariableOp-sequential_2/dense_8/Tensordot/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2^
-sequential_2/dense_9/Tensordot/ReadVariableOp-sequential_2/dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
,__inference_sequential_2_layer_call_fn_66387

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_643642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_64854

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
c
*__inference_dropout_10_layer_call_fn_66188

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_648732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
? 
?
B__inference_dense_8_layer_call_and_return_conditional_losses_66431

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
}
(__inference_dense_11_layer_call_fn_66260

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
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
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_649592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_66374

inputs-
)dense_8_tensordot_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource-
)dense_9_tensordot_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identity??dense_8/BiasAdd/ReadVariableOp? dense_8/Tensordot/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp? dense_9/Tensordot/ReadVariableOp?
 dense_8/Tensordot/ReadVariableOpReadVariableOp)dense_8_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_8/Tensordot/ReadVariableOpz
dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_8/Tensordot/axes?
dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_8/Tensordot/freeh
dense_8/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_8/Tensordot/Shape?
dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_8/Tensordot/GatherV2/axis?
dense_8/Tensordot/GatherV2GatherV2 dense_8/Tensordot/Shape:output:0dense_8/Tensordot/free:output:0(dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_8/Tensordot/GatherV2?
!dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_8/Tensordot/GatherV2_1/axis?
dense_8/Tensordot/GatherV2_1GatherV2 dense_8/Tensordot/Shape:output:0dense_8/Tensordot/axes:output:0*dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_8/Tensordot/GatherV2_1|
dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_8/Tensordot/Const?
dense_8/Tensordot/ProdProd#dense_8/Tensordot/GatherV2:output:0 dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_8/Tensordot/Prod?
dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_8/Tensordot/Const_1?
dense_8/Tensordot/Prod_1Prod%dense_8/Tensordot/GatherV2_1:output:0"dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_8/Tensordot/Prod_1?
dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_8/Tensordot/concat/axis?
dense_8/Tensordot/concatConcatV2dense_8/Tensordot/free:output:0dense_8/Tensordot/axes:output:0&dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_8/Tensordot/concat?
dense_8/Tensordot/stackPackdense_8/Tensordot/Prod:output:0!dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_8/Tensordot/stack?
dense_8/Tensordot/transpose	Transposeinputs!dense_8/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2
dense_8/Tensordot/transpose?
dense_8/Tensordot/ReshapeReshapedense_8/Tensordot/transpose:y:0 dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_8/Tensordot/Reshape?
dense_8/Tensordot/MatMulMatMul"dense_8/Tensordot/Reshape:output:0(dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_8/Tensordot/MatMul?
dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_8/Tensordot/Const_2?
dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_8/Tensordot/concat_1/axis?
dense_8/Tensordot/concat_1ConcatV2#dense_8/Tensordot/GatherV2:output:0"dense_8/Tensordot/Const_2:output:0(dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_8/Tensordot/concat_1?
dense_8/TensordotReshape"dense_8/Tensordot/MatMul:product:0#dense_8/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2
dense_8/Tensordot?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/Tensordot:output:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
dense_8/BiasAddu
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
dense_8/Relu?
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_9/Tensordot/ReadVariableOpz
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_9/Tensordot/axes?
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_9/Tensordot/free|
dense_9/Tensordot/ShapeShapedense_8/Relu:activations:0*
T0*
_output_shapes
:2
dense_9/Tensordot/Shape?
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/GatherV2/axis?
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2?
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_9/Tensordot/GatherV2_1/axis?
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2_1|
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const?
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod?
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const_1?
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod_1?
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_9/Tensordot/concat/axis?
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concat?
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/stack?
dense_9/Tensordot/transpose	Transposedense_8/Relu:activations:0!dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2
dense_9/Tensordot/transpose?
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_9/Tensordot/Reshape?
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_9/Tensordot/MatMul?
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const_2?
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/concat_1/axis?
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concat_1?
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2
dense_9/Tensordot?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
dense_9/BiasAdd?
IdentityIdentitydense_9/BiasAdd:output:0^dense_8/BiasAdd/ReadVariableOp!^dense_8/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2D
 dense_8/Tensordot/ReadVariableOp dense_8/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?3
!__inference__traced_restore_66962
file_prefix$
 assignvariableop_dense_10_kernel$
 assignvariableop_1_dense_10_bias&
"assignvariableop_2_dense_11_kernel$
 assignvariableop_3_dense_11_bias 
assignvariableop_4_adam_iter"
assignvariableop_5_adam_beta_1"
assignvariableop_6_adam_beta_2!
assignvariableop_7_adam_decay)
%assignvariableop_8_adam_learning_rateL
Hassignvariableop_9_token_and_position_embedding_2_embedding_4_embeddingsM
Iassignvariableop_10_token_and_position_embedding_2_embedding_5_embeddingsO
Kassignvariableop_11_transformer_block_2_multi_head_attention_2_query_kernelM
Iassignvariableop_12_transformer_block_2_multi_head_attention_2_query_biasM
Iassignvariableop_13_transformer_block_2_multi_head_attention_2_key_kernelK
Gassignvariableop_14_transformer_block_2_multi_head_attention_2_key_biasO
Kassignvariableop_15_transformer_block_2_multi_head_attention_2_value_kernelM
Iassignvariableop_16_transformer_block_2_multi_head_attention_2_value_biasZ
Vassignvariableop_17_transformer_block_2_multi_head_attention_2_attention_output_kernelX
Tassignvariableop_18_transformer_block_2_multi_head_attention_2_attention_output_bias&
"assignvariableop_19_dense_8_kernel$
 assignvariableop_20_dense_8_bias&
"assignvariableop_21_dense_9_kernel$
 assignvariableop_22_dense_9_biasG
Cassignvariableop_23_transformer_block_2_layer_normalization_4_gammaF
Bassignvariableop_24_transformer_block_2_layer_normalization_4_betaG
Cassignvariableop_25_transformer_block_2_layer_normalization_5_gammaF
Bassignvariableop_26_transformer_block_2_layer_normalization_5_beta
assignvariableop_27_total
assignvariableop_28_count
assignvariableop_29_total_1
assignvariableop_30_count_1.
*assignvariableop_31_adam_dense_10_kernel_m,
(assignvariableop_32_adam_dense_10_bias_m.
*assignvariableop_33_adam_dense_11_kernel_m,
(assignvariableop_34_adam_dense_11_bias_mT
Passignvariableop_35_adam_token_and_position_embedding_2_embedding_4_embeddings_mT
Passignvariableop_36_adam_token_and_position_embedding_2_embedding_5_embeddings_mV
Rassignvariableop_37_adam_transformer_block_2_multi_head_attention_2_query_kernel_mT
Passignvariableop_38_adam_transformer_block_2_multi_head_attention_2_query_bias_mT
Passignvariableop_39_adam_transformer_block_2_multi_head_attention_2_key_kernel_mR
Nassignvariableop_40_adam_transformer_block_2_multi_head_attention_2_key_bias_mV
Rassignvariableop_41_adam_transformer_block_2_multi_head_attention_2_value_kernel_mT
Passignvariableop_42_adam_transformer_block_2_multi_head_attention_2_value_bias_ma
]assignvariableop_43_adam_transformer_block_2_multi_head_attention_2_attention_output_kernel_m_
[assignvariableop_44_adam_transformer_block_2_multi_head_attention_2_attention_output_bias_m-
)assignvariableop_45_adam_dense_8_kernel_m+
'assignvariableop_46_adam_dense_8_bias_m-
)assignvariableop_47_adam_dense_9_kernel_m+
'assignvariableop_48_adam_dense_9_bias_mN
Jassignvariableop_49_adam_transformer_block_2_layer_normalization_4_gamma_mM
Iassignvariableop_50_adam_transformer_block_2_layer_normalization_4_beta_mN
Jassignvariableop_51_adam_transformer_block_2_layer_normalization_5_gamma_mM
Iassignvariableop_52_adam_transformer_block_2_layer_normalization_5_beta_m.
*assignvariableop_53_adam_dense_10_kernel_v,
(assignvariableop_54_adam_dense_10_bias_v.
*assignvariableop_55_adam_dense_11_kernel_v,
(assignvariableop_56_adam_dense_11_bias_vT
Passignvariableop_57_adam_token_and_position_embedding_2_embedding_4_embeddings_vT
Passignvariableop_58_adam_token_and_position_embedding_2_embedding_5_embeddings_vV
Rassignvariableop_59_adam_transformer_block_2_multi_head_attention_2_query_kernel_vT
Passignvariableop_60_adam_transformer_block_2_multi_head_attention_2_query_bias_vT
Passignvariableop_61_adam_transformer_block_2_multi_head_attention_2_key_kernel_vR
Nassignvariableop_62_adam_transformer_block_2_multi_head_attention_2_key_bias_vV
Rassignvariableop_63_adam_transformer_block_2_multi_head_attention_2_value_kernel_vT
Passignvariableop_64_adam_transformer_block_2_multi_head_attention_2_value_bias_va
]assignvariableop_65_adam_transformer_block_2_multi_head_attention_2_attention_output_kernel_v_
[assignvariableop_66_adam_transformer_block_2_multi_head_attention_2_attention_output_bias_v-
)assignvariableop_67_adam_dense_8_kernel_v+
'assignvariableop_68_adam_dense_8_bias_v-
)assignvariableop_69_adam_dense_9_kernel_v+
'assignvariableop_70_adam_dense_9_bias_vN
Jassignvariableop_71_adam_transformer_block_2_layer_normalization_4_gamma_vM
Iassignvariableop_72_adam_transformer_block_2_layer_normalization_4_beta_vN
Jassignvariableop_73_adam_transformer_block_2_layer_normalization_5_gamma_vM
Iassignvariableop_74_adam_transformer_block_2_layer_normalization_5_beta_v
identity_76??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_8?AssignVariableOp_9?$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?#
value?#B?#LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpHassignvariableop_9_token_and_position_embedding_2_embedding_4_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpIassignvariableop_10_token_and_position_embedding_2_embedding_5_embeddingsIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpKassignvariableop_11_transformer_block_2_multi_head_attention_2_query_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpIassignvariableop_12_transformer_block_2_multi_head_attention_2_query_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpIassignvariableop_13_transformer_block_2_multi_head_attention_2_key_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpGassignvariableop_14_transformer_block_2_multi_head_attention_2_key_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpKassignvariableop_15_transformer_block_2_multi_head_attention_2_value_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpIassignvariableop_16_transformer_block_2_multi_head_attention_2_value_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpVassignvariableop_17_transformer_block_2_multi_head_attention_2_attention_output_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpTassignvariableop_18_transformer_block_2_multi_head_attention_2_attention_output_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_8_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_8_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_9_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp assignvariableop_22_dense_9_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpCassignvariableop_23_transformer_block_2_layer_normalization_4_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_transformer_block_2_layer_normalization_4_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpCassignvariableop_25_transformer_block_2_layer_normalization_5_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpBassignvariableop_26_transformer_block_2_layer_normalization_5_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_10_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_10_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_11_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_11_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpPassignvariableop_35_adam_token_and_position_embedding_2_embedding_4_embeddings_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpPassignvariableop_36_adam_token_and_position_embedding_2_embedding_5_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpRassignvariableop_37_adam_transformer_block_2_multi_head_attention_2_query_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpPassignvariableop_38_adam_transformer_block_2_multi_head_attention_2_query_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpPassignvariableop_39_adam_transformer_block_2_multi_head_attention_2_key_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpNassignvariableop_40_adam_transformer_block_2_multi_head_attention_2_key_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_block_2_multi_head_attention_2_value_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpPassignvariableop_42_adam_transformer_block_2_multi_head_attention_2_value_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp]assignvariableop_43_adam_transformer_block_2_multi_head_attention_2_attention_output_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp[assignvariableop_44_adam_transformer_block_2_multi_head_attention_2_attention_output_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_8_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_8_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_9_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_9_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOpJassignvariableop_49_adam_transformer_block_2_layer_normalization_4_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpIassignvariableop_50_adam_transformer_block_2_layer_normalization_4_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOpJassignvariableop_51_adam_transformer_block_2_layer_normalization_5_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOpIassignvariableop_52_adam_transformer_block_2_layer_normalization_5_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_10_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_10_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_11_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_11_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOpPassignvariableop_57_adam_token_and_position_embedding_2_embedding_4_embeddings_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOpPassignvariableop_58_adam_token_and_position_embedding_2_embedding_5_embeddings_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOpRassignvariableop_59_adam_transformer_block_2_multi_head_attention_2_query_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOpPassignvariableop_60_adam_transformer_block_2_multi_head_attention_2_query_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOpPassignvariableop_61_adam_transformer_block_2_multi_head_attention_2_key_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOpNassignvariableop_62_adam_transformer_block_2_multi_head_attention_2_key_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOpRassignvariableop_63_adam_transformer_block_2_multi_head_attention_2_value_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_transformer_block_2_multi_head_attention_2_value_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp]assignvariableop_65_adam_transformer_block_2_multi_head_attention_2_attention_output_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp[assignvariableop_66_adam_transformer_block_2_multi_head_attention_2_attention_output_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_dense_8_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_dense_8_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_dense_9_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_dense_9_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOpJassignvariableop_71_adam_transformer_block_2_layer_normalization_4_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOpIassignvariableop_72_adam_transformer_block_2_layer_normalization_4_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOpJassignvariableop_73_adam_transformer_block_2_layer_normalization_5_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOpIassignvariableop_74_adam_transformer_block_2_layer_normalization_5_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_749
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_75?
Identity_76IdentityIdentity_75:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_76"#
identity_76Identity_76:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
V
:__inference_global_average_pooling1d_2_layer_call_fn_66155

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
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_644182
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_11_layer_call_and_return_conditional_losses_66251

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_65136
input_4
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_650892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4
?
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_64878

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
? 
?
B__inference_dense_8_layer_call_and_return_conditional_losses_64270

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?)
?
B__inference_model_2_layer_call_and_return_conditional_losses_65193

inputs(
$token_and_position_embedding_2_65141(
$token_and_position_embedding_2_65143
transformer_block_2_65146
transformer_block_2_65148
transformer_block_2_65150
transformer_block_2_65152
transformer_block_2_65154
transformer_block_2_65156
transformer_block_2_65158
transformer_block_2_65160
transformer_block_2_65162
transformer_block_2_65164
transformer_block_2_65166
transformer_block_2_65168
transformer_block_2_65170
transformer_block_2_65172
transformer_block_2_65174
transformer_block_2_65176
dense_10_65181
dense_10_65183
dense_11_65187
dense_11_65189
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?6token_and_position_embedding_2/StatefulPartitionedCall?+transformer_block_2/StatefulPartitionedCall?
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs$token_and_position_embedding_2_65141$token_and_position_embedding_2_65143*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *b
f]R[
Y__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_6444928
6token_and_position_embedding_2/StatefulPartitionedCall?
+transformer_block_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_block_2_65146transformer_block_2_65148transformer_block_2_65150transformer_block_2_65152transformer_block_2_65154transformer_block_2_65156transformer_block_2_65158transformer_block_2_65160transformer_block_2_65162transformer_block_2_65164transformer_block_2_65166transformer_block_2_65168transformer_block_2_65170transformer_block_2_65172transformer_block_2_65174transformer_block_2_65176*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_647402-
+transformer_block_2/StatefulPartitionedCall?
*global_average_pooling1d_2/PartitionedCallPartitionedCall4transformer_block_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_648542,
*global_average_pooling1d_2/PartitionedCall?
dropout_10/PartitionedCallPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_648782
dropout_10/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_10_65181dense_10_65183*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_649022"
 dense_10/StatefulPartitionedCall?
dropout_11/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_649352
dropout_11/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_11_65187dense_11_65189*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_649592"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall,^transformer_block_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2Z
+transformer_block_2/StatefulPartitionedCall+transformer_block_2/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
>__inference_token_and_position_embedding_2_layer_call_fn_65795
x
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *b
f]R[
Y__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_644492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:??????????

_user_specified_namex
?
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_66183

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
Y__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_65786
x&
"embedding_5_embedding_lookup_65773&
"embedding_4_embedding_lookup_65779
identity??embedding_4/embedding_lookup?embedding_5/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:?????????2
range?
embedding_5/embedding_lookupResourceGather"embedding_5_embedding_lookup_65773range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_5/embedding_lookup/65773*'
_output_shapes
:????????? *
dtype02
embedding_5/embedding_lookup?
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_5/embedding_lookup/65773*'
_output_shapes
:????????? 2'
%embedding_5/embedding_lookup/Identity?
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2)
'embedding_5/embedding_lookup/Identity_1q
embedding_4/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_4/Cast?
embedding_4/embedding_lookupResourceGather"embedding_4_embedding_lookup_65779embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_4/embedding_lookup/65779*,
_output_shapes
:?????????? *
dtype02
embedding_4/embedding_lookup?
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_4/embedding_lookup/65779*,
_output_shapes
:?????????? 2'
%embedding_4/embedding_lookup/Identity?
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2)
'embedding_4/embedding_lookup/Identity_1?
addAddV20embedding_4/embedding_lookup/Identity_1:output:00embedding_5/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2
add?
IdentityIdentityadd:z:0^embedding_4/embedding_lookup^embedding_5/embedding_lookup*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2<
embedding_5/embedding_lookupembedding_5/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex
?
?
,__inference_sequential_2_layer_call_fn_64375
dense_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_8_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_643642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:?????????? 
'
_user_specified_namedense_8_input
?
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_64347
dense_8_input
dense_8_64336
dense_8_64338
dense_9_64341
dense_9_64343
identity??dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8_inputdense_8_64336dense_8_64338*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_642702!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_64341dense_9_64343*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_643162!
dense_9/StatefulPartitionedCall?
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:[ W
,
_output_shapes
:?????????? 
'
_user_specified_namedense_8_input
?
?
#__inference_signature_wrapper_65299
input_4
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_642352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4
?
q
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_66161

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?	
?
C__inference_dense_10_layer_call_and_return_conditional_losses_64902

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
c
*__inference_dropout_11_layer_call_fn_66235

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_649302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_64391

inputs
dense_8_64380
dense_8_64382
dense_9_64385
dense_9_64387
identity??dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCallinputsdense_8_64380dense_8_64382*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_642702!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_64385dense_9_64387*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_643162!
dense_9/StatefulPartitionedCall?
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
F
*__inference_dropout_11_layer_call_fn_66240

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_649352
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_dense_9_layer_call_and_return_conditional_losses_64316

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_64740

inputsF
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_2_query_add_readvariableop_resourceD
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_2_key_add_readvariableop_resourceF
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_2_value_add_readvariableop_resourceQ
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_2_attention_output_add_readvariableop_resource?
;layer_normalization_4_batchnorm_mul_readvariableop_resource;
7layer_normalization_4_batchnorm_readvariableop_resource:
6sequential_2_dense_8_tensordot_readvariableop_resource8
4sequential_2_dense_8_biasadd_readvariableop_resource:
6sequential_2_dense_9_tensordot_readvariableop_resource8
4sequential_2_dense_9_biasadd_readvariableop_resource?
;layer_normalization_5_batchnorm_mul_readvariableop_resource;
7layer_normalization_5_batchnorm_readvariableop_resource
identity??.layer_normalization_4/batchnorm/ReadVariableOp?2layer_normalization_4/batchnorm/mul/ReadVariableOp?.layer_normalization_5/batchnorm/ReadVariableOp?2layer_normalization_5/batchnorm/mul/ReadVariableOp?:multi_head_attention_2/attention_output/add/ReadVariableOp?Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_2/key/add/ReadVariableOp?7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_2/query/add/ReadVariableOp?9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_2/value/add/ReadVariableOp?9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?+sequential_2/dense_8/BiasAdd/ReadVariableOp?-sequential_2/dense_8/Tensordot/ReadVariableOp?+sequential_2/dense_9/BiasAdd/ReadVariableOp?-sequential_2/dense_9/Tensordot/ReadVariableOp?
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2,
*multi_head_attention_2/query/einsum/Einsum?
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_2/query/add/ReadVariableOp?
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2"
 multi_head_attention_2/query/add?
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2*
(multi_head_attention_2/key/einsum/Einsum?
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_2/key/add/ReadVariableOp?
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2 
multi_head_attention_2/key/add?
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2,
*multi_head_attention_2/value/einsum/Einsum?
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_2/value/add/ReadVariableOp?
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2"
 multi_head_attention_2/value/add?
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?5>2
multi_head_attention_2/Mul/y?
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*0
_output_shapes
:?????????? 2
multi_head_attention_2/Mul?
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2&
$multi_head_attention_2/einsum/Einsum?
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2(
&multi_head_attention_2/softmax/Softmax?
'multi_head_attention_2/dropout/IdentityIdentity0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:???????????2)
'multi_head_attention_2/dropout/Identity?
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/Identity:output:0$multi_head_attention_2/value/add:z:0*
N*
T0*0
_output_shapes
:?????????? *
equationacbe,aecd->abcd2(
&multi_head_attention_2/einsum_1/Einsum?
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????? *
equationabcd,cde->abe27
5multi_head_attention_2/attention_output/einsum/Einsum?
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_2/attention_output/add/ReadVariableOp?
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2-
+multi_head_attention_2/attention_output/add?
dropout_8/IdentityIdentity/multi_head_attention_2/attention_output/add:z:0*
T0*,
_output_shapes
:?????????? 2
dropout_8/Identityo
addAddV2inputsdropout_8/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
add?
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_4/moments/mean/reduction_indices?
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2$
"layer_normalization_4/moments/mean?
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:??????????2,
*layer_normalization_4/moments/StopGradient?
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 21
/layer_normalization_4/moments/SquaredDifference?
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_4/moments/variance/reduction_indices?
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2(
&layer_normalization_4/moments/variance?
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_4/batchnorm/add/y?
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2%
#layer_normalization_4/batchnorm/add?
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2'
%layer_normalization_4/batchnorm/Rsqrt?
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_4/batchnorm/mul/ReadVariableOp?
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_4/batchnorm/mul?
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/mul_1?
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/mul_2?
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_4/batchnorm/ReadVariableOp?
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_4/batchnorm/sub?
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/add_1?
-sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_2/dense_8/Tensordot/ReadVariableOp?
#sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_2/dense_8/Tensordot/axes?
#sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_2/dense_8/Tensordot/free?
$sequential_2/dense_8/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_2/dense_8/Tensordot/Shape?
,sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_8/Tensordot/GatherV2/axis?
'sequential_2/dense_8/Tensordot/GatherV2GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/free:output:05sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_2/dense_8/Tensordot/GatherV2?
.sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/dense_8/Tensordot/GatherV2_1/axis?
)sequential_2/dense_8/Tensordot/GatherV2_1GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/axes:output:07sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_2/dense_8/Tensordot/GatherV2_1?
$sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_2/dense_8/Tensordot/Const?
#sequential_2/dense_8/Tensordot/ProdProd0sequential_2/dense_8/Tensordot/GatherV2:output:0-sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_2/dense_8/Tensordot/Prod?
&sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_8/Tensordot/Const_1?
%sequential_2/dense_8/Tensordot/Prod_1Prod2sequential_2/dense_8/Tensordot/GatherV2_1:output:0/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_2/dense_8/Tensordot/Prod_1?
*sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_2/dense_8/Tensordot/concat/axis?
%sequential_2/dense_8/Tensordot/concatConcatV2,sequential_2/dense_8/Tensordot/free:output:0,sequential_2/dense_8/Tensordot/axes:output:03sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_2/dense_8/Tensordot/concat?
$sequential_2/dense_8/Tensordot/stackPack,sequential_2/dense_8/Tensordot/Prod:output:0.sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_2/dense_8/Tensordot/stack?
(sequential_2/dense_8/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0.sequential_2/dense_8/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2*
(sequential_2/dense_8/Tensordot/transpose?
&sequential_2/dense_8/Tensordot/ReshapeReshape,sequential_2/dense_8/Tensordot/transpose:y:0-sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2(
&sequential_2/dense_8/Tensordot/Reshape?
%sequential_2/dense_8/Tensordot/MatMulMatMul/sequential_2/dense_8/Tensordot/Reshape:output:05sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/dense_8/Tensordot/MatMul?
&sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_8/Tensordot/Const_2?
,sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_8/Tensordot/concat_1/axis?
'sequential_2/dense_8/Tensordot/concat_1ConcatV20sequential_2/dense_8/Tensordot/GatherV2:output:0/sequential_2/dense_8/Tensordot/Const_2:output:05sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_2/dense_8/Tensordot/concat_1?
sequential_2/dense_8/TensordotReshape/sequential_2/dense_8/Tensordot/MatMul:product:00sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2 
sequential_2/dense_8/Tensordot?
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_2/dense_8/BiasAdd/ReadVariableOp?
sequential_2/dense_8/BiasAddBiasAdd'sequential_2/dense_8/Tensordot:output:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_8/BiasAdd?
sequential_2/dense_8/ReluRelu%sequential_2/dense_8/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_8/Relu?
-sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_2/dense_9/Tensordot/ReadVariableOp?
#sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_2/dense_9/Tensordot/axes?
#sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_2/dense_9/Tensordot/free?
$sequential_2/dense_9/Tensordot/ShapeShape'sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_2/dense_9/Tensordot/Shape?
,sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_9/Tensordot/GatherV2/axis?
'sequential_2/dense_9/Tensordot/GatherV2GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/free:output:05sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_2/dense_9/Tensordot/GatherV2?
.sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/dense_9/Tensordot/GatherV2_1/axis?
)sequential_2/dense_9/Tensordot/GatherV2_1GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/axes:output:07sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_2/dense_9/Tensordot/GatherV2_1?
$sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_2/dense_9/Tensordot/Const?
#sequential_2/dense_9/Tensordot/ProdProd0sequential_2/dense_9/Tensordot/GatherV2:output:0-sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_2/dense_9/Tensordot/Prod?
&sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_9/Tensordot/Const_1?
%sequential_2/dense_9/Tensordot/Prod_1Prod2sequential_2/dense_9/Tensordot/GatherV2_1:output:0/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_2/dense_9/Tensordot/Prod_1?
*sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_2/dense_9/Tensordot/concat/axis?
%sequential_2/dense_9/Tensordot/concatConcatV2,sequential_2/dense_9/Tensordot/free:output:0,sequential_2/dense_9/Tensordot/axes:output:03sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_2/dense_9/Tensordot/concat?
$sequential_2/dense_9/Tensordot/stackPack,sequential_2/dense_9/Tensordot/Prod:output:0.sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_2/dense_9/Tensordot/stack?
(sequential_2/dense_9/Tensordot/transpose	Transpose'sequential_2/dense_8/Relu:activations:0.sequential_2/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2*
(sequential_2/dense_9/Tensordot/transpose?
&sequential_2/dense_9/Tensordot/ReshapeReshape,sequential_2/dense_9/Tensordot/transpose:y:0-sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2(
&sequential_2/dense_9/Tensordot/Reshape?
%sequential_2/dense_9/Tensordot/MatMulMatMul/sequential_2/dense_9/Tensordot/Reshape:output:05sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/dense_9/Tensordot/MatMul?
&sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_9/Tensordot/Const_2?
,sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_9/Tensordot/concat_1/axis?
'sequential_2/dense_9/Tensordot/concat_1ConcatV20sequential_2/dense_9/Tensordot/GatherV2:output:0/sequential_2/dense_9/Tensordot/Const_2:output:05sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_2/dense_9/Tensordot/concat_1?
sequential_2/dense_9/TensordotReshape/sequential_2/dense_9/Tensordot/MatMul:product:00sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2 
sequential_2/dense_9/Tensordot?
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_2/dense_9/BiasAdd/ReadVariableOp?
sequential_2/dense_9/BiasAddBiasAdd'sequential_2/dense_9/Tensordot:output:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_9/BiasAdd?
dropout_9/IdentityIdentity%sequential_2/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
dropout_9/Identity?
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_9/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
add_1?
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_5/moments/mean/reduction_indices?
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2$
"layer_normalization_5/moments/mean?
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:??????????2,
*layer_normalization_5/moments/StopGradient?
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 21
/layer_normalization_5/moments/SquaredDifference?
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_5/moments/variance/reduction_indices?
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2(
&layer_normalization_5/moments/variance?
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_5/batchnorm/add/y?
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2%
#layer_normalization_5/batchnorm/add?
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2'
%layer_normalization_5/batchnorm/Rsqrt?
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_5/batchnorm/mul/ReadVariableOp?
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_5/batchnorm/mul?
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/mul_1?
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/mul_2?
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_5/batchnorm/ReadVariableOp?
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_5/batchnorm/sub?
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/add_1?
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp.^sequential_2/dense_8/Tensordot/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp.^sequential_2/dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:?????????? ::::::::::::::::2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2^
-sequential_2/dense_8/Tensordot/ReadVariableOp-sequential_2/dense_8/Tensordot/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2^
-sequential_2/dense_9/Tensordot/ReadVariableOp-sequential_2/dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_65943

inputsF
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_2_query_add_readvariableop_resourceD
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_2_key_add_readvariableop_resourceF
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_2_value_add_readvariableop_resourceQ
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_2_attention_output_add_readvariableop_resource?
;layer_normalization_4_batchnorm_mul_readvariableop_resource;
7layer_normalization_4_batchnorm_readvariableop_resource:
6sequential_2_dense_8_tensordot_readvariableop_resource8
4sequential_2_dense_8_biasadd_readvariableop_resource:
6sequential_2_dense_9_tensordot_readvariableop_resource8
4sequential_2_dense_9_biasadd_readvariableop_resource?
;layer_normalization_5_batchnorm_mul_readvariableop_resource;
7layer_normalization_5_batchnorm_readvariableop_resource
identity??.layer_normalization_4/batchnorm/ReadVariableOp?2layer_normalization_4/batchnorm/mul/ReadVariableOp?.layer_normalization_5/batchnorm/ReadVariableOp?2layer_normalization_5/batchnorm/mul/ReadVariableOp?:multi_head_attention_2/attention_output/add/ReadVariableOp?Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_2/key/add/ReadVariableOp?7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_2/query/add/ReadVariableOp?9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_2/value/add/ReadVariableOp?9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?+sequential_2/dense_8/BiasAdd/ReadVariableOp?-sequential_2/dense_8/Tensordot/ReadVariableOp?+sequential_2/dense_9/BiasAdd/ReadVariableOp?-sequential_2/dense_9/Tensordot/ReadVariableOp?
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2,
*multi_head_attention_2/query/einsum/Einsum?
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_2/query/add/ReadVariableOp?
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2"
 multi_head_attention_2/query/add?
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2*
(multi_head_attention_2/key/einsum/Einsum?
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_2/key/add/ReadVariableOp?
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2 
multi_head_attention_2/key/add?
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2,
*multi_head_attention_2/value/einsum/Einsum?
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_2/value/add/ReadVariableOp?
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2"
 multi_head_attention_2/value/add?
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?5>2
multi_head_attention_2/Mul/y?
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*0
_output_shapes
:?????????? 2
multi_head_attention_2/Mul?
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2&
$multi_head_attention_2/einsum/Einsum?
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2(
&multi_head_attention_2/softmax/Softmax?
,multi_head_attention_2/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,multi_head_attention_2/dropout/dropout/Const?
*multi_head_attention_2/dropout/dropout/MulMul0multi_head_attention_2/softmax/Softmax:softmax:05multi_head_attention_2/dropout/dropout/Const:output:0*
T0*1
_output_shapes
:???????????2,
*multi_head_attention_2/dropout/dropout/Mul?
,multi_head_attention_2/dropout/dropout/ShapeShape0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_2/dropout/dropout/Shape?
Cmulti_head_attention_2/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_2/dropout/dropout/Shape:output:0*
T0*1
_output_shapes
:???????????*
dtype02E
Cmulti_head_attention_2/dropout/dropout/random_uniform/RandomUniform?
5multi_head_attention_2/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_2/dropout/dropout/GreaterEqual/y?
3multi_head_attention_2/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_2/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_2/dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:???????????25
3multi_head_attention_2/dropout/dropout/GreaterEqual?
+multi_head_attention_2/dropout/dropout/CastCast7multi_head_attention_2/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:???????????2-
+multi_head_attention_2/dropout/dropout/Cast?
,multi_head_attention_2/dropout/dropout/Mul_1Mul.multi_head_attention_2/dropout/dropout/Mul:z:0/multi_head_attention_2/dropout/dropout/Cast:y:0*
T0*1
_output_shapes
:???????????2.
,multi_head_attention_2/dropout/dropout/Mul_1?
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/dropout/Mul_1:z:0$multi_head_attention_2/value/add:z:0*
N*
T0*0
_output_shapes
:?????????? *
equationacbe,aecd->abcd2(
&multi_head_attention_2/einsum_1/Einsum?
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????? *
equationabcd,cde->abe27
5multi_head_attention_2/attention_output/einsum/Einsum?
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_2/attention_output/add/ReadVariableOp?
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2-
+multi_head_attention_2/attention_output/addw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_8/dropout/Const?
dropout_8/dropout/MulMul/multi_head_attention_2/attention_output/add:z:0 dropout_8/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout_8/dropout/Mul?
dropout_8/dropout/ShapeShape/multi_head_attention_2/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype020
.dropout_8/dropout/random_uniform/RandomUniform?
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_8/dropout/GreaterEqual/y?
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2 
dropout_8/dropout/GreaterEqual?
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout_8/dropout/Cast?
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout_8/dropout/Mul_1o
addAddV2inputsdropout_8/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2
add?
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_4/moments/mean/reduction_indices?
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2$
"layer_normalization_4/moments/mean?
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:??????????2,
*layer_normalization_4/moments/StopGradient?
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 21
/layer_normalization_4/moments/SquaredDifference?
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_4/moments/variance/reduction_indices?
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2(
&layer_normalization_4/moments/variance?
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_4/batchnorm/add/y?
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2%
#layer_normalization_4/batchnorm/add?
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2'
%layer_normalization_4/batchnorm/Rsqrt?
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_4/batchnorm/mul/ReadVariableOp?
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_4/batchnorm/mul?
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/mul_1?
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/mul_2?
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_4/batchnorm/ReadVariableOp?
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_4/batchnorm/sub?
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/add_1?
-sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_2/dense_8/Tensordot/ReadVariableOp?
#sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_2/dense_8/Tensordot/axes?
#sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_2/dense_8/Tensordot/free?
$sequential_2/dense_8/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_2/dense_8/Tensordot/Shape?
,sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_8/Tensordot/GatherV2/axis?
'sequential_2/dense_8/Tensordot/GatherV2GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/free:output:05sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_2/dense_8/Tensordot/GatherV2?
.sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/dense_8/Tensordot/GatherV2_1/axis?
)sequential_2/dense_8/Tensordot/GatherV2_1GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/axes:output:07sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_2/dense_8/Tensordot/GatherV2_1?
$sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_2/dense_8/Tensordot/Const?
#sequential_2/dense_8/Tensordot/ProdProd0sequential_2/dense_8/Tensordot/GatherV2:output:0-sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_2/dense_8/Tensordot/Prod?
&sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_8/Tensordot/Const_1?
%sequential_2/dense_8/Tensordot/Prod_1Prod2sequential_2/dense_8/Tensordot/GatherV2_1:output:0/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_2/dense_8/Tensordot/Prod_1?
*sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_2/dense_8/Tensordot/concat/axis?
%sequential_2/dense_8/Tensordot/concatConcatV2,sequential_2/dense_8/Tensordot/free:output:0,sequential_2/dense_8/Tensordot/axes:output:03sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_2/dense_8/Tensordot/concat?
$sequential_2/dense_8/Tensordot/stackPack,sequential_2/dense_8/Tensordot/Prod:output:0.sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_2/dense_8/Tensordot/stack?
(sequential_2/dense_8/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0.sequential_2/dense_8/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2*
(sequential_2/dense_8/Tensordot/transpose?
&sequential_2/dense_8/Tensordot/ReshapeReshape,sequential_2/dense_8/Tensordot/transpose:y:0-sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2(
&sequential_2/dense_8/Tensordot/Reshape?
%sequential_2/dense_8/Tensordot/MatMulMatMul/sequential_2/dense_8/Tensordot/Reshape:output:05sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/dense_8/Tensordot/MatMul?
&sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_8/Tensordot/Const_2?
,sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_8/Tensordot/concat_1/axis?
'sequential_2/dense_8/Tensordot/concat_1ConcatV20sequential_2/dense_8/Tensordot/GatherV2:output:0/sequential_2/dense_8/Tensordot/Const_2:output:05sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_2/dense_8/Tensordot/concat_1?
sequential_2/dense_8/TensordotReshape/sequential_2/dense_8/Tensordot/MatMul:product:00sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2 
sequential_2/dense_8/Tensordot?
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_2/dense_8/BiasAdd/ReadVariableOp?
sequential_2/dense_8/BiasAddBiasAdd'sequential_2/dense_8/Tensordot:output:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_8/BiasAdd?
sequential_2/dense_8/ReluRelu%sequential_2/dense_8/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_8/Relu?
-sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_2/dense_9/Tensordot/ReadVariableOp?
#sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_2/dense_9/Tensordot/axes?
#sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_2/dense_9/Tensordot/free?
$sequential_2/dense_9/Tensordot/ShapeShape'sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_2/dense_9/Tensordot/Shape?
,sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_9/Tensordot/GatherV2/axis?
'sequential_2/dense_9/Tensordot/GatherV2GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/free:output:05sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_2/dense_9/Tensordot/GatherV2?
.sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/dense_9/Tensordot/GatherV2_1/axis?
)sequential_2/dense_9/Tensordot/GatherV2_1GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/axes:output:07sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_2/dense_9/Tensordot/GatherV2_1?
$sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_2/dense_9/Tensordot/Const?
#sequential_2/dense_9/Tensordot/ProdProd0sequential_2/dense_9/Tensordot/GatherV2:output:0-sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_2/dense_9/Tensordot/Prod?
&sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_9/Tensordot/Const_1?
%sequential_2/dense_9/Tensordot/Prod_1Prod2sequential_2/dense_9/Tensordot/GatherV2_1:output:0/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_2/dense_9/Tensordot/Prod_1?
*sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_2/dense_9/Tensordot/concat/axis?
%sequential_2/dense_9/Tensordot/concatConcatV2,sequential_2/dense_9/Tensordot/free:output:0,sequential_2/dense_9/Tensordot/axes:output:03sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_2/dense_9/Tensordot/concat?
$sequential_2/dense_9/Tensordot/stackPack,sequential_2/dense_9/Tensordot/Prod:output:0.sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_2/dense_9/Tensordot/stack?
(sequential_2/dense_9/Tensordot/transpose	Transpose'sequential_2/dense_8/Relu:activations:0.sequential_2/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2*
(sequential_2/dense_9/Tensordot/transpose?
&sequential_2/dense_9/Tensordot/ReshapeReshape,sequential_2/dense_9/Tensordot/transpose:y:0-sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2(
&sequential_2/dense_9/Tensordot/Reshape?
%sequential_2/dense_9/Tensordot/MatMulMatMul/sequential_2/dense_9/Tensordot/Reshape:output:05sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/dense_9/Tensordot/MatMul?
&sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_9/Tensordot/Const_2?
,sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_9/Tensordot/concat_1/axis?
'sequential_2/dense_9/Tensordot/concat_1ConcatV20sequential_2/dense_9/Tensordot/GatherV2:output:0/sequential_2/dense_9/Tensordot/Const_2:output:05sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_2/dense_9/Tensordot/concat_1?
sequential_2/dense_9/TensordotReshape/sequential_2/dense_9/Tensordot/MatMul:product:00sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2 
sequential_2/dense_9/Tensordot?
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_2/dense_9/BiasAdd/ReadVariableOp?
sequential_2/dense_9/BiasAddBiasAdd'sequential_2/dense_9/Tensordot:output:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_9/BiasAddw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_9/dropout/Const?
dropout_9/dropout/MulMul%sequential_2/dense_9/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout_9/dropout/Mul?
dropout_9/dropout/ShapeShape%sequential_2/dense_9/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape?
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype020
.dropout_9/dropout/random_uniform/RandomUniform?
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_9/dropout/GreaterEqual/y?
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2 
dropout_9/dropout/GreaterEqual?
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout_9/dropout/Cast?
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout_9/dropout/Mul_1?
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_9/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2
add_1?
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_5/moments/mean/reduction_indices?
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2$
"layer_normalization_5/moments/mean?
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:??????????2,
*layer_normalization_5/moments/StopGradient?
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 21
/layer_normalization_5/moments/SquaredDifference?
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_5/moments/variance/reduction_indices?
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2(
&layer_normalization_5/moments/variance?
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_5/batchnorm/add/y?
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2%
#layer_normalization_5/batchnorm/add?
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2'
%layer_normalization_5/batchnorm/Rsqrt?
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_5/batchnorm/mul/ReadVariableOp?
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_5/batchnorm/mul?
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/mul_1?
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/mul_2?
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_5/batchnorm/ReadVariableOp?
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_5/batchnorm/sub?
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/add_1?
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp.^sequential_2/dense_8/Tensordot/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp.^sequential_2/dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:?????????? ::::::::::::::::2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2^
-sequential_2/dense_8/Tensordot/ReadVariableOp-sequential_2/dense_8/Tensordot/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2^
-sequential_2/dense_9/Tensordot/ReadVariableOp-sequential_2/dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?*
?
B__inference_model_2_layer_call_and_return_conditional_losses_65031
input_4(
$token_and_position_embedding_2_64979(
$token_and_position_embedding_2_64981
transformer_block_2_64984
transformer_block_2_64986
transformer_block_2_64988
transformer_block_2_64990
transformer_block_2_64992
transformer_block_2_64994
transformer_block_2_64996
transformer_block_2_64998
transformer_block_2_65000
transformer_block_2_65002
transformer_block_2_65004
transformer_block_2_65006
transformer_block_2_65008
transformer_block_2_65010
transformer_block_2_65012
transformer_block_2_65014
dense_10_65019
dense_10_65021
dense_11_65025
dense_11_65027
identity?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?6token_and_position_embedding_2/StatefulPartitionedCall?+transformer_block_2/StatefulPartitionedCall?
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_4$token_and_position_embedding_2_64979$token_and_position_embedding_2_64981*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *b
f]R[
Y__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_6444928
6token_and_position_embedding_2/StatefulPartitionedCall?
+transformer_block_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_block_2_64984transformer_block_2_64986transformer_block_2_64988transformer_block_2_64990transformer_block_2_64992transformer_block_2_64994transformer_block_2_64996transformer_block_2_64998transformer_block_2_65000transformer_block_2_65002transformer_block_2_65004transformer_block_2_65006transformer_block_2_65008transformer_block_2_65010transformer_block_2_65012transformer_block_2_65014*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_647402-
+transformer_block_2/StatefulPartitionedCall?
*global_average_pooling1d_2/PartitionedCallPartitionedCall4transformer_block_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_648542,
*global_average_pooling1d_2/PartitionedCall?
dropout_10/PartitionedCallPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_648782
dropout_10/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_10_65019dense_10_65021*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_649022"
 dense_10/StatefulPartitionedCall?
dropout_11/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_649352
dropout_11/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_11_65025dense_11_65027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_649592"
 dense_11/StatefulPartitionedCall?
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall,^transformer_block_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2Z
+transformer_block_2/StatefulPartitionedCall+transformer_block_2/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4
ʄ
?
 __inference__wrapped_model_64235
input_4M
Imodel_2_token_and_position_embedding_2_embedding_5_embedding_lookup_64081M
Imodel_2_token_and_position_embedding_2_embedding_4_embedding_lookup_64087b
^model_2_transformer_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resourceX
Tmodel_2_transformer_block_2_multi_head_attention_2_query_add_readvariableop_resource`
\model_2_transformer_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resourceV
Rmodel_2_transformer_block_2_multi_head_attention_2_key_add_readvariableop_resourceb
^model_2_transformer_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resourceX
Tmodel_2_transformer_block_2_multi_head_attention_2_value_add_readvariableop_resourcem
imodel_2_transformer_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resourcec
_model_2_transformer_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource[
Wmodel_2_transformer_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resourceW
Smodel_2_transformer_block_2_layer_normalization_4_batchnorm_readvariableop_resourceV
Rmodel_2_transformer_block_2_sequential_2_dense_8_tensordot_readvariableop_resourceT
Pmodel_2_transformer_block_2_sequential_2_dense_8_biasadd_readvariableop_resourceV
Rmodel_2_transformer_block_2_sequential_2_dense_9_tensordot_readvariableop_resourceT
Pmodel_2_transformer_block_2_sequential_2_dense_9_biasadd_readvariableop_resource[
Wmodel_2_transformer_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resourceW
Smodel_2_transformer_block_2_layer_normalization_5_batchnorm_readvariableop_resource3
/model_2_dense_10_matmul_readvariableop_resource4
0model_2_dense_10_biasadd_readvariableop_resource3
/model_2_dense_11_matmul_readvariableop_resource4
0model_2_dense_11_biasadd_readvariableop_resource
identity??'model_2/dense_10/BiasAdd/ReadVariableOp?&model_2/dense_10/MatMul/ReadVariableOp?'model_2/dense_11/BiasAdd/ReadVariableOp?&model_2/dense_11/MatMul/ReadVariableOp?Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup?Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup?Jmodel_2/transformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp?Nmodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp?Jmodel_2/transformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp?Nmodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp?Vmodel_2/transformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp?`model_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?Imodel_2/transformer_block_2/multi_head_attention_2/key/add/ReadVariableOp?Smodel_2/transformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?Kmodel_2/transformer_block_2/multi_head_attention_2/query/add/ReadVariableOp?Umodel_2/transformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?Kmodel_2/transformer_block_2/multi_head_attention_2/value/add/ReadVariableOp?Umodel_2/transformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?Gmodel_2/transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp?Imodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp?Gmodel_2/transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp?Imodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp?
,model_2/token_and_position_embedding_2/ShapeShapeinput_4*
T0*
_output_shapes
:2.
,model_2/token_and_position_embedding_2/Shape?
:model_2/token_and_position_embedding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2<
:model_2/token_and_position_embedding_2/strided_slice/stack?
<model_2/token_and_position_embedding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<model_2/token_and_position_embedding_2/strided_slice/stack_1?
<model_2/token_and_position_embedding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_2/token_and_position_embedding_2/strided_slice/stack_2?
4model_2/token_and_position_embedding_2/strided_sliceStridedSlice5model_2/token_and_position_embedding_2/Shape:output:0Cmodel_2/token_and_position_embedding_2/strided_slice/stack:output:0Emodel_2/token_and_position_embedding_2/strided_slice/stack_1:output:0Emodel_2/token_and_position_embedding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4model_2/token_and_position_embedding_2/strided_slice?
2model_2/token_and_position_embedding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_2/token_and_position_embedding_2/range/start?
2model_2/token_and_position_embedding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2model_2/token_and_position_embedding_2/range/delta?
,model_2/token_and_position_embedding_2/rangeRange;model_2/token_and_position_embedding_2/range/start:output:0=model_2/token_and_position_embedding_2/strided_slice:output:0;model_2/token_and_position_embedding_2/range/delta:output:0*#
_output_shapes
:?????????2.
,model_2/token_and_position_embedding_2/range?
Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookupResourceGatherImodel_2_token_and_position_embedding_2_embedding_5_embedding_lookup_640815model_2/token_and_position_embedding_2/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*\
_classR
PNloc:@model_2/token_and_position_embedding_2/embedding_5/embedding_lookup/64081*'
_output_shapes
:????????? *
dtype02E
Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup?
Lmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/IdentityIdentityLmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*\
_classR
PNloc:@model_2/token_and_position_embedding_2/embedding_5/embedding_lookup/64081*'
_output_shapes
:????????? 2N
Lmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity?
Nmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1IdentityUmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2P
Nmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1?
7model_2/token_and_position_embedding_2/embedding_4/CastCastinput_4*

DstT0*

SrcT0*(
_output_shapes
:??????????29
7model_2/token_and_position_embedding_2/embedding_4/Cast?
Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookupResourceGatherImodel_2_token_and_position_embedding_2_embedding_4_embedding_lookup_64087;model_2/token_and_position_embedding_2/embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*\
_classR
PNloc:@model_2/token_and_position_embedding_2/embedding_4/embedding_lookup/64087*,
_output_shapes
:?????????? *
dtype02E
Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup?
Lmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/IdentityIdentityLmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*\
_classR
PNloc:@model_2/token_and_position_embedding_2/embedding_4/embedding_lookup/64087*,
_output_shapes
:?????????? 2N
Lmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity?
Nmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1IdentityUmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2P
Nmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1?
*model_2/token_and_position_embedding_2/addAddV2Wmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1:output:0Wmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2,
*model_2/token_and_position_embedding_2/add?
Umodel_2/transformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOp^model_2_transformer_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02W
Umodel_2/transformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?
Fmodel_2/transformer_block_2/multi_head_attention_2/query/einsum/EinsumEinsum.model_2/token_and_position_embedding_2/add:z:0]model_2/transformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2H
Fmodel_2/transformer_block_2/multi_head_attention_2/query/einsum/Einsum?
Kmodel_2/transformer_block_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpTmodel_2_transformer_block_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

: *
dtype02M
Kmodel_2/transformer_block_2/multi_head_attention_2/query/add/ReadVariableOp?
<model_2/transformer_block_2/multi_head_attention_2/query/addAddV2Omodel_2/transformer_block_2/multi_head_attention_2/query/einsum/Einsum:output:0Smodel_2/transformer_block_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2>
<model_2/transformer_block_2/multi_head_attention_2/query/add?
Smodel_2/transformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp\model_2_transformer_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02U
Smodel_2/transformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?
Dmodel_2/transformer_block_2/multi_head_attention_2/key/einsum/EinsumEinsum.model_2/token_and_position_embedding_2/add:z:0[model_2/transformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2F
Dmodel_2/transformer_block_2/multi_head_attention_2/key/einsum/Einsum?
Imodel_2/transformer_block_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpRmodel_2_transformer_block_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

: *
dtype02K
Imodel_2/transformer_block_2/multi_head_attention_2/key/add/ReadVariableOp?
:model_2/transformer_block_2/multi_head_attention_2/key/addAddV2Mmodel_2/transformer_block_2/multi_head_attention_2/key/einsum/Einsum:output:0Qmodel_2/transformer_block_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2<
:model_2/transformer_block_2/multi_head_attention_2/key/add?
Umodel_2/transformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOp^model_2_transformer_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02W
Umodel_2/transformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?
Fmodel_2/transformer_block_2/multi_head_attention_2/value/einsum/EinsumEinsum.model_2/token_and_position_embedding_2/add:z:0]model_2/transformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2H
Fmodel_2/transformer_block_2/multi_head_attention_2/value/einsum/Einsum?
Kmodel_2/transformer_block_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpTmodel_2_transformer_block_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

: *
dtype02M
Kmodel_2/transformer_block_2/multi_head_attention_2/value/add/ReadVariableOp?
<model_2/transformer_block_2/multi_head_attention_2/value/addAddV2Omodel_2/transformer_block_2/multi_head_attention_2/value/einsum/Einsum:output:0Smodel_2/transformer_block_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2>
<model_2/transformer_block_2/multi_head_attention_2/value/add?
8model_2/transformer_block_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?5>2:
8model_2/transformer_block_2/multi_head_attention_2/Mul/y?
6model_2/transformer_block_2/multi_head_attention_2/MulMul@model_2/transformer_block_2/multi_head_attention_2/query/add:z:0Amodel_2/transformer_block_2/multi_head_attention_2/Mul/y:output:0*
T0*0
_output_shapes
:?????????? 28
6model_2/transformer_block_2/multi_head_attention_2/Mul?
@model_2/transformer_block_2/multi_head_attention_2/einsum/EinsumEinsum>model_2/transformer_block_2/multi_head_attention_2/key/add:z:0:model_2/transformer_block_2/multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2B
@model_2/transformer_block_2/multi_head_attention_2/einsum/Einsum?
Bmodel_2/transformer_block_2/multi_head_attention_2/softmax/SoftmaxSoftmaxImodel_2/transformer_block_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2D
Bmodel_2/transformer_block_2/multi_head_attention_2/softmax/Softmax?
Cmodel_2/transformer_block_2/multi_head_attention_2/dropout/IdentityIdentityLmodel_2/transformer_block_2/multi_head_attention_2/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:???????????2E
Cmodel_2/transformer_block_2/multi_head_attention_2/dropout/Identity?
Bmodel_2/transformer_block_2/multi_head_attention_2/einsum_1/EinsumEinsumLmodel_2/transformer_block_2/multi_head_attention_2/dropout/Identity:output:0@model_2/transformer_block_2/multi_head_attention_2/value/add:z:0*
N*
T0*0
_output_shapes
:?????????? *
equationacbe,aecd->abcd2D
Bmodel_2/transformer_block_2/multi_head_attention_2/einsum_1/Einsum?
`model_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpimodel_2_transformer_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02b
`model_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?
Qmodel_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumKmodel_2/transformer_block_2/multi_head_attention_2/einsum_1/Einsum:output:0hmodel_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????? *
equationabcd,cde->abe2S
Qmodel_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum?
Vmodel_2/transformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOp_model_2_transformer_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02X
Vmodel_2/transformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp?
Gmodel_2/transformer_block_2/multi_head_attention_2/attention_output/addAddV2Zmodel_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0^model_2/transformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2I
Gmodel_2/transformer_block_2/multi_head_attention_2/attention_output/add?
.model_2/transformer_block_2/dropout_8/IdentityIdentityKmodel_2/transformer_block_2/multi_head_attention_2/attention_output/add:z:0*
T0*,
_output_shapes
:?????????? 20
.model_2/transformer_block_2/dropout_8/Identity?
model_2/transformer_block_2/addAddV2.model_2/token_and_position_embedding_2/add:z:07model_2/transformer_block_2/dropout_8/Identity:output:0*
T0*,
_output_shapes
:?????????? 2!
model_2/transformer_block_2/add?
Pmodel_2/transformer_block_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Pmodel_2/transformer_block_2/layer_normalization_4/moments/mean/reduction_indices?
>model_2/transformer_block_2/layer_normalization_4/moments/meanMean#model_2/transformer_block_2/add:z:0Ymodel_2/transformer_block_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2@
>model_2/transformer_block_2/layer_normalization_4/moments/mean?
Fmodel_2/transformer_block_2/layer_normalization_4/moments/StopGradientStopGradientGmodel_2/transformer_block_2/layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:??????????2H
Fmodel_2/transformer_block_2/layer_normalization_4/moments/StopGradient?
Kmodel_2/transformer_block_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifference#model_2/transformer_block_2/add:z:0Omodel_2/transformer_block_2/layer_normalization_4/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 2M
Kmodel_2/transformer_block_2/layer_normalization_4/moments/SquaredDifference?
Tmodel_2/transformer_block_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel_2/transformer_block_2/layer_normalization_4/moments/variance/reduction_indices?
Bmodel_2/transformer_block_2/layer_normalization_4/moments/varianceMeanOmodel_2/transformer_block_2/layer_normalization_4/moments/SquaredDifference:z:0]model_2/transformer_block_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2D
Bmodel_2/transformer_block_2/layer_normalization_4/moments/variance?
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52C
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/add/y?
?model_2/transformer_block_2/layer_normalization_4/batchnorm/addAddV2Kmodel_2/transformer_block_2/layer_normalization_4/moments/variance:output:0Jmodel_2/transformer_block_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2A
?model_2/transformer_block_2/layer_normalization_4/batchnorm/add?
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/RsqrtRsqrtCmodel_2/transformer_block_2/layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2C
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/Rsqrt?
Nmodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpWmodel_2_transformer_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02P
Nmodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp?
?model_2/transformer_block_2/layer_normalization_4/batchnorm/mulMulEmodel_2/transformer_block_2/layer_normalization_4/batchnorm/Rsqrt:y:0Vmodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2A
?model_2/transformer_block_2/layer_normalization_4/batchnorm/mul?
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul_1Mul#model_2/transformer_block_2/add:z:0Cmodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2C
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul_1?
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul_2MulGmodel_2/transformer_block_2/layer_normalization_4/moments/mean:output:0Cmodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2C
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul_2?
Jmodel_2/transformer_block_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpSmodel_2_transformer_block_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02L
Jmodel_2/transformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp?
?model_2/transformer_block_2/layer_normalization_4/batchnorm/subSubRmodel_2/transformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0Emodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2A
?model_2/transformer_block_2/layer_normalization_4/batchnorm/sub?
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/add_1AddV2Emodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul_1:z:0Cmodel_2/transformer_block_2/layer_normalization_4/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2C
Amodel_2/transformer_block_2/layer_normalization_4/batchnorm/add_1?
Imodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOpRmodel_2_transformer_block_2_sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02K
Imodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp?
?model_2/transformer_block_2/sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_2/transformer_block_2/sequential_2/dense_8/Tensordot/axes?
?model_2/transformer_block_2/sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2A
?model_2/transformer_block_2/sequential_2/dense_8/Tensordot/free?
@model_2/transformer_block_2/sequential_2/dense_8/Tensordot/ShapeShapeEmodel_2/transformer_block_2/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:2B
@model_2/transformer_block_2/sequential_2/dense_8/Tensordot/Shape?
Hmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2/axis?
Cmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2GatherV2Imodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Shape:output:0Hmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/free:output:0Qmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2E
Cmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2?
Jmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1/axis?
Emodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1GatherV2Imodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Shape:output:0Hmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/axes:output:0Smodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2G
Emodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1?
@model_2/transformer_block_2/sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@model_2/transformer_block_2/sequential_2/dense_8/Tensordot/Const?
?model_2/transformer_block_2/sequential_2/dense_8/Tensordot/ProdProdLmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Imodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 2A
?model_2/transformer_block_2/sequential_2/dense_8/Tensordot/Prod?
Bmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2D
Bmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Const_1?
Amodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Prod_1ProdNmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1:output:0Kmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2C
Amodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Prod_1?
Fmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat/axis?
Amodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concatConcatV2Hmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/free:output:0Hmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/axes:output:0Omodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Amodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat?
@model_2/transformer_block_2/sequential_2/dense_8/Tensordot/stackPackHmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Prod:output:0Jmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2B
@model_2/transformer_block_2/sequential_2/dense_8/Tensordot/stack?
Dmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/transpose	TransposeEmodel_2/transformer_block_2/layer_normalization_4/batchnorm/add_1:z:0Jmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2F
Dmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/transpose?
Bmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/ReshapeReshapeHmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/transpose:y:0Imodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2D
Bmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Reshape?
Amodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/MatMulMatMulKmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Reshape:output:0Qmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2C
Amodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/MatMul?
Bmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2D
Bmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Const_2?
Hmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat_1/axis?
Cmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat_1ConcatV2Lmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Kmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/Const_2:output:0Qmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
Cmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat_1?
:model_2/transformer_block_2/sequential_2/dense_8/TensordotReshapeKmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/MatMul:product:0Lmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2<
:model_2/transformer_block_2/sequential_2/dense_8/Tensordot?
Gmodel_2/transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOpPmodel_2_transformer_block_2_sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02I
Gmodel_2/transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp?
8model_2/transformer_block_2/sequential_2/dense_8/BiasAddBiasAddCmodel_2/transformer_block_2/sequential_2/dense_8/Tensordot:output:0Omodel_2/transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2:
8model_2/transformer_block_2/sequential_2/dense_8/BiasAdd?
5model_2/transformer_block_2/sequential_2/dense_8/ReluReluAmodel_2/transformer_block_2/sequential_2/dense_8/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 27
5model_2/transformer_block_2/sequential_2/dense_8/Relu?
Imodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOpRmodel_2_transformer_block_2_sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02K
Imodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp?
?model_2/transformer_block_2/sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_2/transformer_block_2/sequential_2/dense_9/Tensordot/axes?
?model_2/transformer_block_2/sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2A
?model_2/transformer_block_2/sequential_2/dense_9/Tensordot/free?
@model_2/transformer_block_2/sequential_2/dense_9/Tensordot/ShapeShapeCmodel_2/transformer_block_2/sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:2B
@model_2/transformer_block_2/sequential_2/dense_9/Tensordot/Shape?
Hmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2/axis?
Cmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2GatherV2Imodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Shape:output:0Hmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/free:output:0Qmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2E
Cmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2?
Jmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1/axis?
Emodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1GatherV2Imodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Shape:output:0Hmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/axes:output:0Smodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2G
Emodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1?
@model_2/transformer_block_2/sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@model_2/transformer_block_2/sequential_2/dense_9/Tensordot/Const?
?model_2/transformer_block_2/sequential_2/dense_9/Tensordot/ProdProdLmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Imodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2A
?model_2/transformer_block_2/sequential_2/dense_9/Tensordot/Prod?
Bmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2D
Bmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Const_1?
Amodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Prod_1ProdNmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1:output:0Kmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2C
Amodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Prod_1?
Fmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat/axis?
Amodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concatConcatV2Hmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/free:output:0Hmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/axes:output:0Omodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Amodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat?
@model_2/transformer_block_2/sequential_2/dense_9/Tensordot/stackPackHmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Prod:output:0Jmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2B
@model_2/transformer_block_2/sequential_2/dense_9/Tensordot/stack?
Dmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/transpose	TransposeCmodel_2/transformer_block_2/sequential_2/dense_8/Relu:activations:0Jmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2F
Dmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/transpose?
Bmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/ReshapeReshapeHmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/transpose:y:0Imodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2D
Bmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Reshape?
Amodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/MatMulMatMulKmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Reshape:output:0Qmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2C
Amodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/MatMul?
Bmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2D
Bmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Const_2?
Hmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat_1/axis?
Cmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat_1ConcatV2Lmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Kmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/Const_2:output:0Qmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
Cmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat_1?
:model_2/transformer_block_2/sequential_2/dense_9/TensordotReshapeKmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/MatMul:product:0Lmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2<
:model_2/transformer_block_2/sequential_2/dense_9/Tensordot?
Gmodel_2/transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOpPmodel_2_transformer_block_2_sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02I
Gmodel_2/transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp?
8model_2/transformer_block_2/sequential_2/dense_9/BiasAddBiasAddCmodel_2/transformer_block_2/sequential_2/dense_9/Tensordot:output:0Omodel_2/transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2:
8model_2/transformer_block_2/sequential_2/dense_9/BiasAdd?
.model_2/transformer_block_2/dropout_9/IdentityIdentityAmodel_2/transformer_block_2/sequential_2/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 20
.model_2/transformer_block_2/dropout_9/Identity?
!model_2/transformer_block_2/add_1AddV2Emodel_2/transformer_block_2/layer_normalization_4/batchnorm/add_1:z:07model_2/transformer_block_2/dropout_9/Identity:output:0*
T0*,
_output_shapes
:?????????? 2#
!model_2/transformer_block_2/add_1?
Pmodel_2/transformer_block_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Pmodel_2/transformer_block_2/layer_normalization_5/moments/mean/reduction_indices?
>model_2/transformer_block_2/layer_normalization_5/moments/meanMean%model_2/transformer_block_2/add_1:z:0Ymodel_2/transformer_block_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2@
>model_2/transformer_block_2/layer_normalization_5/moments/mean?
Fmodel_2/transformer_block_2/layer_normalization_5/moments/StopGradientStopGradientGmodel_2/transformer_block_2/layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:??????????2H
Fmodel_2/transformer_block_2/layer_normalization_5/moments/StopGradient?
Kmodel_2/transformer_block_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifference%model_2/transformer_block_2/add_1:z:0Omodel_2/transformer_block_2/layer_normalization_5/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 2M
Kmodel_2/transformer_block_2/layer_normalization_5/moments/SquaredDifference?
Tmodel_2/transformer_block_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel_2/transformer_block_2/layer_normalization_5/moments/variance/reduction_indices?
Bmodel_2/transformer_block_2/layer_normalization_5/moments/varianceMeanOmodel_2/transformer_block_2/layer_normalization_5/moments/SquaredDifference:z:0]model_2/transformer_block_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2D
Bmodel_2/transformer_block_2/layer_normalization_5/moments/variance?
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52C
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/add/y?
?model_2/transformer_block_2/layer_normalization_5/batchnorm/addAddV2Kmodel_2/transformer_block_2/layer_normalization_5/moments/variance:output:0Jmodel_2/transformer_block_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2A
?model_2/transformer_block_2/layer_normalization_5/batchnorm/add?
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/RsqrtRsqrtCmodel_2/transformer_block_2/layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2C
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/Rsqrt?
Nmodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpWmodel_2_transformer_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02P
Nmodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp?
?model_2/transformer_block_2/layer_normalization_5/batchnorm/mulMulEmodel_2/transformer_block_2/layer_normalization_5/batchnorm/Rsqrt:y:0Vmodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2A
?model_2/transformer_block_2/layer_normalization_5/batchnorm/mul?
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul_1Mul%model_2/transformer_block_2/add_1:z:0Cmodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2C
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul_1?
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul_2MulGmodel_2/transformer_block_2/layer_normalization_5/moments/mean:output:0Cmodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2C
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul_2?
Jmodel_2/transformer_block_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpSmodel_2_transformer_block_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02L
Jmodel_2/transformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp?
?model_2/transformer_block_2/layer_normalization_5/batchnorm/subSubRmodel_2/transformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0Emodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2A
?model_2/transformer_block_2/layer_normalization_5/batchnorm/sub?
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/add_1AddV2Emodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul_1:z:0Cmodel_2/transformer_block_2/layer_normalization_5/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2C
Amodel_2/transformer_block_2/layer_normalization_5/batchnorm/add_1?
9model_2/global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2;
9model_2/global_average_pooling1d_2/Mean/reduction_indices?
'model_2/global_average_pooling1d_2/MeanMeanEmodel_2/transformer_block_2/layer_normalization_5/batchnorm/add_1:z:0Bmodel_2/global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2)
'model_2/global_average_pooling1d_2/Mean?
model_2/dropout_10/IdentityIdentity0model_2/global_average_pooling1d_2/Mean:output:0*
T0*'
_output_shapes
:????????? 2
model_2/dropout_10/Identity?
&model_2/dense_10/MatMul/ReadVariableOpReadVariableOp/model_2_dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&model_2/dense_10/MatMul/ReadVariableOp?
model_2/dense_10/MatMulMatMul$model_2/dropout_10/Identity:output:0.model_2/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_2/dense_10/MatMul?
'model_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_2/dense_10/BiasAdd/ReadVariableOp?
model_2/dense_10/BiasAddBiasAdd!model_2/dense_10/MatMul:product:0/model_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_2/dense_10/BiasAdd?
model_2/dense_10/ReluRelu!model_2/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_2/dense_10/Relu?
model_2/dropout_11/IdentityIdentity#model_2/dense_10/Relu:activations:0*
T0*'
_output_shapes
:?????????2
model_2/dropout_11/Identity?
&model_2/dense_11/MatMul/ReadVariableOpReadVariableOp/model_2_dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&model_2/dense_11/MatMul/ReadVariableOp?
model_2/dense_11/MatMulMatMul$model_2/dropout_11/Identity:output:0.model_2/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_2/dense_11/MatMul?
'model_2/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_2/dense_11/BiasAdd/ReadVariableOp?
model_2/dense_11/BiasAddBiasAdd!model_2/dense_11/MatMul:product:0/model_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_2/dense_11/BiasAdd?
model_2/dense_11/SigmoidSigmoid!model_2/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_2/dense_11/Sigmoid?
IdentityIdentitymodel_2/dense_11/Sigmoid:y:0(^model_2/dense_10/BiasAdd/ReadVariableOp'^model_2/dense_10/MatMul/ReadVariableOp(^model_2/dense_11/BiasAdd/ReadVariableOp'^model_2/dense_11/MatMul/ReadVariableOpD^model_2/token_and_position_embedding_2/embedding_4/embedding_lookupD^model_2/token_and_position_embedding_2/embedding_5/embedding_lookupK^model_2/transformer_block_2/layer_normalization_4/batchnorm/ReadVariableOpO^model_2/transformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpK^model_2/transformer_block_2/layer_normalization_5/batchnorm/ReadVariableOpO^model_2/transformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpW^model_2/transformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpa^model_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpJ^model_2/transformer_block_2/multi_head_attention_2/key/add/ReadVariableOpT^model_2/transformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpL^model_2/transformer_block_2/multi_head_attention_2/query/add/ReadVariableOpV^model_2/transformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpL^model_2/transformer_block_2/multi_head_attention_2/value/add/ReadVariableOpV^model_2/transformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpH^model_2/transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOpJ^model_2/transformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOpH^model_2/transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOpJ^model_2/transformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2R
'model_2/dense_10/BiasAdd/ReadVariableOp'model_2/dense_10/BiasAdd/ReadVariableOp2P
&model_2/dense_10/MatMul/ReadVariableOp&model_2/dense_10/MatMul/ReadVariableOp2R
'model_2/dense_11/BiasAdd/ReadVariableOp'model_2/dense_11/BiasAdd/ReadVariableOp2P
&model_2/dense_11/MatMul/ReadVariableOp&model_2/dense_11/MatMul/ReadVariableOp2?
Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookupCmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup2?
Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookupCmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup2?
Jmodel_2/transformer_block_2/layer_normalization_4/batchnorm/ReadVariableOpJmodel_2/transformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp2?
Nmodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpNmodel_2/transformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2?
Jmodel_2/transformer_block_2/layer_normalization_5/batchnorm/ReadVariableOpJmodel_2/transformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp2?
Nmodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpNmodel_2/transformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2?
Vmodel_2/transformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpVmodel_2/transformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp2?
`model_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp`model_2/transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2?
Imodel_2/transformer_block_2/multi_head_attention_2/key/add/ReadVariableOpImodel_2/transformer_block_2/multi_head_attention_2/key/add/ReadVariableOp2?
Smodel_2/transformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpSmodel_2/transformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2?
Kmodel_2/transformer_block_2/multi_head_attention_2/query/add/ReadVariableOpKmodel_2/transformer_block_2/multi_head_attention_2/query/add/ReadVariableOp2?
Umodel_2/transformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpUmodel_2/transformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2?
Kmodel_2/transformer_block_2/multi_head_attention_2/value/add/ReadVariableOpKmodel_2/transformer_block_2/multi_head_attention_2/value/add/ReadVariableOp2?
Umodel_2/transformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpUmodel_2/transformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2?
Gmodel_2/transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOpGmodel_2/transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp2?
Imodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOpImodel_2/transformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp2?
Gmodel_2/transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOpGmodel_2/transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp2?
Imodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOpImodel_2/transformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4
?
?
,__inference_sequential_2_layer_call_fn_66400

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_643912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_66150

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_10_layer_call_and_return_conditional_losses_64873

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_64364

inputs
dense_8_64353
dense_8_64355
dense_9_64358
dense_9_64360
identity??dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCallinputsdense_8_64353dense_8_64355*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_642702!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_64358dense_9_64360*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_643162!
dense_9/StatefulPartitionedCall?
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?H
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_66317

inputs-
)dense_8_tensordot_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource-
)dense_9_tensordot_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identity??dense_8/BiasAdd/ReadVariableOp? dense_8/Tensordot/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp? dense_9/Tensordot/ReadVariableOp?
 dense_8/Tensordot/ReadVariableOpReadVariableOp)dense_8_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_8/Tensordot/ReadVariableOpz
dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_8/Tensordot/axes?
dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_8/Tensordot/freeh
dense_8/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_8/Tensordot/Shape?
dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_8/Tensordot/GatherV2/axis?
dense_8/Tensordot/GatherV2GatherV2 dense_8/Tensordot/Shape:output:0dense_8/Tensordot/free:output:0(dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_8/Tensordot/GatherV2?
!dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_8/Tensordot/GatherV2_1/axis?
dense_8/Tensordot/GatherV2_1GatherV2 dense_8/Tensordot/Shape:output:0dense_8/Tensordot/axes:output:0*dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_8/Tensordot/GatherV2_1|
dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_8/Tensordot/Const?
dense_8/Tensordot/ProdProd#dense_8/Tensordot/GatherV2:output:0 dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_8/Tensordot/Prod?
dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_8/Tensordot/Const_1?
dense_8/Tensordot/Prod_1Prod%dense_8/Tensordot/GatherV2_1:output:0"dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_8/Tensordot/Prod_1?
dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_8/Tensordot/concat/axis?
dense_8/Tensordot/concatConcatV2dense_8/Tensordot/free:output:0dense_8/Tensordot/axes:output:0&dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_8/Tensordot/concat?
dense_8/Tensordot/stackPackdense_8/Tensordot/Prod:output:0!dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_8/Tensordot/stack?
dense_8/Tensordot/transpose	Transposeinputs!dense_8/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2
dense_8/Tensordot/transpose?
dense_8/Tensordot/ReshapeReshapedense_8/Tensordot/transpose:y:0 dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_8/Tensordot/Reshape?
dense_8/Tensordot/MatMulMatMul"dense_8/Tensordot/Reshape:output:0(dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_8/Tensordot/MatMul?
dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_8/Tensordot/Const_2?
dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_8/Tensordot/concat_1/axis?
dense_8/Tensordot/concat_1ConcatV2#dense_8/Tensordot/GatherV2:output:0"dense_8/Tensordot/Const_2:output:0(dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_8/Tensordot/concat_1?
dense_8/TensordotReshape"dense_8/Tensordot/MatMul:product:0#dense_8/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2
dense_8/Tensordot?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/Tensordot:output:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
dense_8/BiasAddu
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
dense_8/Relu?
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_9/Tensordot/ReadVariableOpz
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_9/Tensordot/axes?
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_9/Tensordot/free|
dense_9/Tensordot/ShapeShapedense_8/Relu:activations:0*
T0*
_output_shapes
:2
dense_9/Tensordot/Shape?
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/GatherV2/axis?
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2?
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_9/Tensordot/GatherV2_1/axis?
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2_1|
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const?
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod?
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const_1?
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod_1?
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_9/Tensordot/concat/axis?
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concat?
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/stack?
dense_9/Tensordot/transpose	Transposedense_8/Relu:activations:0!dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2
dense_9/Tensordot/transpose?
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_9/Tensordot/Reshape?
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_9/Tensordot/MatMul?
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const_2?
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/concat_1/axis?
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concat_1?
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2
dense_9/Tensordot?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
dense_9/BiasAdd?
IdentityIdentitydense_9/BiasAdd:output:0^dense_8/BiasAdd/ReadVariableOp!^dense_8/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2D
 dense_8/Tensordot/ReadVariableOp dense_8/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
B__inference_model_2_layer_call_and_return_conditional_losses_65499

inputsE
Atoken_and_position_embedding_2_embedding_5_embedding_lookup_65310E
Atoken_and_position_embedding_2_embedding_4_embedding_lookup_65316Z
Vtransformer_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_2_multi_head_attention_2_query_add_readvariableop_resourceX
Ttransformer_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_2_multi_head_attention_2_key_add_readvariableop_resourceZ
Vtransformer_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_2_multi_head_attention_2_value_add_readvariableop_resourcee
atransformer_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_2_multi_head_attention_2_attention_output_add_readvariableop_resourceS
Otransformer_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_2_layer_normalization_4_batchnorm_readvariableop_resourceN
Jtransformer_block_2_sequential_2_dense_8_tensordot_readvariableop_resourceL
Htransformer_block_2_sequential_2_dense_8_biasadd_readvariableop_resourceN
Jtransformer_block_2_sequential_2_dense_9_tensordot_readvariableop_resourceL
Htransformer_block_2_sequential_2_dense_9_biasadd_readvariableop_resourceS
Otransformer_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_2_layer_normalization_5_batchnorm_readvariableop_resource+
'dense_10_matmul_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?;token_and_position_embedding_2/embedding_4/embedding_lookup?;token_and_position_embedding_2/embedding_5/embedding_lookup?Btransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp?Ftransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp?Btransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp?Ftransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp?Ntransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp?Xtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?Atransformer_block_2/multi_head_attention_2/key/add/ReadVariableOp?Ktransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?Ctransformer_block_2/multi_head_attention_2/query/add/ReadVariableOp?Mtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?Ctransformer_block_2/multi_head_attention_2/value/add/ReadVariableOp?Mtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp??transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp?Atransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp??transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp?Atransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp?
$token_and_position_embedding_2/ShapeShapeinputs*
T0*
_output_shapes
:2&
$token_and_position_embedding_2/Shape?
2token_and_position_embedding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????24
2token_and_position_embedding_2/strided_slice/stack?
4token_and_position_embedding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_2/strided_slice/stack_1?
4token_and_position_embedding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_2/strided_slice/stack_2?
,token_and_position_embedding_2/strided_sliceStridedSlice-token_and_position_embedding_2/Shape:output:0;token_and_position_embedding_2/strided_slice/stack:output:0=token_and_position_embedding_2/strided_slice/stack_1:output:0=token_and_position_embedding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_2/strided_slice?
*token_and_position_embedding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_2/range/start?
*token_and_position_embedding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_2/range/delta?
$token_and_position_embedding_2/rangeRange3token_and_position_embedding_2/range/start:output:05token_and_position_embedding_2/strided_slice:output:03token_and_position_embedding_2/range/delta:output:0*#
_output_shapes
:?????????2&
$token_and_position_embedding_2/range?
;token_and_position_embedding_2/embedding_5/embedding_lookupResourceGatherAtoken_and_position_embedding_2_embedding_5_embedding_lookup_65310-token_and_position_embedding_2/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/65310*'
_output_shapes
:????????? *
dtype02=
;token_and_position_embedding_2/embedding_5/embedding_lookup?
Dtoken_and_position_embedding_2/embedding_5/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_5/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/65310*'
_output_shapes
:????????? 2F
Dtoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity?
Ftoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2H
Ftoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1?
/token_and_position_embedding_2/embedding_4/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????21
/token_and_position_embedding_2/embedding_4/Cast?
;token_and_position_embedding_2/embedding_4/embedding_lookupResourceGatherAtoken_and_position_embedding_2_embedding_4_embedding_lookup_653163token_and_position_embedding_2/embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/65316*,
_output_shapes
:?????????? *
dtype02=
;token_and_position_embedding_2/embedding_4/embedding_lookup?
Dtoken_and_position_embedding_2/embedding_4/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/65316*,
_output_shapes
:?????????? 2F
Dtoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity?
Ftoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2H
Ftoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1?
"token_and_position_embedding_2/addAddV2Otoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2$
"token_and_position_embedding_2/add?
Mtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?
>transformer_block_2/multi_head_attention_2/query/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Utransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2@
>transformer_block_2/multi_head_attention_2/query/einsum/Einsum?
Ctransformer_block_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpLtransformer_block_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_2/multi_head_attention_2/query/add/ReadVariableOp?
4transformer_block_2/multi_head_attention_2/query/addAddV2Gtransformer_block_2/multi_head_attention_2/query/einsum/Einsum:output:0Ktransformer_block_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 26
4transformer_block_2/multi_head_attention_2/query/add?
Ktransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02M
Ktransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?
<transformer_block_2/multi_head_attention_2/key/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Stransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2>
<transformer_block_2/multi_head_attention_2/key/einsum/Einsum?
Atransformer_block_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpJtransformer_block_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

: *
dtype02C
Atransformer_block_2/multi_head_attention_2/key/add/ReadVariableOp?
2transformer_block_2/multi_head_attention_2/key/addAddV2Etransformer_block_2/multi_head_attention_2/key/einsum/Einsum:output:0Itransformer_block_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 24
2transformer_block_2/multi_head_attention_2/key/add?
Mtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?
>transformer_block_2/multi_head_attention_2/value/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Utransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2@
>transformer_block_2/multi_head_attention_2/value/einsum/Einsum?
Ctransformer_block_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpLtransformer_block_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_2/multi_head_attention_2/value/add/ReadVariableOp?
4transformer_block_2/multi_head_attention_2/value/addAddV2Gtransformer_block_2/multi_head_attention_2/value/einsum/Einsum:output:0Ktransformer_block_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 26
4transformer_block_2/multi_head_attention_2/value/add?
0transformer_block_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?5>22
0transformer_block_2/multi_head_attention_2/Mul/y?
.transformer_block_2/multi_head_attention_2/MulMul8transformer_block_2/multi_head_attention_2/query/add:z:09transformer_block_2/multi_head_attention_2/Mul/y:output:0*
T0*0
_output_shapes
:?????????? 20
.transformer_block_2/multi_head_attention_2/Mul?
8transformer_block_2/multi_head_attention_2/einsum/EinsumEinsum6transformer_block_2/multi_head_attention_2/key/add:z:02transformer_block_2/multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2:
8transformer_block_2/multi_head_attention_2/einsum/Einsum?
:transformer_block_2/multi_head_attention_2/softmax/SoftmaxSoftmaxAtransformer_block_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2<
:transformer_block_2/multi_head_attention_2/softmax/Softmax?
@transformer_block_2/multi_head_attention_2/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2B
@transformer_block_2/multi_head_attention_2/dropout/dropout/Const?
>transformer_block_2/multi_head_attention_2/dropout/dropout/MulMulDtransformer_block_2/multi_head_attention_2/softmax/Softmax:softmax:0Itransformer_block_2/multi_head_attention_2/dropout/dropout/Const:output:0*
T0*1
_output_shapes
:???????????2@
>transformer_block_2/multi_head_attention_2/dropout/dropout/Mul?
@transformer_block_2/multi_head_attention_2/dropout/dropout/ShapeShapeDtransformer_block_2/multi_head_attention_2/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2B
@transformer_block_2/multi_head_attention_2/dropout/dropout/Shape?
Wtransformer_block_2/multi_head_attention_2/dropout/dropout/random_uniform/RandomUniformRandomUniformItransformer_block_2/multi_head_attention_2/dropout/dropout/Shape:output:0*
T0*1
_output_shapes
:???????????*
dtype02Y
Wtransformer_block_2/multi_head_attention_2/dropout/dropout/random_uniform/RandomUniform?
Itransformer_block_2/multi_head_attention_2/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Itransformer_block_2/multi_head_attention_2/dropout/dropout/GreaterEqual/y?
Gtransformer_block_2/multi_head_attention_2/dropout/dropout/GreaterEqualGreaterEqual`transformer_block_2/multi_head_attention_2/dropout/dropout/random_uniform/RandomUniform:output:0Rtransformer_block_2/multi_head_attention_2/dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:???????????2I
Gtransformer_block_2/multi_head_attention_2/dropout/dropout/GreaterEqual?
?transformer_block_2/multi_head_attention_2/dropout/dropout/CastCastKtransformer_block_2/multi_head_attention_2/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:???????????2A
?transformer_block_2/multi_head_attention_2/dropout/dropout/Cast?
@transformer_block_2/multi_head_attention_2/dropout/dropout/Mul_1MulBtransformer_block_2/multi_head_attention_2/dropout/dropout/Mul:z:0Ctransformer_block_2/multi_head_attention_2/dropout/dropout/Cast:y:0*
T0*1
_output_shapes
:???????????2B
@transformer_block_2/multi_head_attention_2/dropout/dropout/Mul_1?
:transformer_block_2/multi_head_attention_2/einsum_1/EinsumEinsumDtransformer_block_2/multi_head_attention_2/dropout/dropout/Mul_1:z:08transformer_block_2/multi_head_attention_2/value/add:z:0*
N*
T0*0
_output_shapes
:?????????? *
equationacbe,aecd->abcd2<
:transformer_block_2/multi_head_attention_2/einsum_1/Einsum?
Xtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02Z
Xtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?
Itransformer_block_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumCtransformer_block_2/multi_head_attention_2/einsum_1/Einsum:output:0`transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????? *
equationabcd,cde->abe2K
Itransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum?
Ntransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02P
Ntransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp?
?transformer_block_2/multi_head_attention_2/attention_output/addAddV2Rtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0Vtransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2A
?transformer_block_2/multi_head_attention_2/attention_output/add?
+transformer_block_2/dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2-
+transformer_block_2/dropout_8/dropout/Const?
)transformer_block_2/dropout_8/dropout/MulMulCtransformer_block_2/multi_head_attention_2/attention_output/add:z:04transformer_block_2/dropout_8/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2+
)transformer_block_2/dropout_8/dropout/Mul?
+transformer_block_2/dropout_8/dropout/ShapeShapeCtransformer_block_2/multi_head_attention_2/attention_output/add:z:0*
T0*
_output_shapes
:2-
+transformer_block_2/dropout_8/dropout/Shape?
Btransformer_block_2/dropout_8/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_2/dropout_8/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype02D
Btransformer_block_2/dropout_8/dropout/random_uniform/RandomUniform?
4transformer_block_2/dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=26
4transformer_block_2/dropout_8/dropout/GreaterEqual/y?
2transformer_block_2/dropout_8/dropout/GreaterEqualGreaterEqualKtransformer_block_2/dropout_8/dropout/random_uniform/RandomUniform:output:0=transformer_block_2/dropout_8/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 24
2transformer_block_2/dropout_8/dropout/GreaterEqual?
*transformer_block_2/dropout_8/dropout/CastCast6transformer_block_2/dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2,
*transformer_block_2/dropout_8/dropout/Cast?
+transformer_block_2/dropout_8/dropout/Mul_1Mul-transformer_block_2/dropout_8/dropout/Mul:z:0.transformer_block_2/dropout_8/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2-
+transformer_block_2/dropout_8/dropout/Mul_1?
transformer_block_2/addAddV2&token_and_position_embedding_2/add:z:0/transformer_block_2/dropout_8/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2
transformer_block_2/add?
Htransformer_block_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_2/layer_normalization_4/moments/mean/reduction_indices?
6transformer_block_2/layer_normalization_4/moments/meanMeantransformer_block_2/add:z:0Qtransformer_block_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(28
6transformer_block_2/layer_normalization_4/moments/mean?
>transformer_block_2/layer_normalization_4/moments/StopGradientStopGradient?transformer_block_2/layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:??????????2@
>transformer_block_2/layer_normalization_4/moments/StopGradient?
Ctransformer_block_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifferencetransformer_block_2/add:z:0Gtransformer_block_2/layer_normalization_4/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 2E
Ctransformer_block_2/layer_normalization_4/moments/SquaredDifference?
Ltransformer_block_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_2/layer_normalization_4/moments/variance/reduction_indices?
:transformer_block_2/layer_normalization_4/moments/varianceMeanGtransformer_block_2/layer_normalization_4/moments/SquaredDifference:z:0Utransformer_block_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2<
:transformer_block_2/layer_normalization_4/moments/variance?
9transformer_block_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52;
9transformer_block_2/layer_normalization_4/batchnorm/add/y?
7transformer_block_2/layer_normalization_4/batchnorm/addAddV2Ctransformer_block_2/layer_normalization_4/moments/variance:output:0Btransformer_block_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????29
7transformer_block_2/layer_normalization_4/batchnorm/add?
9transformer_block_2/layer_normalization_4/batchnorm/RsqrtRsqrt;transformer_block_2/layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2;
9transformer_block_2/layer_normalization_4/batchnorm/Rsqrt?
Ftransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp?
7transformer_block_2/layer_normalization_4/batchnorm/mulMul=transformer_block_2/layer_normalization_4/batchnorm/Rsqrt:y:0Ntransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 29
7transformer_block_2/layer_normalization_4/batchnorm/mul?
9transformer_block_2/layer_normalization_4/batchnorm/mul_1Multransformer_block_2/add:z:0;transformer_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_4/batchnorm/mul_1?
9transformer_block_2/layer_normalization_4/batchnorm/mul_2Mul?transformer_block_2/layer_normalization_4/moments/mean:output:0;transformer_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_4/batchnorm/mul_2?
Btransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp?
7transformer_block_2/layer_normalization_4/batchnorm/subSubJtransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0=transformer_block_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 29
7transformer_block_2/layer_normalization_4/batchnorm/sub?
9transformer_block_2/layer_normalization_4/batchnorm/add_1AddV2=transformer_block_2/layer_normalization_4/batchnorm/mul_1:z:0;transformer_block_2/layer_normalization_4/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_4/batchnorm/add_1?
Atransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_2_sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02C
Atransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp?
7transformer_block_2/sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_2/sequential_2/dense_8/Tensordot/axes?
7transformer_block_2/sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_2/sequential_2/dense_8/Tensordot/free?
8transformer_block_2/sequential_2/dense_8/Tensordot/ShapeShape=transformer_block_2/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_2/sequential_2/dense_8/Tensordot/Shape?
@transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2/axis?
;transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2GatherV2Atransformer_block_2/sequential_2/dense_8/Tensordot/Shape:output:0@transformer_block_2/sequential_2/dense_8/Tensordot/free:output:0Itransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2?
Btransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1/axis?
=transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1GatherV2Atransformer_block_2/sequential_2/dense_8/Tensordot/Shape:output:0@transformer_block_2/sequential_2/dense_8/Tensordot/axes:output:0Ktransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1?
8transformer_block_2/sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_2/sequential_2/dense_8/Tensordot/Const?
7transformer_block_2/sequential_2/dense_8/Tensordot/ProdProdDtransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Atransformer_block_2/sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_2/sequential_2/dense_8/Tensordot/Prod?
:transformer_block_2/sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_2/sequential_2/dense_8/Tensordot/Const_1?
9transformer_block_2/sequential_2/dense_8/Tensordot/Prod_1ProdFtransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2_1:output:0Ctransformer_block_2/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_2/sequential_2/dense_8/Tensordot/Prod_1?
>transformer_block_2/sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_2/sequential_2/dense_8/Tensordot/concat/axis?
9transformer_block_2/sequential_2/dense_8/Tensordot/concatConcatV2@transformer_block_2/sequential_2/dense_8/Tensordot/free:output:0@transformer_block_2/sequential_2/dense_8/Tensordot/axes:output:0Gtransformer_block_2/sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_2/sequential_2/dense_8/Tensordot/concat?
8transformer_block_2/sequential_2/dense_8/Tensordot/stackPack@transformer_block_2/sequential_2/dense_8/Tensordot/Prod:output:0Btransformer_block_2/sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_2/sequential_2/dense_8/Tensordot/stack?
<transformer_block_2/sequential_2/dense_8/Tensordot/transpose	Transpose=transformer_block_2/layer_normalization_4/batchnorm/add_1:z:0Btransformer_block_2/sequential_2/dense_8/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2>
<transformer_block_2/sequential_2/dense_8/Tensordot/transpose?
:transformer_block_2/sequential_2/dense_8/Tensordot/ReshapeReshape@transformer_block_2/sequential_2/dense_8/Tensordot/transpose:y:0Atransformer_block_2/sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2<
:transformer_block_2/sequential_2/dense_8/Tensordot/Reshape?
9transformer_block_2/sequential_2/dense_8/Tensordot/MatMulMatMulCtransformer_block_2/sequential_2/dense_8/Tensordot/Reshape:output:0Itransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2;
9transformer_block_2/sequential_2/dense_8/Tensordot/MatMul?
:transformer_block_2/sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_2/sequential_2/dense_8/Tensordot/Const_2?
@transformer_block_2/sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_2/sequential_2/dense_8/Tensordot/concat_1/axis?
;transformer_block_2/sequential_2/dense_8/Tensordot/concat_1ConcatV2Dtransformer_block_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Ctransformer_block_2/sequential_2/dense_8/Tensordot/Const_2:output:0Itransformer_block_2/sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_2/sequential_2/dense_8/Tensordot/concat_1?
2transformer_block_2/sequential_2/dense_8/TensordotReshapeCtransformer_block_2/sequential_2/dense_8/Tensordot/MatMul:product:0Dtransformer_block_2/sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 24
2transformer_block_2/sequential_2/dense_8/Tensordot?
?transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_2_sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp?
0transformer_block_2/sequential_2/dense_8/BiasAddBiasAdd;transformer_block_2/sequential_2/dense_8/Tensordot:output:0Gtransformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 22
0transformer_block_2/sequential_2/dense_8/BiasAdd?
-transformer_block_2/sequential_2/dense_8/ReluRelu9transformer_block_2/sequential_2/dense_8/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2/
-transformer_block_2/sequential_2/dense_8/Relu?
Atransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_2_sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02C
Atransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp?
7transformer_block_2/sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_2/sequential_2/dense_9/Tensordot/axes?
7transformer_block_2/sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_2/sequential_2/dense_9/Tensordot/free?
8transformer_block_2/sequential_2/dense_9/Tensordot/ShapeShape;transformer_block_2/sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:2:
8transformer_block_2/sequential_2/dense_9/Tensordot/Shape?
@transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2/axis?
;transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2GatherV2Atransformer_block_2/sequential_2/dense_9/Tensordot/Shape:output:0@transformer_block_2/sequential_2/dense_9/Tensordot/free:output:0Itransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2?
Btransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1/axis?
=transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1GatherV2Atransformer_block_2/sequential_2/dense_9/Tensordot/Shape:output:0@transformer_block_2/sequential_2/dense_9/Tensordot/axes:output:0Ktransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1?
8transformer_block_2/sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_2/sequential_2/dense_9/Tensordot/Const?
7transformer_block_2/sequential_2/dense_9/Tensordot/ProdProdDtransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Atransformer_block_2/sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_2/sequential_2/dense_9/Tensordot/Prod?
:transformer_block_2/sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_2/sequential_2/dense_9/Tensordot/Const_1?
9transformer_block_2/sequential_2/dense_9/Tensordot/Prod_1ProdFtransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2_1:output:0Ctransformer_block_2/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_2/sequential_2/dense_9/Tensordot/Prod_1?
>transformer_block_2/sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_2/sequential_2/dense_9/Tensordot/concat/axis?
9transformer_block_2/sequential_2/dense_9/Tensordot/concatConcatV2@transformer_block_2/sequential_2/dense_9/Tensordot/free:output:0@transformer_block_2/sequential_2/dense_9/Tensordot/axes:output:0Gtransformer_block_2/sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_2/sequential_2/dense_9/Tensordot/concat?
8transformer_block_2/sequential_2/dense_9/Tensordot/stackPack@transformer_block_2/sequential_2/dense_9/Tensordot/Prod:output:0Btransformer_block_2/sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_2/sequential_2/dense_9/Tensordot/stack?
<transformer_block_2/sequential_2/dense_9/Tensordot/transpose	Transpose;transformer_block_2/sequential_2/dense_8/Relu:activations:0Btransformer_block_2/sequential_2/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2>
<transformer_block_2/sequential_2/dense_9/Tensordot/transpose?
:transformer_block_2/sequential_2/dense_9/Tensordot/ReshapeReshape@transformer_block_2/sequential_2/dense_9/Tensordot/transpose:y:0Atransformer_block_2/sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2<
:transformer_block_2/sequential_2/dense_9/Tensordot/Reshape?
9transformer_block_2/sequential_2/dense_9/Tensordot/MatMulMatMulCtransformer_block_2/sequential_2/dense_9/Tensordot/Reshape:output:0Itransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2;
9transformer_block_2/sequential_2/dense_9/Tensordot/MatMul?
:transformer_block_2/sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_2/sequential_2/dense_9/Tensordot/Const_2?
@transformer_block_2/sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_2/sequential_2/dense_9/Tensordot/concat_1/axis?
;transformer_block_2/sequential_2/dense_9/Tensordot/concat_1ConcatV2Dtransformer_block_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Ctransformer_block_2/sequential_2/dense_9/Tensordot/Const_2:output:0Itransformer_block_2/sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_2/sequential_2/dense_9/Tensordot/concat_1?
2transformer_block_2/sequential_2/dense_9/TensordotReshapeCtransformer_block_2/sequential_2/dense_9/Tensordot/MatMul:product:0Dtransformer_block_2/sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 24
2transformer_block_2/sequential_2/dense_9/Tensordot?
?transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_2_sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp?
0transformer_block_2/sequential_2/dense_9/BiasAddBiasAdd;transformer_block_2/sequential_2/dense_9/Tensordot:output:0Gtransformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 22
0transformer_block_2/sequential_2/dense_9/BiasAdd?
+transformer_block_2/dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2-
+transformer_block_2/dropout_9/dropout/Const?
)transformer_block_2/dropout_9/dropout/MulMul9transformer_block_2/sequential_2/dense_9/BiasAdd:output:04transformer_block_2/dropout_9/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2+
)transformer_block_2/dropout_9/dropout/Mul?
+transformer_block_2/dropout_9/dropout/ShapeShape9transformer_block_2/sequential_2/dense_9/BiasAdd:output:0*
T0*
_output_shapes
:2-
+transformer_block_2/dropout_9/dropout/Shape?
Btransformer_block_2/dropout_9/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_2/dropout_9/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype02D
Btransformer_block_2/dropout_9/dropout/random_uniform/RandomUniform?
4transformer_block_2/dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=26
4transformer_block_2/dropout_9/dropout/GreaterEqual/y?
2transformer_block_2/dropout_9/dropout/GreaterEqualGreaterEqualKtransformer_block_2/dropout_9/dropout/random_uniform/RandomUniform:output:0=transformer_block_2/dropout_9/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 24
2transformer_block_2/dropout_9/dropout/GreaterEqual?
*transformer_block_2/dropout_9/dropout/CastCast6transformer_block_2/dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2,
*transformer_block_2/dropout_9/dropout/Cast?
+transformer_block_2/dropout_9/dropout/Mul_1Mul-transformer_block_2/dropout_9/dropout/Mul:z:0.transformer_block_2/dropout_9/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2-
+transformer_block_2/dropout_9/dropout/Mul_1?
transformer_block_2/add_1AddV2=transformer_block_2/layer_normalization_4/batchnorm/add_1:z:0/transformer_block_2/dropout_9/dropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2
transformer_block_2/add_1?
Htransformer_block_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_2/layer_normalization_5/moments/mean/reduction_indices?
6transformer_block_2/layer_normalization_5/moments/meanMeantransformer_block_2/add_1:z:0Qtransformer_block_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(28
6transformer_block_2/layer_normalization_5/moments/mean?
>transformer_block_2/layer_normalization_5/moments/StopGradientStopGradient?transformer_block_2/layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:??????????2@
>transformer_block_2/layer_normalization_5/moments/StopGradient?
Ctransformer_block_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifferencetransformer_block_2/add_1:z:0Gtransformer_block_2/layer_normalization_5/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 2E
Ctransformer_block_2/layer_normalization_5/moments/SquaredDifference?
Ltransformer_block_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_2/layer_normalization_5/moments/variance/reduction_indices?
:transformer_block_2/layer_normalization_5/moments/varianceMeanGtransformer_block_2/layer_normalization_5/moments/SquaredDifference:z:0Utransformer_block_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2<
:transformer_block_2/layer_normalization_5/moments/variance?
9transformer_block_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52;
9transformer_block_2/layer_normalization_5/batchnorm/add/y?
7transformer_block_2/layer_normalization_5/batchnorm/addAddV2Ctransformer_block_2/layer_normalization_5/moments/variance:output:0Btransformer_block_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????29
7transformer_block_2/layer_normalization_5/batchnorm/add?
9transformer_block_2/layer_normalization_5/batchnorm/RsqrtRsqrt;transformer_block_2/layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2;
9transformer_block_2/layer_normalization_5/batchnorm/Rsqrt?
Ftransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp?
7transformer_block_2/layer_normalization_5/batchnorm/mulMul=transformer_block_2/layer_normalization_5/batchnorm/Rsqrt:y:0Ntransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 29
7transformer_block_2/layer_normalization_5/batchnorm/mul?
9transformer_block_2/layer_normalization_5/batchnorm/mul_1Multransformer_block_2/add_1:z:0;transformer_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_5/batchnorm/mul_1?
9transformer_block_2/layer_normalization_5/batchnorm/mul_2Mul?transformer_block_2/layer_normalization_5/moments/mean:output:0;transformer_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_5/batchnorm/mul_2?
Btransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp?
7transformer_block_2/layer_normalization_5/batchnorm/subSubJtransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0=transformer_block_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 29
7transformer_block_2/layer_normalization_5/batchnorm/sub?
9transformer_block_2/layer_normalization_5/batchnorm/add_1AddV2=transformer_block_2/layer_normalization_5/batchnorm/mul_1:z:0;transformer_block_2/layer_normalization_5/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2;
9transformer_block_2/layer_normalization_5/batchnorm/add_1?
1global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_2/Mean/reduction_indices?
global_average_pooling1d_2/MeanMean=transformer_block_2/layer_normalization_5/batchnorm/add_1:z:0:global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2!
global_average_pooling1d_2/Meany
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout_10/dropout/Const?
dropout_10/dropout/MulMul(global_average_pooling1d_2/Mean:output:0!dropout_10/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_10/dropout/Mul?
dropout_10/dropout/ShapeShape(global_average_pooling1d_2/Mean:output:0*
T0*
_output_shapes
:2
dropout_10/dropout/Shape?
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype021
/dropout_10/dropout/random_uniform/RandomUniform?
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2#
!dropout_10/dropout/GreaterEqual/y?
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2!
dropout_10/dropout/GreaterEqual?
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_10/dropout/Cast?
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_10/dropout/Mul_1?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMuldropout_10/dropout/Mul_1:z:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/BiasAdds
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_10/Reluy
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout_11/dropout/Const?
dropout_11/dropout/MulMuldense_10/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_11/dropout/Mul
dropout_11/dropout/ShapeShapedense_10/Relu:activations:0*
T0*
_output_shapes
:2
dropout_11/dropout/Shape?
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype021
/dropout_11/dropout/random_uniform/RandomUniform?
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2#
!dropout_11/dropout/GreaterEqual/y?
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2!
dropout_11/dropout/GreaterEqual?
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_11/dropout/Cast?
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_11/dropout/Mul_1?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMuldropout_11/dropout/Mul_1:z:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAdd|
dense_11/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_11/Sigmoid?
IdentityIdentitydense_11/Sigmoid:y:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp<^token_and_position_embedding_2/embedding_4/embedding_lookup<^token_and_position_embedding_2/embedding_5/embedding_lookupC^transformer_block_2/layer_normalization_4/batchnorm/ReadVariableOpG^transformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpC^transformer_block_2/layer_normalization_5/batchnorm/ReadVariableOpG^transformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpO^transformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpY^transformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_2/multi_head_attention_2/key/add/ReadVariableOpL^transformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpD^transformer_block_2/multi_head_attention_2/query/add/ReadVariableOpN^transformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpD^transformer_block_2/multi_head_attention_2/value/add/ReadVariableOpN^transformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp@^transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOpB^transformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp@^transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOpB^transformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2z
;token_and_position_embedding_2/embedding_4/embedding_lookup;token_and_position_embedding_2/embedding_4/embedding_lookup2z
;token_and_position_embedding_2/embedding_5/embedding_lookup;token_and_position_embedding_2/embedding_5/embedding_lookup2?
Btransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOpBtransformer_block_2/layer_normalization_4/batchnorm/ReadVariableOp2?
Ftransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpFtransformer_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2?
Btransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOpBtransformer_block_2/layer_normalization_5/batchnorm/ReadVariableOp2?
Ftransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpFtransformer_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2?
Ntransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpNtransformer_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp2?
Xtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2?
Atransformer_block_2/multi_head_attention_2/key/add/ReadVariableOpAtransformer_block_2/multi_head_attention_2/key/add/ReadVariableOp2?
Ktransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpKtransformer_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_2/multi_head_attention_2/query/add/ReadVariableOpCtransformer_block_2/multi_head_attention_2/query/add/ReadVariableOp2?
Mtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpMtransformer_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_2/multi_head_attention_2/value/add/ReadVariableOpCtransformer_block_2/multi_head_attention_2/value/add/ReadVariableOp2?
Mtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpMtransformer_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2?
?transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp?transformer_block_2/sequential_2/dense_8/BiasAdd/ReadVariableOp2?
Atransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOpAtransformer_block_2/sequential_2/dense_8/Tensordot/ReadVariableOp2?
?transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp?transformer_block_2/sequential_2/dense_9/BiasAdd/ReadVariableOp2?
Atransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOpAtransformer_block_2/sequential_2/dense_9/Tensordot/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
3__inference_transformer_block_2_layer_call_fn_66144

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
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
 *,
_output_shapes
:?????????? *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_647402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:?????????? ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_64418

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
|
'__inference_dense_8_layer_call_fn_66440

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_642702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?+
__inference__traced_save_66727
file_prefix.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopT
Psavev2_token_and_position_embedding_2_embedding_4_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_2_embedding_5_embeddings_read_readvariableopV
Rsavev2_transformer_block_2_multi_head_attention_2_query_kernel_read_readvariableopT
Psavev2_transformer_block_2_multi_head_attention_2_query_bias_read_readvariableopT
Psavev2_transformer_block_2_multi_head_attention_2_key_kernel_read_readvariableopR
Nsavev2_transformer_block_2_multi_head_attention_2_key_bias_read_readvariableopV
Rsavev2_transformer_block_2_multi_head_attention_2_value_kernel_read_readvariableopT
Psavev2_transformer_block_2_multi_head_attention_2_value_bias_read_readvariableopa
]savev2_transformer_block_2_multi_head_attention_2_attention_output_kernel_read_readvariableop_
[savev2_transformer_block_2_multi_head_attention_2_attention_output_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableopN
Jsavev2_transformer_block_2_layer_normalization_4_gamma_read_readvariableopM
Isavev2_transformer_block_2_layer_normalization_4_beta_read_readvariableopN
Jsavev2_transformer_block_2_layer_normalization_5_gamma_read_readvariableopM
Isavev2_transformer_block_2_layer_normalization_5_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_m_read_readvariableop]
Ysavev2_adam_transformer_block_2_multi_head_attention_2_query_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_2_multi_head_attention_2_query_bias_m_read_readvariableop[
Wsavev2_adam_transformer_block_2_multi_head_attention_2_key_kernel_m_read_readvariableopY
Usavev2_adam_transformer_block_2_multi_head_attention_2_key_bias_m_read_readvariableop]
Ysavev2_adam_transformer_block_2_multi_head_attention_2_value_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_2_multi_head_attention_2_value_bias_m_read_readvariableoph
dsavev2_adam_transformer_block_2_multi_head_attention_2_attention_output_kernel_m_read_readvariableopf
bsavev2_adam_transformer_block_2_multi_head_attention_2_attention_output_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableopU
Qsavev2_adam_transformer_block_2_layer_normalization_4_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_2_layer_normalization_4_beta_m_read_readvariableopU
Qsavev2_adam_transformer_block_2_layer_normalization_5_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_2_layer_normalization_5_beta_m_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_v_read_readvariableop]
Ysavev2_adam_transformer_block_2_multi_head_attention_2_query_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_2_multi_head_attention_2_query_bias_v_read_readvariableop[
Wsavev2_adam_transformer_block_2_multi_head_attention_2_key_kernel_v_read_readvariableopY
Usavev2_adam_transformer_block_2_multi_head_attention_2_key_bias_v_read_readvariableop]
Ysavev2_adam_transformer_block_2_multi_head_attention_2_value_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_2_multi_head_attention_2_value_bias_v_read_readvariableoph
dsavev2_adam_transformer_block_2_multi_head_attention_2_attention_output_kernel_v_read_readvariableopf
bsavev2_adam_transformer_block_2_multi_head_attention_2_attention_output_bias_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableopU
Qsavev2_adam_transformer_block_2_layer_normalization_4_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_2_layer_normalization_4_beta_v_read_readvariableopU
Qsavev2_adam_transformer_block_2_layer_normalization_5_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_2_layer_normalization_5_beta_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?#
value?#B?#LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?*
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopPsavev2_token_and_position_embedding_2_embedding_4_embeddings_read_readvariableopPsavev2_token_and_position_embedding_2_embedding_5_embeddings_read_readvariableopRsavev2_transformer_block_2_multi_head_attention_2_query_kernel_read_readvariableopPsavev2_transformer_block_2_multi_head_attention_2_query_bias_read_readvariableopPsavev2_transformer_block_2_multi_head_attention_2_key_kernel_read_readvariableopNsavev2_transformer_block_2_multi_head_attention_2_key_bias_read_readvariableopRsavev2_transformer_block_2_multi_head_attention_2_value_kernel_read_readvariableopPsavev2_transformer_block_2_multi_head_attention_2_value_bias_read_readvariableop]savev2_transformer_block_2_multi_head_attention_2_attention_output_kernel_read_readvariableop[savev2_transformer_block_2_multi_head_attention_2_attention_output_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableopJsavev2_transformer_block_2_layer_normalization_4_gamma_read_readvariableopIsavev2_transformer_block_2_layer_normalization_4_beta_read_readvariableopJsavev2_transformer_block_2_layer_normalization_5_gamma_read_readvariableopIsavev2_transformer_block_2_layer_normalization_5_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_m_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_m_read_readvariableopYsavev2_adam_transformer_block_2_multi_head_attention_2_query_kernel_m_read_readvariableopWsavev2_adam_transformer_block_2_multi_head_attention_2_query_bias_m_read_readvariableopWsavev2_adam_transformer_block_2_multi_head_attention_2_key_kernel_m_read_readvariableopUsavev2_adam_transformer_block_2_multi_head_attention_2_key_bias_m_read_readvariableopYsavev2_adam_transformer_block_2_multi_head_attention_2_value_kernel_m_read_readvariableopWsavev2_adam_transformer_block_2_multi_head_attention_2_value_bias_m_read_readvariableopdsavev2_adam_transformer_block_2_multi_head_attention_2_attention_output_kernel_m_read_readvariableopbsavev2_adam_transformer_block_2_multi_head_attention_2_attention_output_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableopQsavev2_adam_transformer_block_2_layer_normalization_4_gamma_m_read_readvariableopPsavev2_adam_transformer_block_2_layer_normalization_4_beta_m_read_readvariableopQsavev2_adam_transformer_block_2_layer_normalization_5_gamma_m_read_readvariableopPsavev2_adam_transformer_block_2_layer_normalization_5_beta_m_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_v_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_v_read_readvariableopYsavev2_adam_transformer_block_2_multi_head_attention_2_query_kernel_v_read_readvariableopWsavev2_adam_transformer_block_2_multi_head_attention_2_query_bias_v_read_readvariableopWsavev2_adam_transformer_block_2_multi_head_attention_2_key_kernel_v_read_readvariableopUsavev2_adam_transformer_block_2_multi_head_attention_2_key_bias_v_read_readvariableopYsavev2_adam_transformer_block_2_multi_head_attention_2_value_kernel_v_read_readvariableopWsavev2_adam_transformer_block_2_multi_head_attention_2_value_bias_v_read_readvariableopdsavev2_adam_transformer_block_2_multi_head_attention_2_attention_output_kernel_v_read_readvariableopbsavev2_adam_transformer_block_2_multi_head_attention_2_attention_output_bias_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableopQsavev2_adam_transformer_block_2_layer_normalization_4_gamma_v_read_readvariableopPsavev2_adam_transformer_block_2_layer_normalization_4_beta_v_read_readvariableopQsavev2_adam_transformer_block_2_layer_normalization_5_gamma_v_read_readvariableopPsavev2_adam_transformer_block_2_layer_normalization_5_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : :::: : : : : :	?e :	? :  : :  : :  : :  : :  : :  : : : : : : : : : : ::::	?e :	? :  : :  : :  : :  : :  : :  : : : : : : ::::	?e :	? :  : :  : :  : :  : :  : :  : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	?e :%!

_output_shapes
:	? :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::%$!

_output_shapes
:	?e :%%!

_output_shapes
:	? :(&$
"
_output_shapes
:  :$' 

_output_shapes

: :(($
"
_output_shapes
:  :$) 

_output_shapes

: :(*$
"
_output_shapes
:  :$+ 

_output_shapes

: :(,$
"
_output_shapes
:  : -

_output_shapes
: :$. 

_output_shapes

:  : /

_output_shapes
: :$0 

_output_shapes

:  : 1

_output_shapes
: : 2

_output_shapes
: : 3

_output_shapes
: : 4

_output_shapes
: : 5

_output_shapes
: :$6 

_output_shapes

: : 7

_output_shapes
::$8 

_output_shapes

:: 9

_output_shapes
::%:!

_output_shapes
:	?e :%;!

_output_shapes
:	? :(<$
"
_output_shapes
:  :$= 

_output_shapes

: :(>$
"
_output_shapes
:  :$? 

_output_shapes

: :(@$
"
_output_shapes
:  :$A 

_output_shapes

: :(B$
"
_output_shapes
:  : C

_output_shapes
: :$D 

_output_shapes

:  : E

_output_shapes
: :$F 

_output_shapes

:  : G

_output_shapes
: : H

_output_shapes
: : I

_output_shapes
: : J

_output_shapes
: : K

_output_shapes
: :L

_output_shapes
: 
?	
?
C__inference_dense_11_layer_call_and_return_conditional_losses_64959

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_2_layer_call_and_return_conditional_losses_64333
dense_8_input
dense_8_64281
dense_8_64283
dense_9_64327
dense_9_64329
identity??dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8_inputdense_8_64281dense_8_64283*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_642702!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_64327dense_9_64329*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_643162!
dense_9/StatefulPartitionedCall?
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:[ W
,
_output_shapes
:?????????? 
'
_user_specified_namedense_8_input
?
?
B__inference_dense_9_layer_call_and_return_conditional_losses_66470

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?

?
3__inference_transformer_block_2_layer_call_fn_66107

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
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
 *,
_output_shapes
:?????????? *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_646132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:?????????? ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
d
E__inference_dropout_11_layer_call_and_return_conditional_losses_64930

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
V
:__inference_global_average_pooling1d_2_layer_call_fn_66166

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_648542
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
Y__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_64449
x&
"embedding_5_embedding_lookup_64436&
"embedding_4_embedding_lookup_64442
identity??embedding_4/embedding_lookup?embedding_5/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:?????????2
range?
embedding_5/embedding_lookupResourceGather"embedding_5_embedding_lookup_64436range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_5/embedding_lookup/64436*'
_output_shapes
:????????? *
dtype02
embedding_5/embedding_lookup?
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_5/embedding_lookup/64436*'
_output_shapes
:????????? 2'
%embedding_5/embedding_lookup/Identity?
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2)
'embedding_5/embedding_lookup/Identity_1q
embedding_4/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_4/Cast?
embedding_4/embedding_lookupResourceGather"embedding_4_embedding_lookup_64442embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_4/embedding_lookup/64442*,
_output_shapes
:?????????? *
dtype02
embedding_4/embedding_lookup?
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_4/embedding_lookup/64442*,
_output_shapes
:?????????? 2'
%embedding_4/embedding_lookup/Identity?
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2)
'embedding_4/embedding_lookup/Identity_1?
addAddV20embedding_4/embedding_lookup/Identity_1:output:00embedding_5/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2
add?
IdentityIdentityadd:z:0^embedding_4/embedding_lookup^embedding_5/embedding_lookup*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2<
embedding_5/embedding_lookupembedding_5/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex
??
?
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_66070

inputsF
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_2_query_add_readvariableop_resourceD
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_2_key_add_readvariableop_resourceF
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_2_value_add_readvariableop_resourceQ
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_2_attention_output_add_readvariableop_resource?
;layer_normalization_4_batchnorm_mul_readvariableop_resource;
7layer_normalization_4_batchnorm_readvariableop_resource:
6sequential_2_dense_8_tensordot_readvariableop_resource8
4sequential_2_dense_8_biasadd_readvariableop_resource:
6sequential_2_dense_9_tensordot_readvariableop_resource8
4sequential_2_dense_9_biasadd_readvariableop_resource?
;layer_normalization_5_batchnorm_mul_readvariableop_resource;
7layer_normalization_5_batchnorm_readvariableop_resource
identity??.layer_normalization_4/batchnorm/ReadVariableOp?2layer_normalization_4/batchnorm/mul/ReadVariableOp?.layer_normalization_5/batchnorm/ReadVariableOp?2layer_normalization_5/batchnorm/mul/ReadVariableOp?:multi_head_attention_2/attention_output/add/ReadVariableOp?Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_2/key/add/ReadVariableOp?7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_2/query/add/ReadVariableOp?9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_2/value/add/ReadVariableOp?9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?+sequential_2/dense_8/BiasAdd/ReadVariableOp?-sequential_2/dense_8/Tensordot/ReadVariableOp?+sequential_2/dense_9/BiasAdd/ReadVariableOp?-sequential_2/dense_9/Tensordot/ReadVariableOp?
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2,
*multi_head_attention_2/query/einsum/Einsum?
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_2/query/add/ReadVariableOp?
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2"
 multi_head_attention_2/query/add?
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2*
(multi_head_attention_2/key/einsum/Einsum?
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_2/key/add/ReadVariableOp?
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2 
multi_head_attention_2/key/add?
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:?????????? *
equationabc,cde->abde2,
*multi_head_attention_2/value/einsum/Einsum?
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_2/value/add/ReadVariableOp?
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2"
 multi_head_attention_2/value/add?
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *?5>2
multi_head_attention_2/Mul/y?
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*0
_output_shapes
:?????????? 2
multi_head_attention_2/Mul?
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe2&
$multi_head_attention_2/einsum/Einsum?
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:???????????2(
&multi_head_attention_2/softmax/Softmax?
'multi_head_attention_2/dropout/IdentityIdentity0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:???????????2)
'multi_head_attention_2/dropout/Identity?
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/Identity:output:0$multi_head_attention_2/value/add:z:0*
N*
T0*0
_output_shapes
:?????????? *
equationacbe,aecd->abcd2(
&multi_head_attention_2/einsum_1/Einsum?
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:?????????? *
equationabcd,cde->abe27
5multi_head_attention_2/attention_output/einsum/Einsum?
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_2/attention_output/add/ReadVariableOp?
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2-
+multi_head_attention_2/attention_output/add?
dropout_8/IdentityIdentity/multi_head_attention_2/attention_output/add:z:0*
T0*,
_output_shapes
:?????????? 2
dropout_8/Identityo
addAddV2inputsdropout_8/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
add?
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_4/moments/mean/reduction_indices?
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2$
"layer_normalization_4/moments/mean?
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:??????????2,
*layer_normalization_4/moments/StopGradient?
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 21
/layer_normalization_4/moments/SquaredDifference?
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_4/moments/variance/reduction_indices?
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2(
&layer_normalization_4/moments/variance?
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_4/batchnorm/add/y?
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2%
#layer_normalization_4/batchnorm/add?
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2'
%layer_normalization_4/batchnorm/Rsqrt?
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_4/batchnorm/mul/ReadVariableOp?
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_4/batchnorm/mul?
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/mul_1?
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/mul_2?
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_4/batchnorm/ReadVariableOp?
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_4/batchnorm/sub?
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_4/batchnorm/add_1?
-sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_2/dense_8/Tensordot/ReadVariableOp?
#sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_2/dense_8/Tensordot/axes?
#sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_2/dense_8/Tensordot/free?
$sequential_2/dense_8/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_2/dense_8/Tensordot/Shape?
,sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_8/Tensordot/GatherV2/axis?
'sequential_2/dense_8/Tensordot/GatherV2GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/free:output:05sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_2/dense_8/Tensordot/GatherV2?
.sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/dense_8/Tensordot/GatherV2_1/axis?
)sequential_2/dense_8/Tensordot/GatherV2_1GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/axes:output:07sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_2/dense_8/Tensordot/GatherV2_1?
$sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_2/dense_8/Tensordot/Const?
#sequential_2/dense_8/Tensordot/ProdProd0sequential_2/dense_8/Tensordot/GatherV2:output:0-sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_2/dense_8/Tensordot/Prod?
&sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_8/Tensordot/Const_1?
%sequential_2/dense_8/Tensordot/Prod_1Prod2sequential_2/dense_8/Tensordot/GatherV2_1:output:0/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_2/dense_8/Tensordot/Prod_1?
*sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_2/dense_8/Tensordot/concat/axis?
%sequential_2/dense_8/Tensordot/concatConcatV2,sequential_2/dense_8/Tensordot/free:output:0,sequential_2/dense_8/Tensordot/axes:output:03sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_2/dense_8/Tensordot/concat?
$sequential_2/dense_8/Tensordot/stackPack,sequential_2/dense_8/Tensordot/Prod:output:0.sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_2/dense_8/Tensordot/stack?
(sequential_2/dense_8/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0.sequential_2/dense_8/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2*
(sequential_2/dense_8/Tensordot/transpose?
&sequential_2/dense_8/Tensordot/ReshapeReshape,sequential_2/dense_8/Tensordot/transpose:y:0-sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2(
&sequential_2/dense_8/Tensordot/Reshape?
%sequential_2/dense_8/Tensordot/MatMulMatMul/sequential_2/dense_8/Tensordot/Reshape:output:05sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/dense_8/Tensordot/MatMul?
&sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_8/Tensordot/Const_2?
,sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_8/Tensordot/concat_1/axis?
'sequential_2/dense_8/Tensordot/concat_1ConcatV20sequential_2/dense_8/Tensordot/GatherV2:output:0/sequential_2/dense_8/Tensordot/Const_2:output:05sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_2/dense_8/Tensordot/concat_1?
sequential_2/dense_8/TensordotReshape/sequential_2/dense_8/Tensordot/MatMul:product:00sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2 
sequential_2/dense_8/Tensordot?
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_2/dense_8/BiasAdd/ReadVariableOp?
sequential_2/dense_8/BiasAddBiasAdd'sequential_2/dense_8/Tensordot:output:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_8/BiasAdd?
sequential_2/dense_8/ReluRelu%sequential_2/dense_8/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_8/Relu?
-sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_2/dense_9/Tensordot/ReadVariableOp?
#sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_2/dense_9/Tensordot/axes?
#sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_2/dense_9/Tensordot/free?
$sequential_2/dense_9/Tensordot/ShapeShape'sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_2/dense_9/Tensordot/Shape?
,sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_9/Tensordot/GatherV2/axis?
'sequential_2/dense_9/Tensordot/GatherV2GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/free:output:05sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_2/dense_9/Tensordot/GatherV2?
.sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/dense_9/Tensordot/GatherV2_1/axis?
)sequential_2/dense_9/Tensordot/GatherV2_1GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/axes:output:07sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_2/dense_9/Tensordot/GatherV2_1?
$sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_2/dense_9/Tensordot/Const?
#sequential_2/dense_9/Tensordot/ProdProd0sequential_2/dense_9/Tensordot/GatherV2:output:0-sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_2/dense_9/Tensordot/Prod?
&sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_9/Tensordot/Const_1?
%sequential_2/dense_9/Tensordot/Prod_1Prod2sequential_2/dense_9/Tensordot/GatherV2_1:output:0/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_2/dense_9/Tensordot/Prod_1?
*sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_2/dense_9/Tensordot/concat/axis?
%sequential_2/dense_9/Tensordot/concatConcatV2,sequential_2/dense_9/Tensordot/free:output:0,sequential_2/dense_9/Tensordot/axes:output:03sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_2/dense_9/Tensordot/concat?
$sequential_2/dense_9/Tensordot/stackPack,sequential_2/dense_9/Tensordot/Prod:output:0.sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_2/dense_9/Tensordot/stack?
(sequential_2/dense_9/Tensordot/transpose	Transpose'sequential_2/dense_8/Relu:activations:0.sequential_2/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????? 2*
(sequential_2/dense_9/Tensordot/transpose?
&sequential_2/dense_9/Tensordot/ReshapeReshape,sequential_2/dense_9/Tensordot/transpose:y:0-sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2(
&sequential_2/dense_9/Tensordot/Reshape?
%sequential_2/dense_9/Tensordot/MatMulMatMul/sequential_2/dense_9/Tensordot/Reshape:output:05sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/dense_9/Tensordot/MatMul?
&sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/dense_9/Tensordot/Const_2?
,sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/dense_9/Tensordot/concat_1/axis?
'sequential_2/dense_9/Tensordot/concat_1ConcatV20sequential_2/dense_9/Tensordot/GatherV2:output:0/sequential_2/dense_9/Tensordot/Const_2:output:05sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_2/dense_9/Tensordot/concat_1?
sequential_2/dense_9/TensordotReshape/sequential_2/dense_9/Tensordot/MatMul:product:00sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:?????????? 2 
sequential_2/dense_9/Tensordot?
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_2/dense_9/BiasAdd/ReadVariableOp?
sequential_2/dense_9/BiasAddBiasAdd'sequential_2/dense_9/Tensordot:output:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2
sequential_2/dense_9/BiasAdd?
dropout_9/IdentityIdentity%sequential_2/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? 2
dropout_9/Identity?
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_9/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
add_1?
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_5/moments/mean/reduction_indices?
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2$
"layer_normalization_5/moments/mean?
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:??????????2,
*layer_normalization_5/moments/StopGradient?
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*,
_output_shapes
:?????????? 21
/layer_normalization_5/moments/SquaredDifference?
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_5/moments/variance/reduction_indices?
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2(
&layer_normalization_5/moments/variance?
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_5/batchnorm/add/y?
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????2%
#layer_normalization_5/batchnorm/add?
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:??????????2'
%layer_normalization_5/batchnorm/Rsqrt?
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_5/batchnorm/mul/ReadVariableOp?
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_5/batchnorm/mul?
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/mul_1?
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/mul_2?
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_5/batchnorm/ReadVariableOp?
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:?????????? 2%
#layer_normalization_5/batchnorm/sub?
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*,
_output_shapes
:?????????? 2'
%layer_normalization_5/batchnorm/add_1?
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp.^sequential_2/dense_8/Tensordot/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp.^sequential_2/dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:?????????? ::::::::::::::::2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2^
-sequential_2/dense_8/Tensordot/ReadVariableOp-sequential_2/dense_8/Tensordot/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2^
-sequential_2/dense_9/Tensordot/ReadVariableOp-sequential_2/dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
d
E__inference_dropout_11_layer_call_and_return_conditional_losses_66225

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_2_layer_call_fn_64402
dense_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_8_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_643912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:?????????? 
'
_user_specified_namedense_8_input
?
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_66230

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_41
serving_default_input_4:0??????????<
dense_110
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_network?{"class_name": "Functional", "name": "model_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 310]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "TokenAndPositionEmbedding", "config": {"layer was saved without config": true}, "name": "token_and_position_embedding_2", "inbound_nodes": [[["input_4", 0, 0, {}]]]}, {"class_name": "TransformerBlock", "config": {"layer was saved without config": true}, "name": "transformer_block_2", "inbound_nodes": [[["token_and_position_embedding_2", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling1d_2", "inbound_nodes": [[["transformer_block_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "name": "dropout_10", "inbound_nodes": [[["global_average_pooling1d_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_10", "inbound_nodes": [[["dropout_10", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "name": "dropout_11", "inbound_nodes": [[["dense_10", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_11", "inbound_nodes": [[["dropout_11", 0, 0, {}]]]}], "input_layers": [["input_4", 0, 0]], "output_layers": [["dense_11", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 310]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 310]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 310]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 310]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}
?
	token_emb
pos_emb
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "TokenAndPositionEmbedding", "name": "token_and_position_embedding_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
att
ffn

layernorm1

layernorm2
dropout1
dropout2
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "TransformerBlock", "name": "transformer_block_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling1D", "name": "global_average_pooling1d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling1d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
?

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
?
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm?(m?1m?2m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?'v?(v?1v?2v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?"
	optimizer
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221"
trackable_list_wrapper
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nlayer_regularization_losses
Onon_trainable_variables

	variables

Players
Qmetrics
trainable_variables
Rlayer_metrics
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
<
embeddings
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 13000, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310]}}
?
=
embeddings
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 310, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
[layer_regularization_losses
\non_trainable_variables
	variables

]layers
^metrics
trainable_variables
_layer_metrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
`_query_dense
a
_key_dense
b_value_dense
c_softmax
d_dropout_layer
e_output_dense
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MultiHeadAttention", "name": "multi_head_attention_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "multi_head_attention_2", "trainable": true, "dtype": "float32", "num_heads": 8, "key_dim": 32, "value_dim": 32, "dropout": 0.0, "use_bias": true, "output_shape": null, "attention_axes": {"class_name": "__tuple__", "items": [1]}, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}
?
jlayer_with_weights-0
jlayer-0
klayer_with_weights-1
klayer-1
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 310, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_8_input"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310, 32]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 310, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_8_input"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
?
paxis
	Jgamma
Kbeta
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LayerNormalization", "name": "layer_normalization_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_4", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310, 32]}}
?
uaxis
	Lgamma
Mbeta
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LayerNormalization", "name": "layer_normalization_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_5", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310, 32]}}
?
z	variables
{trainable_variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
	variables
?layers
?metrics
trainable_variables
?layer_metrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
	variables
?layers
?metrics
 trainable_variables
?layer_metrics
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
#	variables
?layers
?metrics
$trainable_variables
?layer_metrics
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_10/kernel
:2dense_10/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
)	variables
?layers
?metrics
*trainable_variables
?layer_metrics
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
-	variables
?layers
?metrics
.trainable_variables
?layer_metrics
/regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2dense_11/kernel
:2dense_11/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
3	variables
?layers
?metrics
4trainable_variables
?layer_metrics
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
H:F	?e 25token_and_position_embedding_2/embedding_4/embeddings
H:F	? 25token_and_position_embedding_2/embedding_5/embeddings
M:K  27transformer_block_2/multi_head_attention_2/query/kernel
G:E 25transformer_block_2/multi_head_attention_2/query/bias
K:I  25transformer_block_2/multi_head_attention_2/key/kernel
E:C 23transformer_block_2/multi_head_attention_2/key/bias
M:K  27transformer_block_2/multi_head_attention_2/value/kernel
G:E 25transformer_block_2/multi_head_attention_2/value/bias
X:V  2Btransformer_block_2/multi_head_attention_2/attention_output/kernel
N:L 2@transformer_block_2/multi_head_attention_2/attention_output/bias
 :  2dense_8/kernel
: 2dense_8/bias
 :  2dense_9/kernel
: 2dense_9/bias
=:; 2/transformer_block_2/layer_normalization_4/gamma
<:: 2.transformer_block_2/layer_normalization_4/beta
=:; 2/transformer_block_2/layer_normalization_5/gamma
<:: 2.transformer_block_2/layer_normalization_5/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
<0"
trackable_list_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
S	variables
?layers
?metrics
Ttrainable_variables
?layer_metrics
Uregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
=0"
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
W	variables
?layers
?metrics
Xtrainable_variables
?layer_metrics
Yregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "query", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "query", "trainable": true, "dtype": "float32", "output_shape": [null, 8, 32], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310, 32]}}
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "key", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "key", "trainable": true, "dtype": "float32", "output_shape": [null, 8, 32], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310, 32]}}
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "value", "trainable": true, "dtype": "float32", "output_shape": [null, 8, 32], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310, 32]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Softmax", "name": "softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [3]}}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.0, "noise_shape": null, "seed": null}}
?
?partial_output_shape
?full_output_shape

Dkernel
Ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "attention_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "attention_output", "trainable": true, "dtype": "float32", "output_shape": [null, 32], "equation": "abcd,cde->abe", "activation": "linear", "bias_axes": "e", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310, 8, 32]}}
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
f	variables
?layers
?metrics
gtrainable_variables
?layer_metrics
hregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Fkernel
Gbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310, 32]}}
?

Hkernel
Ibias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 310, 32]}}
<
F0
G1
H2
I3"
trackable_list_wrapper
<
F0
G1
H2
I3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
l	variables
?layers
?metrics
mtrainable_variables
?layer_metrics
nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
q	variables
?layers
?metrics
rtrainable_variables
?layer_metrics
sregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
v	variables
?layers
?metrics
wtrainable_variables
?layer_metrics
xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
z	variables
?layers
?metrics
{trainable_variables
?layer_metrics
|regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
~	variables
?layers
?metrics
trainable_variables
?layer_metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
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
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
`0
a1
b2
c3
d4
e5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layers
?metrics
?trainable_variables
?layer_metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
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
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
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
&:$ 2Adam/dense_10/kernel/m
 :2Adam/dense_10/bias/m
&:$2Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
M:K	?e 2<Adam/token_and_position_embedding_2/embedding_4/embeddings/m
M:K	? 2<Adam/token_and_position_embedding_2/embedding_5/embeddings/m
R:P  2>Adam/transformer_block_2/multi_head_attention_2/query/kernel/m
L:J 2<Adam/transformer_block_2/multi_head_attention_2/query/bias/m
P:N  2<Adam/transformer_block_2/multi_head_attention_2/key/kernel/m
J:H 2:Adam/transformer_block_2/multi_head_attention_2/key/bias/m
R:P  2>Adam/transformer_block_2/multi_head_attention_2/value/kernel/m
L:J 2<Adam/transformer_block_2/multi_head_attention_2/value/bias/m
]:[  2IAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/m
S:Q 2GAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/m
%:#  2Adam/dense_8/kernel/m
: 2Adam/dense_8/bias/m
%:#  2Adam/dense_9/kernel/m
: 2Adam/dense_9/bias/m
B:@ 26Adam/transformer_block_2/layer_normalization_4/gamma/m
A:? 25Adam/transformer_block_2/layer_normalization_4/beta/m
B:@ 26Adam/transformer_block_2/layer_normalization_5/gamma/m
A:? 25Adam/transformer_block_2/layer_normalization_5/beta/m
&:$ 2Adam/dense_10/kernel/v
 :2Adam/dense_10/bias/v
&:$2Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v
M:K	?e 2<Adam/token_and_position_embedding_2/embedding_4/embeddings/v
M:K	? 2<Adam/token_and_position_embedding_2/embedding_5/embeddings/v
R:P  2>Adam/transformer_block_2/multi_head_attention_2/query/kernel/v
L:J 2<Adam/transformer_block_2/multi_head_attention_2/query/bias/v
P:N  2<Adam/transformer_block_2/multi_head_attention_2/key/kernel/v
J:H 2:Adam/transformer_block_2/multi_head_attention_2/key/bias/v
R:P  2>Adam/transformer_block_2/multi_head_attention_2/value/kernel/v
L:J 2<Adam/transformer_block_2/multi_head_attention_2/value/bias/v
]:[  2IAdam/transformer_block_2/multi_head_attention_2/attention_output/kernel/v
S:Q 2GAdam/transformer_block_2/multi_head_attention_2/attention_output/bias/v
%:#  2Adam/dense_8/kernel/v
: 2Adam/dense_8/bias/v
%:#  2Adam/dense_9/kernel/v
: 2Adam/dense_9/bias/v
B:@ 26Adam/transformer_block_2/layer_normalization_4/gamma/v
A:? 25Adam/transformer_block_2/layer_normalization_4/beta/v
B:@ 26Adam/transformer_block_2/layer_normalization_5/gamma/v
A:? 25Adam/transformer_block_2/layer_normalization_5/beta/v
?2?
 __inference__wrapped_model_64235?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *'?$
"?
input_4??????????
?2?
'__inference_model_2_layer_call_fn_65240
'__inference_model_2_layer_call_fn_65713
'__inference_model_2_layer_call_fn_65762
'__inference_model_2_layer_call_fn_65136?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_2_layer_call_and_return_conditional_losses_65031
B__inference_model_2_layer_call_and_return_conditional_losses_65664
B__inference_model_2_layer_call_and_return_conditional_losses_64976
B__inference_model_2_layer_call_and_return_conditional_losses_65499?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
>__inference_token_and_position_embedding_2_layer_call_fn_65795?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Y__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_65786?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_transformer_block_2_layer_call_fn_66144
3__inference_transformer_block_2_layer_call_fn_66107?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_65943
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_66070?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
:__inference_global_average_pooling1d_2_layer_call_fn_66155
:__inference_global_average_pooling1d_2_layer_call_fn_66166?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_66150
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_66161?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_10_layer_call_fn_66193
*__inference_dropout_10_layer_call_fn_66188?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_10_layer_call_and_return_conditional_losses_66183
E__inference_dropout_10_layer_call_and_return_conditional_losses_66178?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_10_layer_call_fn_66213?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_10_layer_call_and_return_conditional_losses_66204?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_11_layer_call_fn_66235
*__inference_dropout_11_layer_call_fn_66240?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_11_layer_call_and_return_conditional_losses_66225
E__inference_dropout_11_layer_call_and_return_conditional_losses_66230?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_11_layer_call_fn_66260?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_11_layer_call_and_return_conditional_losses_66251?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_65299input_4"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_sequential_2_layer_call_fn_64402
,__inference_sequential_2_layer_call_fn_66400
,__inference_sequential_2_layer_call_fn_66387
,__inference_sequential_2_layer_call_fn_64375?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_sequential_2_layer_call_and_return_conditional_losses_66374
G__inference_sequential_2_layer_call_and_return_conditional_losses_64333
G__inference_sequential_2_layer_call_and_return_conditional_losses_66317
G__inference_sequential_2_layer_call_and_return_conditional_losses_64347?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_8_layer_call_fn_66440?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_8_layer_call_and_return_conditional_losses_66431?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_9_layer_call_fn_66479?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_9_layer_call_and_return_conditional_losses_66470?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_64235?=<>?@ABCDEJKFGHILM'(121?.
'?$
"?
input_4??????????
? "3?0
.
dense_11"?
dense_11??????????
C__inference_dense_10_layer_call_and_return_conditional_losses_66204\'(/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? {
(__inference_dense_10_layer_call_fn_66213O'(/?,
%?"
 ?
inputs????????? 
? "???????????
C__inference_dense_11_layer_call_and_return_conditional_losses_66251\12/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_11_layer_call_fn_66260O12/?,
%?"
 ?
inputs?????????
? "???????????
B__inference_dense_8_layer_call_and_return_conditional_losses_66431fFG4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
'__inference_dense_8_layer_call_fn_66440YFG4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
B__inference_dense_9_layer_call_and_return_conditional_losses_66470fHI4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
'__inference_dense_9_layer_call_fn_66479YHI4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
E__inference_dropout_10_layer_call_and_return_conditional_losses_66178\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
E__inference_dropout_10_layer_call_and_return_conditional_losses_66183\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? }
*__inference_dropout_10_layer_call_fn_66188O3?0
)?&
 ?
inputs????????? 
p
? "?????????? }
*__inference_dropout_10_layer_call_fn_66193O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ?
E__inference_dropout_11_layer_call_and_return_conditional_losses_66225\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
E__inference_dropout_11_layer_call_and_return_conditional_losses_66230\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? }
*__inference_dropout_11_layer_call_fn_66235O3?0
)?&
 ?
inputs?????????
p
? "??????????}
*__inference_dropout_11_layer_call_fn_66240O3?0
)?&
 ?
inputs?????????
p 
? "???????????
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_66150{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
U__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_66161a8?5
.?+
%?"
inputs?????????? 

 
? "%?"
?
0????????? 
? ?
:__inference_global_average_pooling1d_2_layer_call_fn_66155nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
:__inference_global_average_pooling1d_2_layer_call_fn_66166T8?5
.?+
%?"
inputs?????????? 

 
? "?????????? ?
B__inference_model_2_layer_call_and_return_conditional_losses_64976z=<>?@ABCDEJKFGHILM'(129?6
/?,
"?
input_4??????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_65031z=<>?@ABCDEJKFGHILM'(129?6
/?,
"?
input_4??????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_65499y=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_65664y=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
'__inference_model_2_layer_call_fn_65136m=<>?@ABCDEJKFGHILM'(129?6
/?,
"?
input_4??????????
p

 
? "???????????
'__inference_model_2_layer_call_fn_65240m=<>?@ABCDEJKFGHILM'(129?6
/?,
"?
input_4??????????
p 

 
? "???????????
'__inference_model_2_layer_call_fn_65713l=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
inputs??????????
p

 
? "???????????
'__inference_model_2_layer_call_fn_65762l=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
inputs??????????
p 

 
? "???????????
G__inference_sequential_2_layer_call_and_return_conditional_losses_64333wFGHIC?@
9?6
,?)
dense_8_input?????????? 
p

 
? "*?'
 ?
0?????????? 
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_64347wFGHIC?@
9?6
,?)
dense_8_input?????????? 
p 

 
? "*?'
 ?
0?????????? 
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_66317pFGHI<?9
2?/
%?"
inputs?????????? 
p

 
? "*?'
 ?
0?????????? 
? ?
G__inference_sequential_2_layer_call_and_return_conditional_losses_66374pFGHI<?9
2?/
%?"
inputs?????????? 
p 

 
? "*?'
 ?
0?????????? 
? ?
,__inference_sequential_2_layer_call_fn_64375jFGHIC?@
9?6
,?)
dense_8_input?????????? 
p

 
? "??????????? ?
,__inference_sequential_2_layer_call_fn_64402jFGHIC?@
9?6
,?)
dense_8_input?????????? 
p 

 
? "??????????? ?
,__inference_sequential_2_layer_call_fn_66387cFGHI<?9
2?/
%?"
inputs?????????? 
p

 
? "??????????? ?
,__inference_sequential_2_layer_call_fn_66400cFGHI<?9
2?/
%?"
inputs?????????? 
p 

 
? "??????????? ?
#__inference_signature_wrapper_65299?=<>?@ABCDEJKFGHILM'(12<?9
? 
2?/
-
input_4"?
input_4??????????"3?0
.
dense_11"?
dense_11??????????
Y__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_65786]=<+?(
!?
?
x??????????
? "*?'
 ?
0?????????? 
? ?
>__inference_token_and_position_embedding_2_layer_call_fn_65795P=<+?(
!?
?
x??????????
? "??????????? ?
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_65943x>?@ABCDEJKFGHILM8?5
.?+
%?"
inputs?????????? 
p
? "*?'
 ?
0?????????? 
? ?
N__inference_transformer_block_2_layer_call_and_return_conditional_losses_66070x>?@ABCDEJKFGHILM8?5
.?+
%?"
inputs?????????? 
p 
? "*?'
 ?
0?????????? 
? ?
3__inference_transformer_block_2_layer_call_fn_66107k>?@ABCDEJKFGHILM8?5
.?+
%?"
inputs?????????? 
p
? "??????????? ?
3__inference_transformer_block_2_layer_call_fn_66144k>?@ABCDEJKFGHILM8?5
.?+
%?"
inputs?????????? 
p 
? "??????????? 