"""
Outline of existing Dedalus representation of strong-form PDEs.
"""


abstract type Operand end

abstract type Current <: Operand end

abstract type Future <: Operand end

abstract type Field <: Current end

abstract type Operator <: Future end



abstract type Arithmetic <: Operator end

abstract type Add <: Arithmetic end

abstract type Multiply <: Arithmetic end



abstract type NonlinearOperator <: Operator end



abstract type LinearOperator <: Operator end

abstract type TimeDerivative <: LinearOperator end



abstract type PseudoDifferentialOperator <: LinearOperator end

abstract type Differentiate <: PseudoDifferentialOperator end

abstract type Convolve <: PseudoDifferentialOperator end

abstract type HilbertTransform <: PseudoDifferentialOperator end



abstract type LinearFunctional <: LinearOperator end

abstract type Interpolate <: LinearFunctional end

abstract type Integrate <: LinearFunctional end



abstract type TensorCalculus <: LinearOperator end

abstract type Gradient <: TensorCalculus end

abstract type Curl <: TensorCalculus end

abstract type Divergence <: TensorCalculus end

abstract type Laplacian <: TensorCalculus end



abstract type TensorProduct <: Multiply end

abstract type OuterProduct <: TensorProduct end

abstract type DotProduct <: TensorProduct end

abstract type CrossProduct <: TensorProduct end



abstract type TensorManipulation <: LinearOperator end

abstract type Trace <: TensorManipulation end

abstract type Transpose <: TensorManipulation end

abstract type MultiplyMetric <: TensorManipulation end

abstract type MultiplyEpsilon <: TensorManipulation end


