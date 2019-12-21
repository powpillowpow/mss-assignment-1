	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM mutual_exclusion */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Phil */
;
		;
		
	case 6: // STATE 6
		;
		now.ghostDL1 = trpt->bup.ovals[2];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.ovals[1];
		now.ghostDL1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 7: // STATE 12
		;
		now.ghostDL2 = trpt->bup.ovals[2];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.ovals[1];
		now.ghostDL2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 9: // STATE 18
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.ovals[1];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: // STATE 23
		;
		p_restor(II);
		;
		;
		goto R999;
	}

