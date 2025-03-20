import React from 'react';
import { useRouter } from 'next/router';




function StorePage() {
	const router = useRouter();
	const { store } = router.query;
	return (
		<div>
		</div>
	);
}

export default StorePage;