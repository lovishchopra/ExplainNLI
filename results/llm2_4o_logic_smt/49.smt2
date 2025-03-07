(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Spent150HoursOn (BoundSet BoundSet) Bool)
(declare-fun MissedParty (BoundSet BoundSet BoundSet) Bool)
(declare-fun Give (BoundSet BoundSet BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (exists ((b BoundSet)) (and (Spent150HoursOn b a) (MissedParty b c d)))))) (exists ((e BoundSet)) (exists ((f BoundSet)) (exists ((a BoundSet)) (Give a e f)))))))
(check-sat)
(get-model)