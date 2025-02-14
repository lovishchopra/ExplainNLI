(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun WasExtremelyThinIn2008 (BoundSet) Bool)
(declare-fun IsAtLeastTwoMetersThick (BoundSet BoundSet) Bool)
(declare-fun IsGettingThicker (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (WasExtremelyThinIn2008 a) (IsAtLeastTwoMetersThick b a)))) (exists ((a BoundSet)) (IsGettingThicker a)))))
(check-sat)
(get-model)