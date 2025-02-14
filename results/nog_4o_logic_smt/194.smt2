(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInRed (BoundSet) Bool)
(declare-fun IsChallenging (BoundSet BoundSet) Bool)
(declare-fun HasBall (BoundSet) Bool)
(declare-fun IsPlaying (BoundSet) Bool)
(declare-fun IsPlayed (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsInRed a) (and (IsChallenging a b) (HasBall c)))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (and (IsPlaying d) (IsPlayed e)))))))
(check-sat)
(get-model)