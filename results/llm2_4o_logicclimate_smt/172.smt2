(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWhiteGreyhound (BoundSet) Bool)
(declare-fun IsWearingMuzzle (BoundSet) Bool)
(declare-fun RunsAroundTrack (BoundSet) Bool)
(declare-fun IsRacing (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsWhiteGreyhound a) (and (IsWearingMuzzle a) (RunsAroundTrack a)))) (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsRacing f g) (IsWhiteGreyhound h)))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (and (IsWhiteGreyhound d) (IsRacing d e)))))))
(check-sat)
(get-model)