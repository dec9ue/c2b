
data CircuitEdgeItem = C String | R String | L String | VS String | CS String
		deriving Show
data CircuitNodeItem = GND
		deriving Show
data CircuitTopoItem = Edge { name :: String, source :: String, dest :: String, edge_item :: CircuitEdgeItem}
		| Node { name :: String, source:: String, node_item :: CircuitNodeItem}
		 deriving Show
type CircuitTopology = [CircuitTopoItem]

data Coeff = Var String | One | Mul Coeff Coeff | Sum Coeff Coeff | Minus Coeff | Div Coeff Coeff
		deriving Show

type Variable = String

type Equation = ([(Coeff , Variable)] , [(Coeff , Variable)])



