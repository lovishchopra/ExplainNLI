(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun HasCancer (BoundSet) Bool)
(declare-fun LivedNearPowerLine (BoundSet) Bool)
(declare-fun Is20MilesFromPowerLine (BoundSet) Bool)
(declare-fun ShouldBeReplacedWith (BoundSet BoundSet) Bool)
(declare-fun AreOn (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (and (HasCancer b) (and (LivedNearPowerLine b) (Is20MilesFromPowerLine b)))) (exists ((c BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (ShouldBeReplacedWith a c) (AreOn d c))))))))
(check-sat)
(get-model)