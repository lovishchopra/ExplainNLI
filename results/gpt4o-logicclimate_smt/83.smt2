(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Claim (BoundSet) Bool)
(declare-fun AreHarmful (BoundSet) Bool)
(declare-fun AreCausedBy (BoundSet BoundSet) Bool)
(declare-fun IsHarmful (BoundSet) Bool)
(declare-fun IsCausedBy (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (Claim a) (and (AreHarmful c) (AreCausedBy c b)))))) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (AreHarmful e) (Claim f))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (Claim a) (and (IsHarmful d) (IsCausedBy d b)))))))))
(check-sat)
(get-model)