(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSacrificed (BoundSet) Bool)
(declare-fun CausesRain (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (IsSacrificed a) (CausesRain a))) (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsSacrificed a) (CausesRain b)))))))
(check-sat)
(get-model)