(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsYoung (BoundSet) Bool)
(declare-fun IsInOrangeShirt (BoundSet) Bool)
(declare-fun ManeuversSkateboard (BoundSet BoundSet) Bool)
(declare-fun IsAtTop (BoundSet BoundSet) Bool)
(declare-fun RidesSkateboard (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((e BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (and (IsYoung b) (and (IsInOrangeShirt b) (and (ManeuversSkateboard b a) (and (IsAtTop a d) (IsAtTop d e))))))))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((j BoundSet)) (=> (ManeuversSkateboard h i) (RidesSkateboard j i))))) (forall ((k BoundSet)) (forall ((m BoundSet)) (forall ((l BoundSet)) (=> (RidesSkateboard k l) (ManeuversSkateboard m l))))))) (exists ((a BoundSet)) (exists ((f BoundSet)) (RidesSkateboard f a))))))
(check-sat)
(get-model)