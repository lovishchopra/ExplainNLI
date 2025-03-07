(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInOrangeShirt (BoundSet) Bool)
(declare-fun ManeuversSkateboard (BoundSet) Bool)
(declare-fun IsAtTopOfRamp (BoundSet) Bool)
(declare-fun RidesSkateboard (BoundSet) Bool)
(assert (not (=> (and (exists ((d BoundSet)) (exists ((b BoundSet)) (and (IsInOrangeShirt b) (and (ManeuversSkateboard b) (IsAtTopOfRamp d))))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (ManeuversSkateboard h) (RidesSkateboard i)))) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (RidesSkateboard j) (ManeuversSkateboard k)))))) (exists ((f BoundSet)) (RidesSkateboard f)))))
(check-sat)
(get-model)