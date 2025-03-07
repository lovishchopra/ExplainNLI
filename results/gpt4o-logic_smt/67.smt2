(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun HeardNoise (BoundSet BoundSet) Bool)
(declare-fun OccursLateAtNight (BoundSet BoundSet) Bool)
(declare-fun IsHaunted (BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (HeardNoise a b) (OccursLateAtNight b c))))) (exists ((d BoundSet)) (IsHaunted d)))))
(check-sat)
(get-model)