(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsPlayingViolin (BoundSet) Bool)
(declare-fun IsWithGroupOfPeople (BoundSet) Bool)
(declare-fun IsPlayingInstrument (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsPlayingViolin a) (IsWithGroupOfPeople a))) (forall ((e BoundSet)) (=> (IsPlayingViolin e) (IsPlayingInstrument e)))) (exists ((a BoundSet)) (IsPlayingInstrument a)))))
(check-sat)
(get-model)