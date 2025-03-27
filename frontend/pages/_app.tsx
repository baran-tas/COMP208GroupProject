import "@/styles/globals.css";
import type { AppProps } from "next/app";
import { Provider } from 'react-redux';
import { PersistGate } from 'redux-persist/integration/react';
import { persistStore } from 'redux-persist';
import {store} from '@/redux/store';

let persistor = persistStore(store);

export default function App({ Component, pageProps }: AppProps) {
  return (
		<Provider store={store}>
			<PersistGate persistor={persistor}>
				<Component {...pageProps} />
			</PersistGate>
		</Provider>
	);
};