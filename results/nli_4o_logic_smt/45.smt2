(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsOpenMinded (BoundSet) Bool)
(declare-fun HasRecordOnVotes (BoundSet) Bool)
(declare-fun ExpandsEducationalOpportunities (BoundSet BoundSet) Bool)
(declare-fun ConcernsVotesEnvironment (BoundSet BoundSet) Bool)
(declare-fun IsImportant (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (IsOpenMinded a) (and (HasRecordOnVotes a) (ExpandsEducationalOpportunities c d)))))) (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((j BoundSet)) (=> (ConcernsVotesEnvironment h i) (HasRecordOnVotes j)))))) (exists ((g BoundSet)) (exists ((f BoundSet)) (and (ConcernsVotesEnvironment f g) (not (IsImportant f))))))))
(check-sat)
(get-model)