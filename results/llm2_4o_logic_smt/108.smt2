(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSnowboarding (BoundSet) Bool)
(declare-fun IsOnPileOfSnow (BoundSet BoundSet) Bool)
(declare-fun IsSunnyColdDay (BoundSet) Bool)
(declare-fun IsSizingUp (BoundSet BoundSet) Bool)
(declare-fun IsYoung (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsSnowboarding a) (and (IsOnPileOfSnow a b) (IsSunnyColdDay c)))))) (forall ((g BoundSet)) (forall ((f BoundSet)) (forall ((h BoundSet)) (=> (IsSnowboarding f) (IsSizingUp g h)))))) (exists ((e BoundSet)) (exists ((d BoundSet)) (and (IsYoung d) (IsSizingUp d e)))))))
(check-sat)
(get-model)