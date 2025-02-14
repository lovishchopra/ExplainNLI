(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsCausedBy (BoundSet BoundSet) Bool)
(declare-fun IsComplex (BoundSet) Bool)
(declare-fun IsNaturalPhenomenon (BoundSet) Bool)
(declare-fun HaveNothingToDoWith (BoundSet BoundSet) Bool)
(declare-fun AreBy (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsCausedBy a b) (and (IsComplex c) (IsNaturalPhenomenon c)))))) (exists ((a BoundSet)) (exists ((e BoundSet)) (exists ((d BoundSet)) (and (HaveNothingToDoWith a d) (AreBy d e))))))))
(check-sat)
(get-model)