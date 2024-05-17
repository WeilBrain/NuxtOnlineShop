interface IValues {
    image: string,
    title: string,
    description: string
}

interface IAchievements {
    title: string,
    description: string,
    link?: string,
    btn?: boolean
}

interface IStep {
    count: string,
    title: string,
    description: string
}

interface IContact {
    img: string,
    name: string,
    worker: string,
    link: string,
}

interface ICorporation {
    type: string,
    year: string,
    nameCompany: string,
    link: string,
    domain: string,
    category: string,
    said: string
}

export const AchievementsData: IAchievements[] = [
    {
        title: '3+ Years of Excellence',
        description: 'With over 3 years in the industry, we\'ve amassed a wealth of knowledge and experience, becoming a go-to resource for all things real estate.',
        btn: false
    },
    {
        title: 'Happy Clients',
        description: 'Our greatest achievement is the satisfaction of our clients. Their success stories fuel our passion for what we do.',
        btn: false
    },
    {
        title: 'Industry Recognition',
        description: 'We\'ve earned the respect of our peers and industry leaders, with accolades and awards that reflect our commitment to excellence.',
        btn: false
    },
]

export const ValuesData: IValues[] = [
    {
        image: '/CardTrust/star.svg',
        title: 'Trust',
        description: 'Trust is the cornerstone of every successful real estate transaction.',
    },
    {
        image: '/CardTrust/head.svg',
        title: 'Excellence',
        description: 'We set the bar high for ourselves. From the properties we list to the services we provide.',
    },
    {
        image: '/CardTrust/people.svg',
        title: 'Client-Centric',
        description: 'Your dreams and needs are at the center of our universe. We listen, understand.',
    },
    {
        image: '/CardTrust/star.svg',
        title: 'Our Commitment',
        description: 'We are dedicated to providing you with the highest level of service, professionalism, and support.',
    },
]

export const StepData: IStep[] = [
    {
        count: 'Step 01',
        title: 'Discover a World of Possibilities',
        description: 'Your journey begins with exploring our carefully curated property listings. Use our intuitive search tools to filter properties based on your preferences, including location, type, size, and budget.'
    },
    {
        count: 'Step 02',
        title: 'Narrowing Down Your Choices',
        description: 'Once you\'ve found properties that catch your eye, save them to your account or make a shortlist. This allows you to compare and revisit your favorites as you make your decision.'
    },
    {
        count: 'Step 03',
        title: 'Personalized Guidance',
        description: 'Have questions about a property or need more information? Our dedicated team of real estate experts is just a call or message away'
    },
    {
        count: 'Step 04',
        title: 'See It for Yourself',
        description: 'Arrange viewings of the properties you\'re interested in. We\'ll coordinate with the property owners and accompany you to ensure you get a firsthand look at your potential new home.'
    },
    {
        count: 'Step 05',
        title: 'Making Informed Decisions',
        description: 'Before making an offer, our team will assist you with due diligence, including property inspections, legal checks, and market analysis. We want you to be fully informed and confident in your choice.'
    },
    {
        count: 'Step 06',
        title: 'Getting the Best Deal',
        description: 'We\'ll help you negotiate the best terms and prepare your offer. Our goal is to secure the property at the right price and on favorable terms'
    },
]

export const ContactData: IContact[] = [
    {
        img: '/CardContact/ava.png',
        name: 'Max Mitchell',
        worker: 'Founder',
        link: '/'
    },
    {
        img: '/CardContact/avatar2.png',
        name: 'Sarah Johnson',
        worker: 'Chief Real Estate Officer',
        link: '/'
    },
    {
        img: '/CardContact/avatar3.png',
        name: 'David Brown',
        worker: 'Head of Property Management',
        link: '/'
    },
    {
        img: '/CardContact/avatar4.png',
        name: 'Michael Turner',
        worker: 'Legal Counsel',
        link: '/'
    },
]

export const CorporationData: ICorporation[] = [
    {
        type: "cardCorporation",
        year: '2019',
        nameCompany: 'ABC Corporation',
        link: '/',
        domain: 'Commercial Real Estate',
        category: 'Luxury Home Development',
        said: 'Estatein\'s expertise in finding the perfect office space for our expanding operations was invaluable. They truly understand.'
    },
    {
        type: "cardCorporation",
        year: '2019',
        nameCompany: 'GreenTech Enterprises',
        link: '/',
        domain: 'Commercial Real Estate',
        category: 'Luxury Home Development',
        said: 'Estatein\'s expertise in finding the perfect office space for our expanding operations was invaluable. They truly understand.'
    },
    {
        type: "cardCorporation",
        year: '2019',
        nameCompany: 'ABC Corporation',
        link: '/',
        domain: 'Commercial Real Estate',
        category: 'Luxury Home Development',
        said: 'Estatein\'s expertise in finding the perfect office space for our expanding operations was invaluable. They truly understand.'
    },
    {
        type: "cardCorporation",
        year: '2019',
        nameCompany: 'GreenTech Enterprises',
        link: '/',
        domain: 'Commercial Real Estate',
        category: 'Luxury Home Development',
        said: 'Estatein\'s expertise in finding the perfect office space for our expanding operations was invaluable. They truly understand.'
    },
    {
        type: "cardCorporation",
        year: '2019',
        nameCompany: 'ABC Corporation',
        link: '/',
        domain: 'Commercial Real Estate',
        category: 'Luxury Home Development',
        said: 'Estatein\'s expertise in finding the perfect office space for our expanding operations was invaluable. They truly understand.'
    },
    {
        type: "cardCorporation",
        year: '2019',
        nameCompany: 'GreenTech Enterprises',
        link: '/',
        domain: 'Commercial Real Estate',
        category: 'Luxury Home Development',
        said: 'Estatein\'s expertise in finding the perfect office space for our expanding operations was invaluable. They truly understand.'
    },
    {
        type: "cardCorporation",
        year: '2019',
        nameCompany: 'ABC Corporation',
        link: '/',
        domain: 'Commercial Real Estate',
        category: 'Luxury Home Development',
        said: 'Estatein\'s expertise in finding the perfect office space for our expanding operations was invaluable. They truly understand.'
    },
    {
        type: "cardCorporation",
        year: '2019',
        nameCompany: 'GreenTech Enterprises',
        link: '/',
        domain: 'Commercial Real Estate',
        category: 'Luxury Home Development',
        said: 'Estatein\'s expertise in finding the perfect office space for our expanding operations was invaluable. They truly understand.'
    },
]