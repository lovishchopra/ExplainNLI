(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInBlueTShirt (BoundSet) Bool)
(declare-fun IsInSweatpants (BoundSet) Bool)
(declare-fun StandsOverStove (BoundSet) Bool)
(declare-fun LooksAtCamera (BoundSet) Bool)
(declare-fun StandsBehind (BoundSet BoundSet) Bool)
(declare-fun IsInFrontOfCamera (BoundSet) Bool)
(assert (not (=> (and (exists ((f BoundSet)) (exists ((b BoundSet)) (and (IsInBlueTShirt b) (and (IsInSweatpants b) (and (StandsOverStove b) (and (LooksAtCamera b) (StandsBehind f b))))))) (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (LooksAtCamera h) (IsInFrontOfCamera i))))) (exists ((g BoundSet)) (IsInFrontOfCamera g)))))
(check-sat)
(get-model)